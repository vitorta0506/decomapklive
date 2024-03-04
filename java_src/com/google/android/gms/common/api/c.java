package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.p;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Set;
import v3.a0;
import v3.q;
/* loaded from: classes2.dex */
public abstract class c<O extends a.d> implements e<O> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f7471a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f7472b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.gms.common.api.a f7473c;

    /* renamed from: d  reason: collision with root package name */
    private final a.d f7474d;

    /* renamed from: e  reason: collision with root package name */
    private final v3.b f7475e;

    /* renamed from: f  reason: collision with root package name */
    private final Looper f7476f;

    /* renamed from: g  reason: collision with root package name */
    private final int f7477g;

    /* renamed from: h  reason: collision with root package name */
    private final d f7478h;

    /* renamed from: i  reason: collision with root package name */
    private final v3.k f7479i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    protected final com.google.android.gms.common.api.internal.c f7480j;

    /* loaded from: classes2.dex */
    public static class a {
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        public static final a f7481c = new C0085a().a();
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        public final v3.k f7482a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        public final Looper f7483b;

        /* renamed from: com.google.android.gms.common.api.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0085a {

            /* renamed from: a  reason: collision with root package name */
            private v3.k f7484a;

            /* renamed from: b  reason: collision with root package name */
            private Looper f7485b;

            @NonNull
            public a a() {
                if (this.f7484a == null) {
                    this.f7484a = new v3.a();
                }
                if (this.f7485b == null) {
                    this.f7485b = Looper.getMainLooper();
                }
                return new a(this.f7484a, this.f7485b);
            }

            @NonNull
            public C0085a b(@NonNull Looper looper) {
                p.k(looper, "Looper must not be null.");
                this.f7485b = looper;
                return this;
            }

            @NonNull
            public C0085a c(@NonNull v3.k kVar) {
                p.k(kVar, "StatusExceptionMapper must not be null.");
                this.f7484a = kVar;
                return this;
            }
        }

        private a(v3.k kVar, Account account, Looper looper) {
            this.f7482a = kVar;
            this.f7483b = looper;
        }
    }

    @MainThread
    public c(@NonNull Activity activity, @NonNull com.google.android.gms.common.api.a<O> aVar, @NonNull O o10, @NonNull a aVar2) {
        this(activity, activity, aVar, o10, aVar2);
    }

    private final com.google.android.gms.common.api.internal.b q(int i9, @NonNull com.google.android.gms.common.api.internal.b bVar) {
        bVar.j();
        this.f7480j.E(this, i9, bVar);
        return bVar;
    }

    private final t4.g r(int i9, @NonNull com.google.android.gms.common.api.internal.d dVar) {
        t4.h hVar = new t4.h();
        this.f7480j.F(this, i9, dVar, hVar, this.f7479i);
        return hVar.a();
    }

    @Override // com.google.android.gms.common.api.e
    @NonNull
    public final v3.b<O> c() {
        return this.f7475e;
    }

    @NonNull
    public d e() {
        return this.f7478h;
    }

    @NonNull
    protected e.a f() {
        Account F;
        Set<Scope> emptySet;
        GoogleSignInAccount y10;
        e.a aVar = new e.a();
        a.d dVar = this.f7474d;
        if ((dVar instanceof a.d.b) && (y10 = ((a.d.b) dVar).y()) != null) {
            F = y10.F();
        } else {
            a.d dVar2 = this.f7474d;
            F = dVar2 instanceof a.d.InterfaceC0084a ? ((a.d.InterfaceC0084a) dVar2).F() : null;
        }
        aVar.d(F);
        a.d dVar3 = this.f7474d;
        if (dVar3 instanceof a.d.b) {
            GoogleSignInAccount y11 = ((a.d.b) dVar3).y();
            if (y11 == null) {
                emptySet = Collections.emptySet();
            } else {
                emptySet = y11.f0();
            }
        } else {
            emptySet = Collections.emptySet();
        }
        aVar.c(emptySet);
        aVar.e(this.f7471a.getClass().getName());
        aVar.b(this.f7471a.getPackageName());
        return aVar;
    }

    @NonNull
    public <TResult, A extends a.b> t4.g<TResult> g(@NonNull com.google.android.gms.common.api.internal.d<A, TResult> dVar) {
        return r(2, dVar);
    }

    @NonNull
    public <TResult, A extends a.b> t4.g<TResult> h(@NonNull com.google.android.gms.common.api.internal.d<A, TResult> dVar) {
        return r(0, dVar);
    }

    @NonNull
    public <A extends a.b, T extends com.google.android.gms.common.api.internal.b<? extends i, A>> T i(@NonNull T t10) {
        q(1, t10);
        return t10;
    }

    @NonNull
    public O j() {
        return (O) this.f7474d;
    }

    @NonNull
    public Context k() {
        return this.f7471a;
    }

    @Nullable
    protected String l() {
        return this.f7472b;
    }

    @NonNull
    public Looper m() {
        return this.f7476f;
    }

    public final int n() {
        return this.f7477g;
    }

    @WorkerThread
    public final a.f o(Looper looper, com.google.android.gms.common.api.internal.o oVar) {
        a.f a10 = ((a.AbstractC0083a) p.j(this.f7473c.a())).a(this.f7471a, looper, f().a(), this.f7474d, oVar, oVar);
        String l10 = l();
        if (l10 != null && (a10 instanceof com.google.android.gms.common.internal.d)) {
            ((com.google.android.gms.common.internal.d) a10).M(l10);
        }
        if (l10 != null && (a10 instanceof v3.g)) {
            ((v3.g) a10).o(l10);
        }
        return a10;
    }

    public final a0 p(Context context, Handler handler) {
        return new a0(context, handler, f().a());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c(@androidx.annotation.NonNull android.app.Activity r2, @androidx.annotation.NonNull com.google.android.gms.common.api.a<O> r3, @androidx.annotation.NonNull O r4, @androidx.annotation.NonNull v3.k r5) {
        /*
            r1 = this;
            com.google.android.gms.common.api.c$a$a r0 = new com.google.android.gms.common.api.c$a$a
            r0.<init>()
            r0.c(r5)
            android.os.Looper r5 = r2.getMainLooper()
            r0.b(r5)
            com.google.android.gms.common.api.c$a r5 = r0.a()
            r1.<init>(r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.c.<init>(android.app.Activity, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, v3.k):void");
    }

    private c(@NonNull Context context, @Nullable Activity activity, com.google.android.gms.common.api.a aVar, a.d dVar, a aVar2) {
        p.k(context, "Null context is not permitted.");
        p.k(aVar, "Api must not be null.");
        p.k(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f7471a = context.getApplicationContext();
        String str = null;
        if (e4.m.k()) {
            try {
                str = (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(context, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
        this.f7472b = str;
        this.f7473c = aVar;
        this.f7474d = dVar;
        this.f7476f = aVar2.f7483b;
        v3.b a10 = v3.b.a(aVar, dVar, str);
        this.f7475e = a10;
        this.f7478h = new q(this);
        com.google.android.gms.common.api.internal.c y10 = com.google.android.gms.common.api.internal.c.y(this.f7471a);
        this.f7480j = y10;
        this.f7477g = y10.n();
        this.f7479i = aVar2.f7482a;
        if (activity != null && !(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            com.google.android.gms.common.api.internal.h.u(activity, y10, a10);
        }
        y10.c(this);
    }

    public c(@NonNull Context context, @NonNull com.google.android.gms.common.api.a<O> aVar, @NonNull O o10, @NonNull a aVar2) {
        this(context, null, aVar, o10, aVar2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c(@androidx.annotation.NonNull android.content.Context r2, @androidx.annotation.NonNull com.google.android.gms.common.api.a<O> r3, @androidx.annotation.NonNull O r4, @androidx.annotation.NonNull v3.k r5) {
        /*
            r1 = this;
            com.google.android.gms.common.api.c$a$a r0 = new com.google.android.gms.common.api.c$a$a
            r0.<init>()
            r0.c(r5)
            com.google.android.gms.common.api.c$a r5 = r0.a()
            r1.<init>(r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.c.<init>(android.content.Context, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, v3.k):void");
    }
}
