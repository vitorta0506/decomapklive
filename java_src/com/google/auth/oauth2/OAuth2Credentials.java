package com.google.auth.oauth2;

import com.google.auth.Credentials;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.n5;
import com.google.common.util.concurrent.d0;
import com.google.common.util.concurrent.e0;
import com.google.common.util.concurrent.h0;
import com.google.common.util.concurrent.x;
import com.google.common.util.concurrent.y;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.net.URI;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.ServiceLoader;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes2.dex */
public class OAuth2Credentials extends Credentials {
    static final Duration DEFAULT_EXPIRATION_MARGIN = Duration.ofMinutes(5);
    static final Duration DEFAULT_REFRESH_MARGIN = Duration.ofMinutes(6);
    private static final ImmutableMap<String, List<String>> EMPTY_EXTRA_HEADERS = ImmutableMap.of();
    private static final long serialVersionUID = 4556936364828217687L;
    private transient List<f> changeListeners;
    transient com.google.api.client.util.i clock;
    private final Duration expirationMargin;
    final Object lock;
    private final Duration refreshMargin;
    transient e0<h> refreshTask;
    private volatile h value;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Callable<h> {
        a() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public h call() throws Exception {
            return h.c(OAuth2Credentials.this.refreshAccessToken(), OAuth2Credentials.this.getAdditionalHeaders());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e0 f11563a;

        b(e0 e0Var) {
            this.f11563a = e0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            OAuth2Credentials.this.finishRefreshAsync(this.f11563a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final e0<h> f11565a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f11566b;

        c(e0<h> e0Var, boolean z10) {
            this.f11565a = e0Var;
            this.f11566b = z10;
        }

        void b(Executor executor) {
            if (this.f11566b) {
                executor.execute(this.f11565a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum e {
        FRESH,
        STALE,
        EXPIRED
    }

    /* loaded from: classes2.dex */
    public interface f {
        void a(OAuth2Credentials oAuth2Credentials) throws IOException;
    }

    /* loaded from: classes2.dex */
    static class g implements x<h> {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.auth.a f11574a;

        public g(com.google.auth.a aVar) {
            this.f11574a = aVar;
        }

        @Override // com.google.common.util.concurrent.x
        /* renamed from: a */
        public void onSuccess(h hVar) {
            this.f11574a.a(hVar.f11576b);
        }

        @Override // com.google.common.util.concurrent.x
        public void onFailure(Throwable th2) {
            if (th2 instanceof ExecutionException) {
                th2 = th2.getCause();
            }
            this.f11574a.onFailure(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class h implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final AccessToken f11575a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, List<String>> f11576b;

        private h(AccessToken accessToken, Map<String, List<String>> map) {
            this.f11575a = accessToken;
            this.f11576b = map;
        }

        static h c(AccessToken accessToken, Map<String, List<String>> map) {
            ImmutableMap.b builder = ImmutableMap.builder();
            return new h(accessToken, builder.h("Authorization", ImmutableList.of("Bearer " + accessToken.getTokenValue())).k(map).a());
        }

        public boolean equals(Object obj) {
            if (obj instanceof h) {
                h hVar = (h) obj;
                return Objects.equals(this.f11576b, hVar.f11576b) && Objects.equals(this.f11575a, hVar.f11575a);
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.f11575a, this.f11576b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OAuth2Credentials() {
        this(null);
    }

    private d0<h> asyncFetch(Executor executor) {
        c orCreateRefreshTask;
        e state = getState();
        e eVar = e.FRESH;
        if (state == eVar) {
            return y.d(this.value);
        }
        synchronized (this.lock) {
            orCreateRefreshTask = getState() != eVar ? getOrCreateRefreshTask() : null;
        }
        if (orCreateRefreshTask != null) {
            orCreateRefreshTask.b(executor);
        }
        synchronized (this.lock) {
            if (getState() != e.EXPIRED) {
                return y.d(this.value);
            } else if (orCreateRefreshTask != null) {
                return orCreateRefreshTask.f11565a;
            } else {
                return y.c(new IllegalStateException("Credentials expired, but there is no task to refresh"));
            }
        }
    }

    public static OAuth2Credentials create(AccessToken accessToken) {
        return newBuilder().c(accessToken).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
        if (r4.refreshTask == r5) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
        if (r4.refreshTask != r5) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void finishRefreshAsync(com.google.common.util.concurrent.d0<com.google.auth.oauth2.OAuth2Credentials.h> r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r4.lock
            monitor-enter(r0)
            r1 = 0
            java.lang.Object r2 = r5.get()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.InterruptedException -> L32
            com.google.auth.oauth2.OAuth2Credentials$h r2 = (com.google.auth.oauth2.OAuth2Credentials.h) r2     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.InterruptedException -> L32
            r4.value = r2     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.InterruptedException -> L32
            java.util.List<com.google.auth.oauth2.OAuth2Credentials$f> r2 = r4.changeListeners     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.InterruptedException -> L32
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.InterruptedException -> L32
        L12:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.InterruptedException -> L32
            if (r3 == 0) goto L22
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.InterruptedException -> L32
            com.google.auth.oauth2.OAuth2Credentials$f r3 = (com.google.auth.oauth2.OAuth2Credentials.f) r3     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.InterruptedException -> L32
            r3.a(r4)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.InterruptedException -> L32
            goto L12
        L22:
            com.google.common.util.concurrent.e0<com.google.auth.oauth2.OAuth2Credentials$h> r2 = r4.refreshTask     // Catch: java.lang.Throwable -> L30
            if (r2 != r5) goto L3e
        L26:
            r4.refreshTask = r1     // Catch: java.lang.Throwable -> L30
            goto L3e
        L29:
            r2 = move-exception
            goto L40
        L2b:
            com.google.common.util.concurrent.e0<com.google.auth.oauth2.OAuth2Credentials$h> r2 = r4.refreshTask     // Catch: java.lang.Throwable -> L30
            if (r2 != r5) goto L3e
            goto L26
        L30:
            r5 = move-exception
            goto L47
        L32:
            java.lang.Thread r2 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L29
            r2.interrupt()     // Catch: java.lang.Throwable -> L29
            com.google.common.util.concurrent.e0<com.google.auth.oauth2.OAuth2Credentials$h> r2 = r4.refreshTask     // Catch: java.lang.Throwable -> L30
            if (r2 != r5) goto L3e
            goto L26
        L3e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L30
            return
        L40:
            com.google.common.util.concurrent.e0<com.google.auth.oauth2.OAuth2Credentials$h> r3 = r4.refreshTask     // Catch: java.lang.Throwable -> L30
            if (r3 != r5) goto L46
            r4.refreshTask = r1     // Catch: java.lang.Throwable -> L30
        L46:
            throw r2     // Catch: java.lang.Throwable -> L30
        L47:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L30
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.auth.oauth2.OAuth2Credentials.finishRefreshAsync(com.google.common.util.concurrent.d0):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T> T getFromServiceLoader(Class<? extends T> cls, T t10) {
        return (T) n5.f(ServiceLoader.load(cls), t10);
    }

    private c getOrCreateRefreshTask() {
        synchronized (this.lock) {
            e0<h> e0Var = this.refreshTask;
            if (e0Var != null) {
                return new c(e0Var, false);
            }
            e0<h> b10 = e0.b(new a());
            b10.addListener(new b(b10), h0.a());
            this.refreshTask = b10;
            return new c(b10, true);
        }
    }

    private e getState() {
        h hVar = this.value;
        if (hVar == null) {
            return e.EXPIRED;
        }
        Date expirationTime = hVar.f11575a.getExpirationTime();
        if (expirationTime == null) {
            return e.FRESH;
        }
        Duration ofMillis = Duration.ofMillis(expirationTime.getTime() - this.clock.a());
        if (ofMillis.compareTo(this.expirationMargin) <= 0) {
            return e.EXPIRED;
        }
        if (ofMillis.compareTo(this.refreshMargin) <= 0) {
            return e.STALE;
        }
        return e.FRESH;
    }

    public static d newBuilder() {
        return new d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T> T newInstance(String str) throws IOException, ClassNotFoundException {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (IllegalAccessException | InstantiationException e10) {
            throw new IOException(e10);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.clock = com.google.api.client.util.i.f11120a;
        this.refreshTask = null;
    }

    private static <T> T unwrapDirectFuture(Future<T> future) throws IOException {
        try {
            return future.get();
        } catch (InterruptedException e10) {
            Thread.currentThread().interrupt();
            throw new IOException("Interrupted while asynchronously refreshing the access token", e10);
        } catch (ExecutionException e11) {
            Throwable cause = e11.getCause();
            if (!(cause instanceof IOException)) {
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                throw new IOException("Unexpected error refreshing access token", cause);
            }
            throw ((IOException) cause);
        }
    }

    public final void addChangeListener(f fVar) {
        synchronized (this.lock) {
            if (this.changeListeners == null) {
                this.changeListeners = new ArrayList();
            }
            this.changeListeners.add(fVar);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof OAuth2Credentials) {
            return Objects.equals(this.value, ((OAuth2Credentials) obj).value);
        }
        return false;
    }

    public final AccessToken getAccessToken() {
        h hVar = this.value;
        if (hVar != null) {
            return hVar.f11575a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Map<String, List<String>> getAdditionalHeaders() {
        return EMPTY_EXTRA_HEADERS;
    }

    @Override // com.google.auth.Credentials
    public String getAuthenticationType() {
        return "OAuth2";
    }

    @Override // com.google.auth.Credentials
    public void getRequestMetadata(URI uri, Executor executor, com.google.auth.a aVar) {
        y.a(asyncFetch(executor), new g(aVar), h0.a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Map<String, List<String>> getRequestMetadataInternal() {
        h hVar = this.value;
        if (hVar != null) {
            return hVar.f11576b;
        }
        return null;
    }

    @Override // com.google.auth.Credentials
    public boolean hasRequestMetadata() {
        return true;
    }

    @Override // com.google.auth.Credentials
    public boolean hasRequestMetadataOnly() {
        return true;
    }

    public int hashCode() {
        return Objects.hashCode(this.value);
    }

    @Override // com.google.auth.Credentials
    public void refresh() throws IOException {
        c orCreateRefreshTask = getOrCreateRefreshTask();
        orCreateRefreshTask.b(h0.a());
        unwrapDirectFuture(orCreateRefreshTask.f11565a);
    }

    public AccessToken refreshAccessToken() throws IOException {
        throw new IllegalStateException("OAuth2Credentials instance does not support refreshing the access token. An instance with a new access token should be used, or a derived type that supports refreshing.");
    }

    public void refreshIfExpired() throws IOException {
        unwrapDirectFuture(asyncFetch(h0.a()));
    }

    public final void removeChangeListener(f fVar) {
        synchronized (this.lock) {
            List<f> list = this.changeListeners;
            if (list != null) {
                list.remove(fVar);
            }
        }
    }

    public d toBuilder() {
        return new d(this);
    }

    public String toString() {
        AccessToken accessToken;
        h hVar = this.value;
        Map map = null;
        if (hVar != null) {
            map = hVar.f11576b;
            accessToken = hVar.f11575a;
        } else {
            accessToken = null;
        }
        return com.google.common.base.j.c(this).d("requestMetadata", map).d("temporaryAccess", accessToken).toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OAuth2Credentials(AccessToken accessToken) {
        this(accessToken, DEFAULT_REFRESH_MARGIN, DEFAULT_EXPIRATION_MARGIN);
    }

    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private AccessToken f11567a;

        /* renamed from: b  reason: collision with root package name */
        private Duration f11568b;

        /* renamed from: c  reason: collision with root package name */
        private Duration f11569c;

        /* JADX INFO: Access modifiers changed from: protected */
        public d() {
            this.f11568b = OAuth2Credentials.DEFAULT_REFRESH_MARGIN;
            this.f11569c = OAuth2Credentials.DEFAULT_EXPIRATION_MARGIN;
        }

        public OAuth2Credentials a() {
            return new OAuth2Credentials(this.f11567a, this.f11568b, this.f11569c);
        }

        public AccessToken b() {
            return this.f11567a;
        }

        public d c(AccessToken accessToken) {
            this.f11567a = accessToken;
            return this;
        }

        protected d(OAuth2Credentials oAuth2Credentials) {
            this.f11568b = OAuth2Credentials.DEFAULT_REFRESH_MARGIN;
            this.f11569c = OAuth2Credentials.DEFAULT_EXPIRATION_MARGIN;
            this.f11567a = oAuth2Credentials.getAccessToken();
            this.f11568b = oAuth2Credentials.refreshMargin;
            this.f11569c = oAuth2Credentials.expirationMargin;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OAuth2Credentials(AccessToken accessToken, Duration duration, Duration duration2) {
        this.lock = new byte[0];
        this.value = null;
        this.clock = com.google.api.client.util.i.f11120a;
        if (accessToken != null) {
            this.value = h.c(accessToken, EMPTY_EXTRA_HEADERS);
        }
        this.refreshMargin = (Duration) com.google.common.base.o.t(duration, "refreshMargin");
        com.google.common.base.o.e(!duration.isNegative(), "refreshMargin can't be negative");
        this.expirationMargin = (Duration) com.google.common.base.o.t(duration2, "expirationMargin");
        com.google.common.base.o.e(!duration2.isNegative(), "expirationMargin can't be negative");
    }

    @Override // com.google.auth.Credentials
    public Map<String, List<String>> getRequestMetadata(URI uri) throws IOException {
        return ((h) unwrapDirectFuture(asyncFetch(h0.a()))).f11576b;
    }
}
