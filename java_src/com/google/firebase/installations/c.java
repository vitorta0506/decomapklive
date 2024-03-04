package com.google.firebase.installations;

import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.p;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import i6.i;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import t4.j;
/* loaded from: classes2.dex */
public class c implements l6.d {

    /* renamed from: m  reason: collision with root package name */
    private static final Object f13891m = new Object();

    /* renamed from: n  reason: collision with root package name */
    private static final ThreadFactory f13892n = new a();

    /* renamed from: a  reason: collision with root package name */
    private final com.google.firebase.d f13893a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.firebase.installations.remote.c f13894b;

    /* renamed from: c  reason: collision with root package name */
    private final PersistedInstallation f13895c;

    /* renamed from: d  reason: collision with root package name */
    private final h f13896d;

    /* renamed from: e  reason: collision with root package name */
    private final n6.a f13897e;

    /* renamed from: f  reason: collision with root package name */
    private final l6.f f13898f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f13899g;

    /* renamed from: h  reason: collision with root package name */
    private final ExecutorService f13900h;

    /* renamed from: i  reason: collision with root package name */
    private final ExecutorService f13901i;
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    private String f13902j;
    @GuardedBy("FirebaseInstallations.this")

    /* renamed from: k  reason: collision with root package name */
    private Set<m6.a> f13903k;
    @GuardedBy("lock")

    /* renamed from: l  reason: collision with root package name */
    private final List<g> f13904l;

    /* loaded from: classes2.dex */
    class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f13905a = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f13905a.getAndIncrement())));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f13906a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f13907b;

        static {
            int[] iArr = new int[TokenResult.ResponseCode.values().length];
            f13907b = iArr;
            try {
                iArr[TokenResult.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13907b[TokenResult.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13907b[TokenResult.ResponseCode.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[InstallationResponse.ResponseCode.values().length];
            f13906a = iArr2;
            try {
                iArr2[InstallationResponse.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13906a[InstallationResponse.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(com.google.firebase.d dVar, @NonNull k6.b<i> bVar) {
        this(new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f13892n), dVar, new com.google.firebase.installations.remote.c(dVar.k(), bVar), new PersistedInstallation(dVar), h.c(), new n6.a(dVar), new l6.f());
    }

    private void A(com.google.firebase.installations.local.b bVar) {
        synchronized (this.f13899g) {
            Iterator<g> it = this.f13904l.iterator();
            while (it.hasNext()) {
                if (it.next().b(bVar)) {
                    it.remove();
                }
            }
        }
    }

    private synchronized void B(String str) {
        this.f13902j = str;
    }

    private synchronized void C(com.google.firebase.installations.local.b bVar, com.google.firebase.installations.local.b bVar2) {
        if (this.f13903k.size() != 0 && !TextUtils.equals(bVar.d(), bVar2.d())) {
            for (m6.a aVar : this.f13903k) {
                aVar.a(bVar2.d());
            }
        }
    }

    private t4.g<f> e() {
        t4.h hVar = new t4.h();
        g(new d(this.f13896d, hVar));
        return hVar.a();
    }

    private t4.g<String> f() {
        t4.h hVar = new t4.h();
        g(new e(hVar));
        return hVar.a();
    }

    private void g(g gVar) {
        synchronized (this.f13899g) {
            this.f13904l.add(gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void t(boolean r3) {
        /*
            r2 = this;
            com.google.firebase.installations.local.b r0 = r2.p()
            boolean r1 = r0.i()     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L5f
            if (r1 != 0) goto L22
            boolean r1 = r0.l()     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L5f
            if (r1 == 0) goto L11
            goto L22
        L11:
            if (r3 != 0) goto L1d
            com.google.firebase.installations.h r3 = r2.f13896d     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L5f
            boolean r3 = r3.f(r0)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L5f
            if (r3 == 0) goto L1c
            goto L1d
        L1c:
            return
        L1d:
            com.google.firebase.installations.local.b r3 = r2.j(r0)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L5f
            goto L26
        L22:
            com.google.firebase.installations.local.b r3 = r2.y(r0)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L5f
        L26:
            r2.s(r3)
            r2.C(r0, r3)
            boolean r0 = r3.k()
            if (r0 == 0) goto L39
            java.lang.String r0 = r3.d()
            r2.B(r0)
        L39:
            boolean r0 = r3.i()
            if (r0 == 0) goto L4a
            com.google.firebase.installations.FirebaseInstallationsException r3 = new com.google.firebase.installations.FirebaseInstallationsException
            com.google.firebase.installations.FirebaseInstallationsException$Status r0 = com.google.firebase.installations.FirebaseInstallationsException.Status.BAD_CONFIG
            r3.<init>(r0)
            r2.z(r3)
            goto L5e
        L4a:
            boolean r0 = r3.j()
            if (r0 == 0) goto L5b
            java.io.IOException r3 = new java.io.IOException
            java.lang.String r0 = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."
            r3.<init>(r0)
            r2.z(r3)
            goto L5e
        L5b:
            r2.A(r3)
        L5e:
            return
        L5f:
            r3 = move-exception
            r2.z(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.c.t(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public final void v(final boolean z10) {
        com.google.firebase.installations.local.b q10 = q();
        if (z10) {
            q10 = q10.p();
        }
        A(q10);
        this.f13901i.execute(new Runnable() { // from class: l6.b
            @Override // java.lang.Runnable
            public final void run() {
                com.google.firebase.installations.c.this.t(z10);
            }
        });
    }

    private com.google.firebase.installations.local.b j(@NonNull com.google.firebase.installations.local.b bVar) throws FirebaseInstallationsException {
        TokenResult e10 = this.f13894b.e(k(), bVar.d(), r(), bVar.f());
        int i9 = b.f13907b[e10.b().ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 == 3) {
                    B(null);
                    return bVar.r();
                }
                throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
            }
            return bVar.q("BAD CONFIG");
        }
        return bVar.o(e10.c(), e10.d(), this.f13896d.b());
    }

    private synchronized String m() {
        return this.f13902j;
    }

    @NonNull
    public static c n() {
        return o(com.google.firebase.d.l());
    }

    @NonNull
    public static c o(@NonNull com.google.firebase.d dVar) {
        p.b(dVar != null, "Null is not a valid value of FirebaseApp.");
        return (c) dVar.i(l6.d.class);
    }

    private com.google.firebase.installations.local.b p() {
        com.google.firebase.installations.local.b d10;
        synchronized (f13891m) {
            com.google.firebase.installations.b a10 = com.google.firebase.installations.b.a(this.f13893a.k(), "generatefid.lock");
            d10 = this.f13895c.d();
            if (a10 != null) {
                a10.b();
            }
        }
        return d10;
    }

    private com.google.firebase.installations.local.b q() {
        com.google.firebase.installations.local.b d10;
        synchronized (f13891m) {
            com.google.firebase.installations.b a10 = com.google.firebase.installations.b.a(this.f13893a.k(), "generatefid.lock");
            d10 = this.f13895c.d();
            if (d10.j()) {
                d10 = this.f13895c.b(d10.t(x(d10)));
            }
            if (a10 != null) {
                a10.b();
            }
        }
        return d10;
    }

    private void s(com.google.firebase.installations.local.b bVar) {
        synchronized (f13891m) {
            com.google.firebase.installations.b a10 = com.google.firebase.installations.b.a(this.f13893a.k(), "generatefid.lock");
            this.f13895c.b(bVar);
            if (a10 != null) {
                a10.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        v(false);
    }

    private void w() {
        p.g(l(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        p.g(r(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        p.g(k(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        p.b(h.h(l()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        p.b(h.g(k()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    private String x(com.google.firebase.installations.local.b bVar) {
        if ((!this.f13893a.n().equals("CHIME_ANDROID_SDK") && !this.f13893a.v()) || !bVar.m()) {
            return this.f13898f.a();
        }
        String f10 = this.f13897e.f();
        return TextUtils.isEmpty(f10) ? this.f13898f.a() : f10;
    }

    private com.google.firebase.installations.local.b y(com.google.firebase.installations.local.b bVar) throws FirebaseInstallationsException {
        InstallationResponse d10 = this.f13894b.d(k(), bVar.d(), r(), l(), (bVar.d() == null || bVar.d().length() != 11) ? null : this.f13897e.i());
        int i9 = b.f13906a[d10.e().ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                return bVar.q("BAD CONFIG");
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        return bVar.s(d10.c(), d10.d(), this.f13896d.b(), d10.b().c(), d10.b().d());
    }

    private void z(Exception exc) {
        synchronized (this.f13899g) {
            Iterator<g> it = this.f13904l.iterator();
            while (it.hasNext()) {
                if (it.next().a(exc)) {
                    it.remove();
                }
            }
        }
    }

    @Override // l6.d
    @NonNull
    public t4.g<f> a(final boolean z10) {
        w();
        t4.g<f> e10 = e();
        this.f13900h.execute(new Runnable() { // from class: l6.c
            @Override // java.lang.Runnable
            public final void run() {
                com.google.firebase.installations.c.this.v(z10);
            }
        });
        return e10;
    }

    @Override // l6.d
    @NonNull
    public t4.g<String> getId() {
        w();
        String m10 = m();
        if (m10 != null) {
            return j.e(m10);
        }
        t4.g<String> f10 = f();
        this.f13900h.execute(new Runnable() { // from class: l6.a
            @Override // java.lang.Runnable
            public final void run() {
                com.google.firebase.installations.c.this.u();
            }
        });
        return f10;
    }

    @Nullable
    String k() {
        return this.f13893a.o().b();
    }

    @VisibleForTesting
    String l() {
        return this.f13893a.o().c();
    }

    @Nullable
    String r() {
        return this.f13893a.o().e();
    }

    c(ExecutorService executorService, com.google.firebase.d dVar, com.google.firebase.installations.remote.c cVar, PersistedInstallation persistedInstallation, h hVar, n6.a aVar, l6.f fVar) {
        this.f13899g = new Object();
        this.f13903k = new HashSet();
        this.f13904l = new ArrayList();
        this.f13893a = dVar;
        this.f13894b = cVar;
        this.f13895c = persistedInstallation;
        this.f13896d = hVar;
        this.f13897e = aVar;
        this.f13898f = fVar;
        this.f13900h = executorService;
        this.f13901i = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f13892n);
    }
}
