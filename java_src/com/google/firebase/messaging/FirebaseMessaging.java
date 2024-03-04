package com.google.firebase.messaging;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.m0;
import com.google.firebase.messaging.q0;
import j6.a;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class FirebaseMessaging {

    /* renamed from: o  reason: collision with root package name */
    private static final long f13959o = TimeUnit.HOURS.toSeconds(8);
    @GuardedBy("FirebaseMessaging.class")

    /* renamed from: p  reason: collision with root package name */
    private static q0 f13960p;
    @Nullable
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    static l1.f f13961q;
    @GuardedBy("FirebaseMessaging.class")
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    static ScheduledExecutorService f13962r;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.firebase.d f13963a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final j6.a f13964b;

    /* renamed from: c  reason: collision with root package name */
    private final l6.d f13965c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f13966d;

    /* renamed from: e  reason: collision with root package name */
    private final z f13967e;

    /* renamed from: f  reason: collision with root package name */
    private final m0 f13968f;

    /* renamed from: g  reason: collision with root package name */
    private final a f13969g;

    /* renamed from: h  reason: collision with root package name */
    private final Executor f13970h;

    /* renamed from: i  reason: collision with root package name */
    private final Executor f13971i;

    /* renamed from: j  reason: collision with root package name */
    private final Executor f13972j;

    /* renamed from: k  reason: collision with root package name */
    private final t4.g<v0> f13973k;

    /* renamed from: l  reason: collision with root package name */
    private final e0 f13974l;
    @GuardedBy("this")

    /* renamed from: m  reason: collision with root package name */
    private boolean f13975m;

    /* renamed from: n  reason: collision with root package name */
    private final Application.ActivityLifecycleCallbacks f13976n;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        private final h6.d f13977a;
        @GuardedBy("this")

        /* renamed from: b  reason: collision with root package name */
        private boolean f13978b;
        @Nullable
        @GuardedBy("this")

        /* renamed from: c  reason: collision with root package name */
        private h6.b<com.google.firebase.a> f13979c;
        @Nullable
        @GuardedBy("this")

        /* renamed from: d  reason: collision with root package name */
        private Boolean f13980d;

        a(h6.d dVar) {
            this.f13977a = dVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(h6.a aVar) {
            if (c()) {
                FirebaseMessaging.this.E();
            }
        }

        @Nullable
        private Boolean e() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            Context k10 = FirebaseMessaging.this.f13963a.k();
            SharedPreferences sharedPreferences = k10.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = k10.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(k10.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        synchronized void b() {
            if (this.f13978b) {
                return;
            }
            Boolean e10 = e();
            this.f13980d = e10;
            if (e10 == null) {
                h6.b<com.google.firebase.a> bVar = new h6.b() { // from class: com.google.firebase.messaging.w
                    @Override // h6.b
                    public final void a(h6.a aVar) {
                        FirebaseMessaging.a.this.d(aVar);
                    }
                };
                this.f13979c = bVar;
                this.f13977a.c(com.google.firebase.a.class, bVar);
            }
            this.f13978b = true;
        }

        synchronized boolean c() {
            boolean u10;
            b();
            Boolean bool = this.f13980d;
            if (bool != null) {
                u10 = bool.booleanValue();
            } else {
                u10 = FirebaseMessaging.this.f13963a.u();
            }
            return u10;
        }

        synchronized void f(boolean z10) {
            b();
            h6.b<com.google.firebase.a> bVar = this.f13979c;
            if (bVar != null) {
                this.f13977a.b(com.google.firebase.a.class, bVar);
                this.f13979c = null;
            }
            SharedPreferences.Editor edit = FirebaseMessaging.this.f13963a.k().getSharedPreferences("com.google.firebase.messaging", 0).edit();
            edit.putBoolean("auto_init", z10);
            edit.apply();
            if (z10) {
                FirebaseMessaging.this.E();
            }
            this.f13980d = Boolean.valueOf(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirebaseMessaging(com.google.firebase.d dVar, @Nullable j6.a aVar, k6.b<s6.i> bVar, k6.b<HeartBeatInfo> bVar2, l6.d dVar2, @Nullable l1.f fVar, h6.d dVar3) {
        this(dVar, aVar, bVar, bVar2, dVar2, fVar, dVar3, new e0(dVar.k()));
    }

    private synchronized void D() {
        if (!this.f13975m) {
            F(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        j6.a aVar = this.f13964b;
        if (aVar != null) {
            aVar.getToken();
        } else if (G(p())) {
            D();
        }
    }

    @NonNull
    @Keep
    static synchronized FirebaseMessaging getInstance(@NonNull com.google.firebase.d dVar) {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            firebaseMessaging = (FirebaseMessaging) dVar.i(FirebaseMessaging.class);
            com.google.android.gms.common.internal.p.k(firebaseMessaging, "Firebase Messaging component is not present");
        }
        return firebaseMessaging;
    }

    @NonNull
    public static synchronized FirebaseMessaging l() {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            firebaseMessaging = getInstance(com.google.firebase.d.l());
        }
        return firebaseMessaging;
    }

    @NonNull
    private static synchronized q0 m(Context context) {
        q0 q0Var;
        synchronized (FirebaseMessaging.class) {
            if (f13960p == null) {
                f13960p = new q0(context);
            }
            q0Var = f13960p;
        }
        return q0Var;
    }

    private String n() {
        return "[DEFAULT]".equals(this.f13963a.n()) ? "" : this.f13963a.p();
    }

    @Nullable
    public static l1.f q() {
        return f13961q;
    }

    private void r(String str) {
        if ("[DEFAULT]".equals(this.f13963a.n())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Invoking onNewToken for app: " + this.f13963a.n());
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra(JThirdPlatFormInterface.KEY_TOKEN, str);
            new l(this.f13966d).i(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t4.g u(final String str, final q0.a aVar) {
        return this.f13967e.e().p(this.f13972j, new t4.f() { // from class: com.google.firebase.messaging.v
            @Override // t4.f
            public final t4.g a(Object obj) {
                t4.g v10;
                v10 = FirebaseMessaging.this.v(str, aVar, (String) obj);
                return v10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t4.g v(String str, q0.a aVar, String str2) throws Exception {
        m(this.f13966d).f(n(), str, str2, this.f13974l.a());
        if (aVar == null || !str2.equals(aVar.f14109a)) {
            r(str2);
        }
        return t4.j.e(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(t4.h hVar) {
        try {
            hVar.c(i());
        } catch (Exception e10) {
            hVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x() {
        if (s()) {
            E();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(v0 v0Var) {
        if (s()) {
            v0Var.o();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z() {
        i0.c(this.f13966d);
    }

    public void A(boolean z10) {
        this.f13969g.f(z10);
    }

    public t4.g<Void> B(boolean z10) {
        return i0.e(this.f13970h, this.f13966d, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void C(boolean z10) {
        this.f13975m = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void F(long j10) {
        j(new r0(this, Math.min(Math.max(30L, 2 * j10), f13959o)), j10);
        this.f13975m = true;
    }

    @VisibleForTesting
    boolean G(@Nullable q0.a aVar) {
        return aVar == null || aVar.b(this.f13974l.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String i() throws IOException {
        j6.a aVar = this.f13964b;
        if (aVar != null) {
            try {
                return (String) t4.j.a(aVar.a());
            } catch (InterruptedException | ExecutionException e10) {
                throw new IOException(e10);
            }
        }
        final q0.a p10 = p();
        if (!G(p10)) {
            return p10.f14109a;
        }
        final String c10 = e0.c(this.f13963a);
        try {
            return (String) t4.j.a(this.f13968f.b(c10, new m0.a() { // from class: com.google.firebase.messaging.p
                @Override // com.google.firebase.messaging.m0.a
                public final t4.g start() {
                    t4.g u10;
                    u10 = FirebaseMessaging.this.u(c10, p10);
                    return u10;
                }
            }));
        } catch (InterruptedException | ExecutionException e11) {
            throw new IOException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(Runnable runnable, long j10) {
        synchronized (FirebaseMessaging.class) {
            if (f13962r == null) {
                f13962r = new ScheduledThreadPoolExecutor(1, new f4.a("TAG"));
            }
            f13962r.schedule(runnable, j10, TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context k() {
        return this.f13966d;
    }

    @NonNull
    public t4.g<String> o() {
        j6.a aVar = this.f13964b;
        if (aVar != null) {
            return aVar.a();
        }
        final t4.h hVar = new t4.h();
        this.f13970h.execute(new Runnable() { // from class: com.google.firebase.messaging.t
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.this.w(hVar);
            }
        });
        return hVar.a();
    }

    @Nullable
    @VisibleForTesting
    q0.a p() {
        return m(this.f13966d).d(n(), e0.c(this.f13963a));
    }

    public boolean s() {
        return this.f13969g.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public boolean t() {
        return this.f13974l.g();
    }

    FirebaseMessaging(com.google.firebase.d dVar, @Nullable j6.a aVar, k6.b<s6.i> bVar, k6.b<HeartBeatInfo> bVar2, l6.d dVar2, @Nullable l1.f fVar, h6.d dVar3, e0 e0Var) {
        this(dVar, aVar, dVar2, fVar, dVar3, e0Var, new z(dVar, e0Var, bVar, bVar2, dVar2), m.f(), m.c(), m.b());
    }

    FirebaseMessaging(com.google.firebase.d dVar, @Nullable j6.a aVar, l6.d dVar2, @Nullable l1.f fVar, h6.d dVar3, e0 e0Var, z zVar, Executor executor, Executor executor2, Executor executor3) {
        this.f13975m = false;
        f13961q = fVar;
        this.f13963a = dVar;
        this.f13964b = aVar;
        this.f13965c = dVar2;
        this.f13969g = new a(dVar3);
        Context k10 = dVar.k();
        this.f13966d = k10;
        o oVar = new o();
        this.f13976n = oVar;
        this.f13974l = e0Var;
        this.f13971i = executor;
        this.f13967e = zVar;
        this.f13968f = new m0(executor);
        this.f13970h = executor2;
        this.f13972j = executor3;
        Context k11 = dVar.k();
        if (k11 instanceof Application) {
            ((Application) k11).registerActivityLifecycleCallbacks(oVar);
        } else {
            Log.w("FirebaseMessaging", "Context " + k11 + " was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
        }
        if (aVar != null) {
            aVar.b(new a.InterfaceC0537a() { // from class: com.google.firebase.messaging.q
            });
        }
        executor2.execute(new Runnable() { // from class: com.google.firebase.messaging.s
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.this.x();
            }
        });
        t4.g<v0> e10 = v0.e(this, e0Var, zVar, k10, m.g());
        this.f13973k = e10;
        e10.g(executor2, new t4.e() { // from class: com.google.firebase.messaging.u
            @Override // t4.e
            public final void onSuccess(Object obj) {
                FirebaseMessaging.this.y((v0) obj);
            }
        });
        executor2.execute(new Runnable() { // from class: com.google.firebase.messaging.r
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.this.z();
            }
        });
    }
}
