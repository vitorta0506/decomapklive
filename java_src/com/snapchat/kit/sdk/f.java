package com.snapchat.kit.sdk;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.facebook.internal.ServerProtocol;
import com.google.gson.Gson;
import com.snapchat.kit.sdk.a.a;
import com.snapchat.kit.sdk.core.controller.OAuthFailureReason;
import com.snapchat.kit.sdk.core.metrics.model.KitPluginType;
import com.snapchat.kit.sdk.core.metrics.model.OpMetric;
import com.snapchat.kit.sdk.core.metrics.model.ServerEvent;
import com.snapchat.kit.sdk.core.models.AuthToken;
import com.snapchat.kit.sdk.core.models.AuthorizationRequest;
import com.snapchat.kit.sdk.core.security.SecureSharedPreferences;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
/* loaded from: classes4.dex */
public final class f {

    /* renamed from: s  reason: collision with root package name */
    static final Set<String> f29513s = new a();

    /* renamed from: a  reason: collision with root package name */
    private final String f29514a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29515b;

    /* renamed from: c  reason: collision with root package name */
    private final List<String> f29516c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f29517d;

    /* renamed from: e  reason: collision with root package name */
    private final ce.c f29518e;

    /* renamed from: f  reason: collision with root package name */
    private final OkHttpClient f29519f;

    /* renamed from: g  reason: collision with root package name */
    private final dg.a<ie.j> f29520g;

    /* renamed from: h  reason: collision with root package name */
    private final Gson f29521h;

    /* renamed from: i  reason: collision with root package name */
    private final dg.a<de.b<ServerEvent>> f29522i;

    /* renamed from: j  reason: collision with root package name */
    private final ge.f f29523j;
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    private com.snapchat.kit.sdk.a.a f29524k;

    /* renamed from: l  reason: collision with root package name */
    private final KitPluginType f29525l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f29526m;

    /* renamed from: n  reason: collision with root package name */
    private AuthorizationRequest f29527n;

    /* renamed from: o  reason: collision with root package name */
    private com.snapchat.kit.sdk.c f29528o;

    /* renamed from: p  reason: collision with root package name */
    private final AtomicBoolean f29529p = new AtomicBoolean(false);
    @VisibleForTesting(otherwise = 2)

    /* renamed from: q  reason: collision with root package name */
    int f29530q = 0;
    @VisibleForTesting(otherwise = 2)

    /* renamed from: r  reason: collision with root package name */
    boolean f29531r;

    /* loaded from: classes4.dex */
    static class a extends HashSet<String> {
        a() {
            add("invalid_grant");
            add("invalid_request");
            add("invalid_scope");
            add("unsupported_grant_type");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public final class b implements Callback {

        /* loaded from: classes4.dex */
        final class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                f.this.f29524k.b(a.EnumC0289a.GRANT, false);
                f.this.w();
            }
        }

        /* renamed from: com.snapchat.kit.sdk.f$b$b  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class RunnableC0291b implements Runnable {
            RunnableC0291b() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                f.this.v();
            }
        }

        /* loaded from: classes4.dex */
        final class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                f.this.f29524k.b(a.EnumC0289a.GRANT, false);
                f.this.w();
            }
        }

        b() {
        }

        @Override // okhttp3.Callback
        public final void onFailure(Call call, IOException iOException) {
            f.n(new a());
        }

        @Override // okhttp3.Callback
        public final void onResponse(Call call, Response response) {
            if (response.isSuccessful() && response.body() != null && response.body().charStream() != null) {
                AuthToken authToken = (AuthToken) f.this.f29521h.fromJson(response.body().charStream(), (Class<Object>) AuthToken.class);
                authToken.setLastUpdated(System.currentTimeMillis());
                if (authToken.isComplete()) {
                    f.this.f29528o.a(authToken);
                    f.u(f.this);
                    f.this.f29524k.b(a.EnumC0289a.GRANT, true);
                    f.n(new RunnableC0291b());
                    return;
                }
            }
            f.n(new c());
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes4.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public static final int f29536a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f29537b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f29538c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f29539d = 4;

        /* renamed from: e  reason: collision with root package name */
        public static final int f29540e = 5;

        /* renamed from: f  reason: collision with root package name */
        public static final int f29541f = 6;

        /* renamed from: g  reason: collision with root package name */
        private static final /* synthetic */ int[] f29542g = {1, 2, 3, 4, 5, 6};

        public static int[] a() {
            return (int[]) f29542g.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public final class d implements ie.b<String> {
        d() {
        }

        @Override // ie.b
        public final void a(boolean z10, int i9, @NonNull String str) {
            f.this.f29524k.b(a.EnumC0289a.FIREBASE_TOKEN_GRANT, false);
            OAuthFailureReason oAuthFailureReason = OAuthFailureReason.FIREBASE_CUSTOM_TOKEN_FETCH_FAILURE;
            oAuthFailureReason.errorDescription = str;
            f.this.e(oAuthFailureReason);
        }

        @Override // ie.b
        public final /* synthetic */ void onSuccess(@Nullable String str) {
            String str2 = str;
            if (TextUtils.isEmpty(str2)) {
                f.this.f29524k.b(a.EnumC0289a.FIREBASE_TOKEN_GRANT, false);
                OAuthFailureReason oAuthFailureReason = OAuthFailureReason.FIREBASE_CUSTOM_TOKEN_FETCH_FAILURE;
                oAuthFailureReason.errorDescription = "Token fetch request succeeded but response Token is Null or Empty";
                f.this.e(oAuthFailureReason);
                return;
            }
            f.this.f29524k.b(a.EnumC0289a.FIREBASE_TOKEN_GRANT, true);
            f.i(f.this, str2);
        }
    }

    /* loaded from: classes4.dex */
    private static class e extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<f> f29544a;

        /* synthetic */ e(f fVar, byte b10) {
            this(fVar);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            f fVar = this.f29544a.get();
            if (fVar == null) {
                return null;
            }
            fVar.p();
            return null;
        }

        private e(f fVar) {
            this.f29544a = new WeakReference<>(fVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str, String str2, List<String> list, Context context, @Nullable SecureSharedPreferences secureSharedPreferences, be.d dVar, ce.c cVar, OkHttpClient okHttpClient, dg.a<ie.j> aVar, Gson gson, dg.a<de.b<ServerEvent>> aVar2, ge.f fVar, dg.a<de.b<OpMetric>> aVar3, KitPluginType kitPluginType, boolean z10) {
        this.f29514a = str;
        this.f29515b = str2;
        this.f29516c = list;
        this.f29517d = context;
        this.f29518e = cVar;
        this.f29519f = okHttpClient;
        this.f29520g = aVar;
        this.f29521h = gson;
        this.f29522i = aVar2;
        this.f29523j = fVar;
        this.f29524k = new com.snapchat.kit.sdk.a.a(aVar3);
        com.snapchat.kit.sdk.c cVar2 = new com.snapchat.kit.sdk.c(secureSharedPreferences, dVar);
        this.f29528o = cVar2;
        this.f29525l = kitPluginType;
        this.f29526m = z10;
        if (cVar2.b()) {
            new e(this, (byte) 0).execute(new Void[0]);
        }
    }

    @Nullable
    private static Request c(@NonNull RequestBody requestBody, @NonNull String str) {
        return new Request.Builder().header("Content-Type", "application/x-www-form-urlencoded").url(String.format("%s%s", "https://accounts.snapchat.com", str)).post(requestBody).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(OAuthFailureReason oAuthFailureReason) {
        this.f29522i.get().push(this.f29523j.c(false, true));
        this.f29518e.b(oAuthFailureReason);
    }

    private void f(@NonNull AuthorizationRequest authorizationRequest, @NonNull String str) {
        FormBody.Builder builder = new FormBody.Builder();
        builder.add("grant_type", "authorization_code");
        builder.add("code", str);
        builder.add("redirect_uri", authorizationRequest.getRedirectUri());
        builder.add("client_id", this.f29514a);
        builder.add("code_verifier", authorizationRequest.getCodeVerifier());
        Request c10 = c(builder.build(), "/accounts/oauth2/token");
        if (c10 == null) {
            w();
            return;
        }
        this.f29518e.f();
        this.f29524k.a(a.EnumC0289a.GRANT);
        this.f29519f.newCall(c10).enqueue(new b());
    }

    private void g(@Nullable AuthorizationRequest authorizationRequest, @Nullable String str, @Nullable String str2) {
        if (authorizationRequest != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && TextUtils.equals(str2, authorizationRequest.getState()) && !TextUtils.isEmpty(authorizationRequest.getRedirectUri()) && !TextUtils.isEmpty(authorizationRequest.getCodeVerifier())) {
            this.f29530q = 0;
            if (this.f29531r) {
                l(authorizationRequest, str);
            } else {
                f(authorizationRequest, str);
            }
        } else if (this.f29531r) {
            e(OAuthFailureReason.INVALID_OAUTH_RESPONSE);
        } else {
            w();
        }
    }

    static /* synthetic */ void i(f fVar, String str) {
        fVar.f29522i.get().push(fVar.f29523j.c(true, true));
        fVar.f29518e.c(str);
    }

    private void l(@NonNull AuthorizationRequest authorizationRequest, @NonNull String str) {
        this.f29524k.a(a.EnumC0289a.FIREBASE_TOKEN_GRANT);
        this.f29520g.get().d(str, authorizationRequest.getRedirectUri(), authorizationRequest.getCodeVerifier(), new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n(Runnable runnable) {
        new Handler(Looper.getMainLooper()).post(runnable);
    }

    static /* synthetic */ AuthorizationRequest u(f fVar) {
        fVar.f29527n = null;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        this.f29522i.get().push(this.f29523j.c(false, false));
        this.f29518e.g();
    }

    @Nullable
    public final String b() {
        return this.f29528o.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(@NonNull Uri uri) {
        g(this.f29527n, uri.getQueryParameter("code"), uri.getQueryParameter(ServerProtocol.DIALOG_PARAM_STATE));
    }

    @NonNull
    @WorkerThread
    public final int k() {
        if (!this.f29528o.c()) {
            return c.f29541f;
        }
        return p();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean o(@NonNull Uri uri) {
        return uri.toString().startsWith(this.f29515b);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00f1 A[Catch: all -> 0x00f4, IOException -> 0x00f6, TRY_LEAVE, TryCatch #1 {IOException -> 0x00f6, blocks: (B:11:0x0041, B:13:0x004e, B:15:0x0054, B:17:0x005a, B:19:0x0064, B:22:0x007a, B:24:0x0084, B:25:0x008d, B:27:0x009a, B:42:0x00f1, B:29:0x00a7, B:31:0x00ad, B:33:0x00b5, B:35:0x00ca, B:37:0x00d4, B:39:0x00e4, B:40:0x00e9), top: B:51:0x0041, outer: #0 }] */
    @androidx.annotation.NonNull
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int p() {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.snapchat.kit.sdk.f.p():int");
    }

    public final void r() {
        boolean f10 = this.f29528o.f();
        this.f29528o.g();
        if (f10) {
            this.f29518e.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void t() {
        if (this.f29531r) {
            e(OAuthFailureReason.INVALID_OAUTH_RESPONSE);
        } else {
            w();
        }
    }

    @VisibleForTesting(otherwise = 2)
    final void v() {
        this.f29522i.get().push(this.f29523j.c(true, false));
        this.f29518e.h();
    }

    public final boolean x() {
        return this.f29528o.f();
    }
}
