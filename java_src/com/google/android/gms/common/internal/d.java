package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.huawei.hms.api.HuaweiApiClientImpl;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public abstract class d<T extends IInterface> {
    private boolean A;
    @Nullable
    private volatile zzj B;
    @NonNull
    protected AtomicInteger C;

    /* renamed from: a  reason: collision with root package name */
    private int f7685a;

    /* renamed from: b  reason: collision with root package name */
    private long f7686b;

    /* renamed from: c  reason: collision with root package name */
    private long f7687c;

    /* renamed from: d  reason: collision with root package name */
    private int f7688d;

    /* renamed from: e  reason: collision with root package name */
    private long f7689e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private volatile String f7690f;

    /* renamed from: g  reason: collision with root package name */
    t1 f7691g;

    /* renamed from: h  reason: collision with root package name */
    private final Context f7692h;

    /* renamed from: i  reason: collision with root package name */
    private final Looper f7693i;

    /* renamed from: j  reason: collision with root package name */
    private final g f7694j;

    /* renamed from: k  reason: collision with root package name */
    private final com.google.android.gms.common.b f7695k;

    /* renamed from: l  reason: collision with root package name */
    final Handler f7696l;

    /* renamed from: m  reason: collision with root package name */
    private final Object f7697m;

    /* renamed from: n  reason: collision with root package name */
    private final Object f7698n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private l f7699o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    protected c f7700p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private IInterface f7701q;

    /* renamed from: r  reason: collision with root package name */
    private final ArrayList f7702r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private e1 f7703s;

    /* renamed from: t  reason: collision with root package name */
    private int f7704t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private final a f7705u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private final b f7706v;

    /* renamed from: w  reason: collision with root package name */
    private final int f7707w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private final String f7708x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private volatile String f7709y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private ConnectionResult f7710z;
    private static final Feature[] E = new Feature[0];
    @NonNull
    public static final String[] D = {"service_esmobile", "service_googleme"};

    /* loaded from: classes2.dex */
    public interface a {
        void b(@Nullable Bundle bundle);

        void onConnectionSuspended(int i9);
    }

    /* loaded from: classes2.dex */
    public interface b {
        void f(@NonNull ConnectionResult connectionResult);
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(@NonNull ConnectionResult connectionResult);
    }

    /* renamed from: com.google.android.gms.common.internal.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    protected class C0087d implements c {
        public C0087d() {
        }

        @Override // com.google.android.gms.common.internal.d.c
        public final void a(@NonNull ConnectionResult connectionResult) {
            if (connectionResult.P()) {
                d dVar = d.this;
                dVar.i(null, dVar.z());
            } else if (d.this.f7706v != null) {
                d.this.f7706v.f(connectionResult);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface e {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d(@androidx.annotation.NonNull android.content.Context r10, @androidx.annotation.NonNull android.os.Looper r11, int r12, @androidx.annotation.Nullable com.google.android.gms.common.internal.d.a r13, @androidx.annotation.Nullable com.google.android.gms.common.internal.d.b r14, @androidx.annotation.Nullable java.lang.String r15) {
        /*
            r9 = this;
            com.google.android.gms.common.internal.g r3 = com.google.android.gms.common.internal.g.b(r10)
            com.google.android.gms.common.b r4 = com.google.android.gms.common.b.f()
            com.google.android.gms.common.internal.p.j(r13)
            com.google.android.gms.common.internal.p.j(r14)
            r0 = r9
            r1 = r10
            r2 = r11
            r5 = r12
            r6 = r13
            r7 = r14
            r8 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.d.<init>(android.content.Context, android.os.Looper, int, com.google.android.gms.common.internal.d$a, com.google.android.gms.common.internal.d$b, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void Z(d dVar, zzj zzjVar) {
        dVar.B = zzjVar;
        if (dVar.P()) {
            ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zzjVar.f7808d;
            q.b().c(connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.R());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void a0(d dVar, int i9) {
        int i10;
        int i11;
        synchronized (dVar.f7697m) {
            i10 = dVar.f7704t;
        }
        if (i10 == 3) {
            dVar.A = true;
            i11 = 5;
        } else {
            i11 = 4;
        }
        Handler handler = dVar.f7696l;
        handler.sendMessage(handler.obtainMessage(i11, dVar.C.get(), 16));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean d0(d dVar, int i9, int i10, IInterface iInterface) {
        synchronized (dVar.f7697m) {
            if (dVar.f7704t != i9) {
                return false;
            }
            dVar.f0(i10, iInterface);
            return true;
        }
    }

    /*  JADX ERROR: NullPointerException in pass: RegionMakerVisitor
        java.lang.NullPointerException: Cannot read field "wordsInUse" because "set" is null
        	at java.base/java.util.BitSet.or(BitSet.java:943)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:732)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:811)
        	at jadx.core.dex.visitors.regions.IfMakerHelper.restructureIf(IfMakerHelper.java:88)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:706)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    static /* bridge */ /* synthetic */ boolean e0(com.google.android.gms.common.internal.d r2) {
        /*
            boolean r0 = r2.A
            r1 = 0
            if (r0 == 0) goto L6
            goto L24
        L6:
            java.lang.String r0 = r2.B()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L11
            goto L24
        L11:
            java.lang.String r0 = r2.y()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L1c
            goto L24
        L1c:
            java.lang.String r2 = r2.B()     // Catch: java.lang.ClassNotFoundException -> L24
            java.lang.Class.forName(r2)     // Catch: java.lang.ClassNotFoundException -> L24
            r1 = 1
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.d.e0(com.google.android.gms.common.internal.d):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void f0(int i9, @Nullable IInterface iInterface) {
        t1 t1Var;
        t1 t1Var2;
        p.a((i9 == 4) == (iInterface != 0));
        synchronized (this.f7697m) {
            this.f7704t = i9;
            this.f7701q = iInterface;
            if (i9 == 1) {
                e1 e1Var = this.f7703s;
                if (e1Var != null) {
                    g gVar = this.f7694j;
                    String c10 = this.f7691g.c();
                    p.j(c10);
                    gVar.e(c10, this.f7691g.b(), this.f7691g.a(), e1Var, U(), this.f7691g.d());
                    this.f7703s = null;
                }
            } else if (i9 == 2 || i9 == 3) {
                e1 e1Var2 = this.f7703s;
                if (e1Var2 != null && (t1Var2 = this.f7691g) != null) {
                    String c11 = t1Var2.c();
                    String b10 = t1Var2.b();
                    Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + c11 + " on " + b10);
                    g gVar2 = this.f7694j;
                    String c12 = this.f7691g.c();
                    p.j(c12);
                    gVar2.e(c12, this.f7691g.b(), this.f7691g.a(), e1Var2, U(), this.f7691g.d());
                    this.C.incrementAndGet();
                }
                e1 e1Var3 = new e1(this, this.C.get());
                this.f7703s = e1Var3;
                if (this.f7704t == 3 && y() != null) {
                    t1Var = new t1(v().getPackageName(), y(), true, g.a(), false);
                } else {
                    t1Var = new t1(D(), C(), false, g.a(), F());
                }
                this.f7691g = t1Var;
                if (t1Var.d() && k() < 17895000) {
                    throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(this.f7691g.c())));
                }
                g gVar3 = this.f7694j;
                String c13 = this.f7691g.c();
                p.j(c13);
                if (!gVar3.f(new m1(c13, this.f7691g.b(), this.f7691g.a(), this.f7691g.d()), e1Var3, U(), t())) {
                    String c14 = this.f7691g.c();
                    String b11 = this.f7691g.b();
                    Log.w("GmsClient", "unable to connect to service: " + c14 + " on " + b11);
                    b0(16, null, this.C.get());
                }
            } else if (i9 == 4) {
                p.j(iInterface);
                H(iInterface);
            }
        }
    }

    @NonNull
    public final T A() throws DeadObjectException {
        T t10;
        synchronized (this.f7697m) {
            if (this.f7704t != 5) {
                o();
                t10 = (T) this.f7701q;
                p.k(t10, "Client is connected but service is null");
            } else {
                throw new DeadObjectException();
            }
        }
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public abstract String B();

    @NonNull
    protected abstract String C();

    @NonNull
    protected String D() {
        return "com.google.android.gms";
    }

    @Nullable
    public ConnectionTelemetryConfiguration E() {
        zzj zzjVar = this.B;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.f7808d;
    }

    protected boolean F() {
        return k() >= 211700000;
    }

    public boolean G() {
        return this.B != null;
    }

    @CallSuper
    protected void H(@NonNull T t10) {
        this.f7687c = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void I(@NonNull ConnectionResult connectionResult) {
        this.f7688d = connectionResult.I();
        this.f7689e = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void J(int i9) {
        this.f7685a = i9;
        this.f7686b = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void K(int i9, @Nullable IBinder iBinder, @Nullable Bundle bundle, int i10) {
        Handler handler = this.f7696l;
        handler.sendMessage(handler.obtainMessage(1, i10, -1, new f1(this, i9, iBinder, bundle)));
    }

    public boolean L() {
        return false;
    }

    public void M(@NonNull String str) {
        this.f7709y = str;
    }

    public void N(int i9) {
        Handler handler = this.f7696l;
        handler.sendMessage(handler.obtainMessage(6, this.C.get(), i9));
    }

    protected void O(@NonNull c cVar, int i9, @Nullable PendingIntent pendingIntent) {
        p.k(cVar, "Connection progress callbacks cannot be null.");
        this.f7700p = cVar;
        Handler handler = this.f7696l;
        handler.sendMessage(handler.obtainMessage(3, this.C.get(), i9, pendingIntent));
    }

    public boolean P() {
        return false;
    }

    @NonNull
    protected final String U() {
        String str = this.f7708x;
        return str == null ? this.f7692h.getClass().getName() : str;
    }

    public void b(@NonNull String str) {
        this.f7690f = str;
        disconnect();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b0(int i9, @Nullable Bundle bundle, int i10) {
        Handler handler = this.f7696l;
        handler.sendMessage(handler.obtainMessage(7, i10, -1, new g1(this, i9, null)));
    }

    @NonNull
    public String c() {
        t1 t1Var;
        if (isConnected() && (t1Var = this.f7691g) != null) {
            return t1Var.b();
        }
        throw new RuntimeException("Failed to connect when checking package");
    }

    public void d(@NonNull c cVar) {
        p.k(cVar, "Connection progress callbacks cannot be null.");
        this.f7700p = cVar;
        f0(2, null);
    }

    public void disconnect() {
        this.C.incrementAndGet();
        synchronized (this.f7702r) {
            int size = this.f7702r.size();
            for (int i9 = 0; i9 < size; i9++) {
                ((c1) this.f7702r.get(i9)).d();
            }
            this.f7702r.clear();
        }
        synchronized (this.f7698n) {
            this.f7699o = null;
        }
        f0(1, null);
    }

    public boolean e() {
        return true;
    }

    public boolean f() {
        return false;
    }

    @WorkerThread
    public void i(@Nullable i iVar, @NonNull Set<Scope> set) {
        Bundle x10 = x();
        int i9 = this.f7707w;
        String str = this.f7709y;
        int i10 = com.google.android.gms.common.b.f7623a;
        Scope[] scopeArr = GetServiceRequest.f7659n;
        Bundle bundle = new Bundle();
        Feature[] featureArr = GetServiceRequest.f7660o;
        GetServiceRequest getServiceRequest = new GetServiceRequest(6, i9, i10, null, null, scopeArr, bundle, null, featureArr, featureArr, true, 0, false, str);
        getServiceRequest.f7664d = this.f7692h.getPackageName();
        getServiceRequest.f7667g = x10;
        if (set != null) {
            getServiceRequest.f7666f = (Scope[]) set.toArray(new Scope[0]);
        }
        if (f()) {
            Account r10 = r();
            if (r10 == null) {
                r10 = new Account(HuaweiApiClientImpl.DEFAULT_ACCOUNT, "com.google");
            }
            getServiceRequest.f7668h = r10;
            if (iVar != null) {
                getServiceRequest.f7665e = iVar.asBinder();
            }
        } else if (L()) {
            getServiceRequest.f7668h = r();
        }
        getServiceRequest.f7669i = E;
        getServiceRequest.f7670j = s();
        if (P()) {
            getServiceRequest.f7673m = true;
        }
        try {
            synchronized (this.f7698n) {
                l lVar = this.f7699o;
                if (lVar != null) {
                    lVar.j0(new d1(this, this.C.get()), getServiceRequest);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e10) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e10);
            N(3);
        } catch (RemoteException e11) {
            e = e11;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            K(8, null, null, this.C.get());
        } catch (SecurityException e12) {
            throw e12;
        } catch (RuntimeException e13) {
            e = e13;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            K(8, null, null, this.C.get());
        }
    }

    public boolean isConnected() {
        boolean z10;
        synchronized (this.f7697m) {
            z10 = this.f7704t == 4;
        }
        return z10;
    }

    public boolean isConnecting() {
        boolean z10;
        synchronized (this.f7697m) {
            int i9 = this.f7704t;
            z10 = true;
            if (i9 != 2 && i9 != 3) {
                z10 = false;
            }
        }
        return z10;
    }

    public void j(@NonNull e eVar) {
        eVar.a();
    }

    public int k() {
        return com.google.android.gms.common.b.f7623a;
    }

    @Nullable
    public final Feature[] l() {
        zzj zzjVar = this.B;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.f7806b;
    }

    @Nullable
    public String m() {
        return this.f7690f;
    }

    public void n() {
        int h10 = this.f7695k.h(this.f7692h, k());
        if (h10 != 0) {
            f0(1, null);
            O(new C0087d(), h10, null);
            return;
        }
        d(new C0087d());
    }

    protected final void o() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public abstract T p(@NonNull IBinder iBinder);

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean q() {
        return false;
    }

    @Nullable
    public Account r() {
        return null;
    }

    @NonNull
    public Feature[] s() {
        return E;
    }

    @Nullable
    protected Executor t() {
        return null;
    }

    @Nullable
    public Bundle u() {
        return null;
    }

    @NonNull
    public final Context v() {
        return this.f7692h;
    }

    public int w() {
        return this.f7707w;
    }

    @NonNull
    protected Bundle x() {
        return new Bundle();
    }

    @Nullable
    protected String y() {
        return null;
    }

    @NonNull
    protected Set<Scope> z() {
        return Collections.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(@NonNull Context context, @NonNull Looper looper, @NonNull g gVar, @NonNull com.google.android.gms.common.b bVar, int i9, @Nullable a aVar, @Nullable b bVar2, @Nullable String str) {
        this.f7690f = null;
        this.f7697m = new Object();
        this.f7698n = new Object();
        this.f7702r = new ArrayList();
        this.f7704t = 1;
        this.f7710z = null;
        this.A = false;
        this.B = null;
        this.C = new AtomicInteger(0);
        p.k(context, "Context must not be null");
        this.f7692h = context;
        p.k(looper, "Looper must not be null");
        this.f7693i = looper;
        p.k(gVar, "Supervisor must not be null");
        this.f7694j = gVar;
        p.k(bVar, "API availability must not be null");
        this.f7695k = bVar;
        this.f7696l = new b1(this, looper);
        this.f7707w = i9;
        this.f7705u = aVar;
        this.f7706v = bVar2;
        this.f7708x = str;
    }
}
