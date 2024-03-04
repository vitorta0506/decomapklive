package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.ic;
import com.google.android.gms.internal.measurement.zzcl;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.DebugKt;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class n4 implements i5 {
    private static volatile n4 H;
    private volatile Boolean A;
    protected Boolean B;
    protected Boolean C;
    private volatile boolean D;
    private int E;
    final long G;

    /* renamed from: a  reason: collision with root package name */
    private final Context f9670a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9671b;

    /* renamed from: c  reason: collision with root package name */
    private final String f9672c;

    /* renamed from: d  reason: collision with root package name */
    private final String f9673d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f9674e;

    /* renamed from: f  reason: collision with root package name */
    private final c f9675f;

    /* renamed from: g  reason: collision with root package name */
    private final g f9676g;

    /* renamed from: h  reason: collision with root package name */
    private final x3 f9677h;

    /* renamed from: i  reason: collision with root package name */
    private final j3 f9678i;

    /* renamed from: j  reason: collision with root package name */
    private final l4 f9679j;

    /* renamed from: k  reason: collision with root package name */
    private final o8 f9680k;

    /* renamed from: l  reason: collision with root package name */
    private final k9 f9681l;

    /* renamed from: m  reason: collision with root package name */
    private final e3 f9682m;

    /* renamed from: n  reason: collision with root package name */
    private final e4.d f9683n;

    /* renamed from: o  reason: collision with root package name */
    private final y6 f9684o;

    /* renamed from: p  reason: collision with root package name */
    private final m6 f9685p;

    /* renamed from: q  reason: collision with root package name */
    private final x1 f9686q;

    /* renamed from: r  reason: collision with root package name */
    private final p6 f9687r;

    /* renamed from: s  reason: collision with root package name */
    private final String f9688s;

    /* renamed from: t  reason: collision with root package name */
    private d3 f9689t;

    /* renamed from: u  reason: collision with root package name */
    private y7 f9690u;

    /* renamed from: v  reason: collision with root package name */
    private o f9691v;

    /* renamed from: w  reason: collision with root package name */
    private b3 f9692w;

    /* renamed from: y  reason: collision with root package name */
    private Boolean f9694y;

    /* renamed from: z  reason: collision with root package name */
    private long f9695z;

    /* renamed from: x  reason: collision with root package name */
    private boolean f9693x = false;
    private final AtomicInteger F = new AtomicInteger(0);

    n4(l5 l5Var) {
        long a10;
        Bundle bundle;
        boolean z10 = false;
        com.google.android.gms.common.internal.p.j(l5Var);
        Context context = l5Var.f9601a;
        c cVar = new c(context);
        this.f9675f = cVar;
        w2.f9932a = cVar;
        this.f9670a = context;
        this.f9671b = l5Var.f9602b;
        this.f9672c = l5Var.f9603c;
        this.f9673d = l5Var.f9604d;
        this.f9674e = l5Var.f9608h;
        this.A = l5Var.f9605e;
        this.f9688s = l5Var.f9610j;
        this.D = true;
        zzcl zzclVar = l5Var.f9607g;
        if (zzclVar != null && (bundle = zzclVar.zzg) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.B = (Boolean) obj;
            }
            Object obj2 = zzclVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.C = (Boolean) obj2;
            }
        }
        com.google.android.gms.internal.measurement.w6.e(context);
        e4.d c10 = e4.g.c();
        this.f9683n = c10;
        Long l10 = l5Var.f9609i;
        if (l10 != null) {
            a10 = l10.longValue();
        } else {
            a10 = c10.a();
        }
        this.G = a10;
        this.f9676g = new g(this);
        x3 x3Var = new x3(this);
        x3Var.l();
        this.f9677h = x3Var;
        j3 j3Var = new j3(this);
        j3Var.l();
        this.f9678i = j3Var;
        k9 k9Var = new k9(this);
        k9Var.l();
        this.f9681l = k9Var;
        this.f9682m = new e3(new k5(l5Var, this));
        this.f9686q = new x1(this);
        y6 y6Var = new y6(this);
        y6Var.j();
        this.f9684o = y6Var;
        m6 m6Var = new m6(this);
        m6Var.j();
        this.f9685p = m6Var;
        o8 o8Var = new o8(this);
        o8Var.j();
        this.f9680k = o8Var;
        p6 p6Var = new p6(this);
        p6Var.l();
        this.f9687r = p6Var;
        l4 l4Var = new l4(this);
        l4Var.l();
        this.f9679j = l4Var;
        zzcl zzclVar2 = l5Var.f9607g;
        z10 = (zzclVar2 == null || zzclVar2.zzb == 0) ? true : true;
        if (context.getApplicationContext() instanceof Application) {
            m6 I = I();
            if (I.f9432a.f9670a.getApplicationContext() instanceof Application) {
                Application application = (Application) I.f9432a.f9670a.getApplicationContext();
                if (I.f9635c == null) {
                    I.f9635c = new l6(I, null);
                }
                if (z10) {
                    application.unregisterActivityLifecycleCallbacks(I.f9635c);
                    application.registerActivityLifecycleCallbacks(I.f9635c);
                    I.f9432a.b().v().a("Registered activity lifecycle callback");
                }
            }
        } else {
            b().w().a("Application context is not an Application");
        }
        l4Var.z(new m4(this, l5Var));
    }

    public static n4 H(Context context, zzcl zzclVar, Long l10) {
        Bundle bundle;
        if (zzclVar != null && (zzclVar.zze == null || zzclVar.zzf == null)) {
            zzclVar = new zzcl(zzclVar.zza, zzclVar.zzb, zzclVar.zzc, zzclVar.zzd, null, null, zzclVar.zzg, null);
        }
        com.google.android.gms.common.internal.p.j(context);
        com.google.android.gms.common.internal.p.j(context.getApplicationContext());
        if (H == null) {
            synchronized (n4.class) {
                if (H == null) {
                    H = new n4(new l5(context, zzclVar, l10));
                }
            }
        } else if (zzclVar != null && (bundle = zzclVar.zzg) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            com.google.android.gms.common.internal.p.j(H);
            H.A = Boolean.valueOf(zzclVar.zzg.getBoolean("dataCollectionDefaultEnabled"));
        }
        com.google.android.gms.common.internal.p.j(H);
        return H;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void e(n4 n4Var, l5 l5Var) {
        n4Var.a().h();
        n4Var.f9676g.w();
        o oVar = new o(n4Var);
        oVar.l();
        n4Var.f9691v = oVar;
        b3 b3Var = new b3(n4Var, l5Var.f9606f);
        b3Var.j();
        n4Var.f9692w = b3Var;
        d3 d3Var = new d3(n4Var);
        d3Var.j();
        n4Var.f9689t = d3Var;
        y7 y7Var = new y7(n4Var);
        y7Var.j();
        n4Var.f9690u = y7Var;
        n4Var.f9681l.m();
        n4Var.f9677h.m();
        n4Var.f9692w.k();
        h3 u10 = n4Var.b().u();
        n4Var.f9676g.q();
        u10.b("App measurement initialized, version", 73000L);
        n4Var.b().u().a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String s10 = b3Var.s();
        if (TextUtils.isEmpty(n4Var.f9671b)) {
            if (n4Var.N().T(s10)) {
                n4Var.b().u().a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                n4Var.b().u().a("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(s10)));
            }
        }
        n4Var.b().q().a("Debug-level message logging enabled");
        if (n4Var.E != n4Var.F.get()) {
            n4Var.b().r().c("Not all components initialized", Integer.valueOf(n4Var.E), Integer.valueOf(n4Var.F.get()));
        }
        n4Var.f9693x = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void t() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    private static final void u(g5 g5Var) {
        if (g5Var == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static final void v(u3 u3Var) {
        if (u3Var != null) {
            if (!u3Var.m()) {
                throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(u3Var.getClass())));
            }
            return;
        }
        throw new IllegalStateException("Component not created");
    }

    private static final void w(h5 h5Var) {
        if (h5Var != null) {
            if (!h5Var.n()) {
                throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(h5Var.getClass())));
            }
            return;
        }
        throw new IllegalStateException("Component not created");
    }

    public final o A() {
        w(this.f9691v);
        return this.f9691v;
    }

    public final b3 B() {
        v(this.f9692w);
        return this.f9692w;
    }

    public final d3 C() {
        v(this.f9689t);
        return this.f9689t;
    }

    public final e3 D() {
        return this.f9682m;
    }

    public final j3 E() {
        j3 j3Var = this.f9678i;
        if (j3Var == null || !j3Var.n()) {
            return null;
        }
        return j3Var;
    }

    public final x3 F() {
        u(this.f9677h);
        return this.f9677h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final l4 G() {
        return this.f9679j;
    }

    public final m6 I() {
        v(this.f9685p);
        return this.f9685p;
    }

    public final p6 J() {
        w(this.f9687r);
        return this.f9687r;
    }

    public final y6 K() {
        v(this.f9684o);
        return this.f9684o;
    }

    public final y7 L() {
        v(this.f9690u);
        return this.f9690u;
    }

    public final o8 M() {
        v(this.f9680k);
        return this.f9680k;
    }

    public final k9 N() {
        u(this.f9681l);
        return this.f9681l;
    }

    public final String O() {
        return this.f9671b;
    }

    public final String P() {
        return this.f9672c;
    }

    public final String Q() {
        return this.f9673d;
    }

    public final String R() {
        return this.f9688s;
    }

    @Override // com.google.android.gms.measurement.internal.i5
    public final l4 a() {
        w(this.f9679j);
        return this.f9679j;
    }

    @Override // com.google.android.gms.measurement.internal.i5
    public final j3 b() {
        w(this.f9678i);
        return this.f9678i;
    }

    @Override // com.google.android.gms.measurement.internal.i5
    public final e4.d c() {
        return this.f9683n;
    }

    @Override // com.google.android.gms.measurement.internal.i5
    public final c d() {
        return this.f9675f;
    }

    @Override // com.google.android.gms.measurement.internal.i5
    public final Context f() {
        return this.f9670a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g() {
        this.F.incrementAndGet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void h(String str, int i9, Throwable th2, byte[] bArr, Map map) {
        List<ResolveInfo> queryIntentActivities;
        if (i9 != 200 && i9 != 204) {
            if (i9 == 304) {
                i9 = 304;
            }
            b().w().c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i9), th2);
        }
        if (th2 == null) {
            F().f9968r.a(true);
            if (bArr != null && bArr.length != 0) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    String optString = jSONObject.optString("deeplink", "");
                    String optString2 = jSONObject.optString("gclid", "");
                    double optDouble = jSONObject.optDouble("timestamp", 0.0d);
                    if (TextUtils.isEmpty(optString)) {
                        b().q().a("Deferred Deep Link is empty.");
                        return;
                    }
                    k9 N = N();
                    n4 n4Var = N.f9432a;
                    if (!TextUtils.isEmpty(optString) && (queryIntentActivities = N.f9432a.f9670a.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0)) != null && !queryIntentActivities.isEmpty()) {
                        Bundle bundle = new Bundle();
                        bundle.putString("gclid", optString2);
                        bundle.putString("_cis", "ddp");
                        this.f9685p.u(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_cmp", bundle);
                        k9 N2 = N();
                        if (TextUtils.isEmpty(optString)) {
                            return;
                        }
                        try {
                            SharedPreferences.Editor edit = N2.f9432a.f9670a.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                            edit.putString("deeplink", optString);
                            edit.putLong("timestamp", Double.doubleToRawLongBits(optDouble));
                            if (edit.commit()) {
                                N2.f9432a.f9670a.sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
                                return;
                            }
                            return;
                        } catch (RuntimeException e10) {
                            N2.f9432a.b().r().b("Failed to persist Deferred Deep Link. exception", e10);
                            return;
                        }
                    }
                    b().w().c("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                    return;
                } catch (JSONException e11) {
                    b().r().b("Failed to parse the Deferred Deep Link response. exception", e11);
                    return;
                }
            }
            b().q().a("Deferred Deep Link response empty.");
            return;
        }
        b().w().c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i9), th2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i() {
        this.E++;
    }

    @WorkerThread
    public final void j() {
        a().h();
        w(J());
        String s10 = B().s();
        Pair p10 = F().p(s10);
        if (this.f9676g.A() && !((Boolean) p10.second).booleanValue() && !TextUtils.isEmpty((CharSequence) p10.first)) {
            p6 J = J();
            J.k();
            ConnectivityManager connectivityManager = (ConnectivityManager) J.f9432a.f9670a.getSystemService("connectivity");
            NetworkInfo networkInfo = null;
            if (connectivityManager != null) {
                try {
                    networkInfo = connectivityManager.getActiveNetworkInfo();
                } catch (SecurityException unused) {
                }
            }
            if (networkInfo != null && networkInfo.isConnected()) {
                k9 N = N();
                B().f9432a.f9676g.q();
                URL s11 = N.s(73000L, s10, (String) p10.first, F().f9969s.a() - 1);
                if (s11 != null) {
                    p6 J2 = J();
                    p4.m mVar = new p4.m(this);
                    J2.h();
                    J2.k();
                    com.google.android.gms.common.internal.p.j(s11);
                    com.google.android.gms.common.internal.p.j(mVar);
                    J2.f9432a.a().y(new o6(J2, s10, s11, null, null, mVar, null));
                    return;
                }
                return;
            }
            b().w().a("Network is not available for Deferred Deep Link request. Skipping");
            return;
        }
        b().q().a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void k(boolean z10) {
        this.A = Boolean.valueOf(z10);
    }

    @WorkerThread
    public final void l(boolean z10) {
        a().h();
        this.D = z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void m(zzcl zzclVar) {
        p4.a aVar;
        a().h();
        p4.a q10 = F().q();
        x3 F = F();
        n4 n4Var = F.f9432a;
        F.h();
        int i9 = 100;
        int i10 = F.o().getInt("consent_source", 100);
        g gVar = this.f9676g;
        n4 n4Var2 = gVar.f9432a;
        Boolean t10 = gVar.t("google_analytics_default_allow_ad_storage");
        g gVar2 = this.f9676g;
        n4 n4Var3 = gVar2.f9432a;
        Boolean t11 = gVar2.t("google_analytics_default_allow_analytics_storage");
        if ((t10 != null || t11 != null) && F().w(-10)) {
            aVar = new p4.a(t10, t11);
            i9 = -10;
        } else {
            if (!TextUtils.isEmpty(B().t()) && (i10 == 0 || i10 == 30 || i10 == 10 || i10 == 30 || i10 == 30 || i10 == 40)) {
                I().G(p4.a.f56725b, -10, this.G);
            } else if (TextUtils.isEmpty(B().t()) && zzclVar != null && zzclVar.zzg != null && F().w(30)) {
                aVar = p4.a.a(zzclVar.zzg);
                if (!aVar.equals(p4.a.f56725b)) {
                    i9 = 30;
                }
            }
            aVar = null;
        }
        if (aVar != null) {
            I().G(aVar, i9, this.G);
            q10 = aVar;
        }
        I().J(q10);
        if (F().f9955e.a() == 0) {
            b().v().b("Persisting first open", Long.valueOf(this.G));
            F().f9955e.b(this.G);
        }
        I().f9646n.c();
        if (!r()) {
            if (o()) {
                if (!N().S("android.permission.INTERNET")) {
                    b().r().a("App is missing INTERNET permission");
                }
                if (!N().S("android.permission.ACCESS_NETWORK_STATE")) {
                    b().r().a("App is missing ACCESS_NETWORK_STATE permission");
                }
                if (!g4.c.a(this.f9670a).f() && !this.f9676g.G()) {
                    if (!k9.Y(this.f9670a)) {
                        b().r().a("AppMeasurementReceiver not registered/enabled");
                    }
                    if (!k9.Z(this.f9670a, false)) {
                        b().r().a("AppMeasurementService not registered/enabled");
                    }
                }
                b().r().a("Uploading is not possible. App measurement disabled");
            }
        } else {
            if (!TextUtils.isEmpty(B().t()) || !TextUtils.isEmpty(B().r())) {
                k9 N = N();
                String t12 = B().t();
                x3 F2 = F();
                F2.h();
                String string = F2.o().getString("gmp_app_id", null);
                String r10 = B().r();
                x3 F3 = F();
                F3.h();
                if (N.b0(t12, string, r10, F3.o().getString("admob_app_id", null))) {
                    b().u().a("Rechecking which service to use due to a GMP App Id change");
                    x3 F4 = F();
                    F4.h();
                    Boolean r11 = F4.r();
                    SharedPreferences.Editor edit = F4.o().edit();
                    edit.clear();
                    edit.apply();
                    if (r11 != null) {
                        F4.s(r11);
                    }
                    C().q();
                    this.f9690u.Q();
                    this.f9690u.P();
                    F().f9955e.b(this.G);
                    F().f9957g.b(null);
                }
                x3 F5 = F();
                String t13 = B().t();
                F5.h();
                SharedPreferences.Editor edit2 = F5.o().edit();
                edit2.putString("gmp_app_id", t13);
                edit2.apply();
                x3 F6 = F();
                String r12 = B().r();
                F6.h();
                SharedPreferences.Editor edit3 = F6.o().edit();
                edit3.putString("admob_app_id", r12);
                edit3.apply();
            }
            if (!F().q().i(zzah.ANALYTICS_STORAGE)) {
                F().f9957g.b(null);
            }
            I().C(F().f9957g.a());
            ic.b();
            if (this.f9676g.B(null, z2.f10035e0)) {
                try {
                    N().f9432a.f9670a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                } catch (ClassNotFoundException unused) {
                    if (!TextUtils.isEmpty(F().f9970t.a())) {
                        b().w().a("Remote config removed with active feature rollouts");
                        F().f9970t.b(null);
                    }
                }
            }
            if (!TextUtils.isEmpty(B().t()) || !TextUtils.isEmpty(B().r())) {
                boolean o10 = o();
                if (!F().u() && !this.f9676g.E()) {
                    F().t(!o10);
                }
                if (o10) {
                    I().f0();
                }
                M().f9734d.a();
                L().S(new AtomicReference());
                L().v(F().f9973w.a());
            }
        }
        F().f9964n.a(true);
    }

    @WorkerThread
    public final boolean n() {
        return this.A != null && this.A.booleanValue();
    }

    @WorkerThread
    public final boolean o() {
        return x() == 0;
    }

    @WorkerThread
    public final boolean p() {
        a().h();
        return this.D;
    }

    public final boolean q() {
        return TextUtils.isEmpty(this.f9671b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final boolean r() {
        if (this.f9693x) {
            a().h();
            Boolean bool = this.f9694y;
            if (bool == null || this.f9695z == 0 || (!bool.booleanValue() && Math.abs(this.f9683n.b() - this.f9695z) > 1000)) {
                this.f9695z = this.f9683n.b();
                boolean z10 = true;
                Boolean valueOf = Boolean.valueOf(N().S("android.permission.INTERNET") && N().S("android.permission.ACCESS_NETWORK_STATE") && (g4.c.a(this.f9670a).f() || this.f9676g.G() || (k9.Y(this.f9670a) && k9.Z(this.f9670a, false))));
                this.f9694y = valueOf;
                if (valueOf.booleanValue()) {
                    if (!N().L(B().t(), B().r()) && TextUtils.isEmpty(B().r())) {
                        z10 = false;
                    }
                    this.f9694y = Boolean.valueOf(z10);
                }
            }
            return this.f9694y.booleanValue();
        }
        throw new IllegalStateException("AppMeasurement is not initialized");
    }

    public final boolean s() {
        return this.f9674e;
    }

    @WorkerThread
    public final int x() {
        a().h();
        if (this.f9676g.E()) {
            return 1;
        }
        Boolean bool = this.C;
        if (bool == null || !bool.booleanValue()) {
            a().h();
            if (this.D) {
                Boolean r10 = F().r();
                if (r10 != null) {
                    return r10.booleanValue() ? 0 : 3;
                }
                g gVar = this.f9676g;
                c cVar = gVar.f9432a.f9675f;
                Boolean t10 = gVar.t("firebase_analytics_collection_enabled");
                if (t10 != null) {
                    return t10.booleanValue() ? 0 : 4;
                }
                Boolean bool2 = this.B;
                return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (this.A == null || this.A.booleanValue()) ? 0 : 7;
            }
            return 8;
        }
        return 2;
    }

    public final x1 y() {
        x1 x1Var = this.f9686q;
        if (x1Var != null) {
            return x1Var;
        }
        throw new IllegalStateException("Component not created");
    }

    public final g z() {
        return this.f9676g;
    }
}
