package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.internal.measurement.ic;
import com.google.android.gms.internal.measurement.nd;
import com.google.android.gms.internal.measurement.sc;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.DebugKt;
/* loaded from: classes2.dex */
public final class m6 extends u3 {

    /* renamed from: c  reason: collision with root package name */
    protected l6 f9635c;

    /* renamed from: d  reason: collision with root package name */
    private p4.s f9636d;

    /* renamed from: e  reason: collision with root package name */
    private final Set f9637e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f9638f;

    /* renamed from: g  reason: collision with root package name */
    private final AtomicReference f9639g;

    /* renamed from: h  reason: collision with root package name */
    private final Object f9640h;
    @GuardedBy("consentLock")

    /* renamed from: i  reason: collision with root package name */
    private p4.a f9641i;
    @GuardedBy("consentLock")

    /* renamed from: j  reason: collision with root package name */
    private int f9642j;

    /* renamed from: k  reason: collision with root package name */
    private final AtomicLong f9643k;

    /* renamed from: l  reason: collision with root package name */
    private long f9644l;

    /* renamed from: m  reason: collision with root package name */
    private int f9645m;

    /* renamed from: n  reason: collision with root package name */
    final q9 f9646n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f9647o;

    /* renamed from: p  reason: collision with root package name */
    private final j9 f9648p;

    /* JADX INFO: Access modifiers changed from: protected */
    public m6(n4 n4Var) {
        super(n4Var);
        this.f9637e = new CopyOnWriteArraySet();
        this.f9640h = new Object();
        this.f9647o = true;
        this.f9648p = new a6(this);
        this.f9639g = new AtomicReference();
        this.f9641i = new p4.a(null, null);
        this.f9642j = 100;
        this.f9644l = -1L;
        this.f9645m = 100;
        this.f9643k = new AtomicLong(0L);
        this.f9646n = new q9(n4Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void O(Boolean bool, boolean z10) {
        h();
        i();
        this.f9432a.b().q().b("Setting app measurement enabled (FE)", bool);
        this.f9432a.F().s(bool);
        if (z10) {
            x3 F = this.f9432a.F();
            n4 n4Var = F.f9432a;
            F.h();
            SharedPreferences.Editor edit = F.o().edit();
            if (bool != null) {
                edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                edit.remove("measurement_enabled_from_api");
            }
            edit.apply();
        }
        if (this.f9432a.p() || !(bool == null || bool.booleanValue())) {
            P();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void P() {
        h();
        String a10 = this.f9432a.F().f9963m.a();
        if (a10 != null) {
            if ("unset".equals(a10)) {
                M(PushConstants.EXTRA_APPLICATION_PENDING_INTENT, "_npa", null, this.f9432a.c().a());
            } else {
                M(PushConstants.EXTRA_APPLICATION_PENDING_INTENT, "_npa", Long.valueOf(true != ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(a10) ? 0L : 1L), this.f9432a.c().a());
            }
        }
        if (this.f9432a.o() && this.f9647o) {
            this.f9432a.b().q().a("Recording app launch after enabling measurement for the first time (FE)");
            f0();
            sc.b();
            if (this.f9432a.z().B(null, z2.f10037f0)) {
                this.f9432a.M().f9734d.a();
            }
            this.f9432a.a().z(new q5(this));
            return;
        }
        this.f9432a.b().q().a("Updating Scion state (FE)");
        this.f9432a.L().w();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void b0(m6 m6Var, p4.a aVar, p4.a aVar2) {
        boolean z10;
        zzah[] zzahVarArr = {zzah.ANALYTICS_STORAGE, zzah.AD_STORAGE};
        int i9 = 0;
        while (true) {
            if (i9 >= 2) {
                z10 = false;
                break;
            }
            zzah zzahVar = zzahVarArr[i9];
            if (!aVar2.i(zzahVar) && aVar.i(zzahVar)) {
                z10 = true;
                break;
            }
            i9++;
        }
        boolean l10 = aVar.l(aVar2, zzah.ANALYTICS_STORAGE, zzah.AD_STORAGE);
        if (z10 || l10) {
            m6Var.f9432a.B().v();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c0(m6 m6Var, p4.a aVar, int i9, long j10, boolean z10, boolean z11) {
        m6Var.h();
        m6Var.i();
        if (j10 <= m6Var.f9644l && p4.a.j(m6Var.f9645m, i9)) {
            m6Var.f9432a.b().u().b("Dropped out-of-date consent setting, proposed settings", aVar);
            return;
        }
        x3 F = m6Var.f9432a.F();
        n4 n4Var = F.f9432a;
        F.h();
        if (F.w(i9)) {
            SharedPreferences.Editor edit = F.o().edit();
            edit.putString("consent_settings", aVar.h());
            edit.putInt("consent_source", i9);
            edit.apply();
            m6Var.f9644l = j10;
            m6Var.f9645m = i9;
            m6Var.f9432a.L().t(z10);
            if (z11) {
                m6Var.f9432a.L().S(new AtomicReference());
                return;
            }
            return;
        }
        m6Var.f9432a.b().u().b("Lower precedence consent source ignored, proposed source", Integer.valueOf(i9));
    }

    protected final void A(String str, String str2, long j10, Bundle bundle, boolean z10, boolean z11, boolean z12, String str3) {
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                int i9 = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i9 < parcelableArr.length) {
                        Parcelable parcelable = parcelableArr[i9];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i9] = new Bundle((Bundle) parcelable);
                        }
                        i9++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i9 < list.size()) {
                        Object obj2 = list.get(i9);
                        if (obj2 instanceof Bundle) {
                            list.set(i9, new Bundle((Bundle) obj2));
                        }
                        i9++;
                    }
                }
            }
        }
        this.f9432a.a().z(new s5(this, str, str2, j10, bundle2, z10, z11, z12, str3));
    }

    final void B(String str, String str2, long j10, Object obj) {
        this.f9432a.a().z(new t5(this, str, str2, obj, j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void C(String str) {
        this.f9639g.set(str);
    }

    public final void D(Bundle bundle) {
        E(bundle, this.f9432a.c().a());
    }

    public final void E(Bundle bundle, long j10) {
        com.google.android.gms.common.internal.p.j(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            this.f9432a.b().w().a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        com.google.android.gms.common.internal.p.j(bundle2);
        p4.o.a(bundle2, "app_id", String.class, null);
        p4.o.a(bundle2, "origin", String.class, null);
        p4.o.a(bundle2, "name", String.class, null);
        p4.o.a(bundle2, "value", Object.class, null);
        p4.o.a(bundle2, "trigger_event_name", String.class, null);
        p4.o.a(bundle2, "trigger_timeout", Long.class, 0L);
        p4.o.a(bundle2, "timed_out_event_name", String.class, null);
        p4.o.a(bundle2, "timed_out_event_params", Bundle.class, null);
        p4.o.a(bundle2, "triggered_event_name", String.class, null);
        p4.o.a(bundle2, "triggered_event_params", Bundle.class, null);
        p4.o.a(bundle2, "time_to_live", Long.class, 0L);
        p4.o.a(bundle2, "expired_event_name", String.class, null);
        p4.o.a(bundle2, "expired_event_params", Bundle.class, null);
        com.google.android.gms.common.internal.p.f(bundle2.getString("name"));
        com.google.android.gms.common.internal.p.f(bundle2.getString("origin"));
        com.google.android.gms.common.internal.p.j(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j10);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        if (this.f9432a.N().n0(string) == 0) {
            if (this.f9432a.N().j0(string, obj) == 0) {
                Object p10 = this.f9432a.N().p(string, obj);
                if (p10 == null) {
                    this.f9432a.b().r().c("Unable to normalize conditional user property value", this.f9432a.D().f(string), obj);
                    return;
                }
                p4.o.b(bundle2, p10);
                long j11 = bundle2.getLong("trigger_timeout");
                if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name"))) {
                    this.f9432a.z();
                    if (j11 > 15552000000L || j11 < 1) {
                        this.f9432a.b().r().c("Invalid conditional user property timeout", this.f9432a.D().f(string), Long.valueOf(j11));
                        return;
                    }
                }
                long j12 = bundle2.getLong("time_to_live");
                this.f9432a.z();
                if (j12 <= 15552000000L && j12 >= 1) {
                    this.f9432a.a().z(new v5(this, bundle2));
                    return;
                } else {
                    this.f9432a.b().r().c("Invalid conditional user property time to live", this.f9432a.D().f(string), Long.valueOf(j12));
                    return;
                }
            }
            this.f9432a.b().r().c("Invalid conditional user property value", this.f9432a.D().f(string), obj);
            return;
        }
        this.f9432a.b().r().b("Invalid conditional user property name", this.f9432a.D().f(string));
    }

    public final void F(Bundle bundle, int i9, long j10) {
        i();
        String g10 = p4.a.g(bundle);
        if (g10 != null) {
            this.f9432a.b().x().b("Ignoring invalid consent setting", g10);
            this.f9432a.b().x().a("Valid consent values are 'granted', 'denied'");
        }
        G(p4.a.a(bundle), i9, j10);
    }

    public final void G(p4.a aVar, int i9, long j10) {
        p4.a aVar2;
        boolean z10;
        boolean z11;
        boolean z12;
        p4.a aVar3 = aVar;
        i();
        if (i9 != -10 && aVar.e() == null && aVar.f() == null) {
            this.f9432a.b().x().a("Discarding empty consent settings");
            return;
        }
        synchronized (this.f9640h) {
            aVar2 = this.f9641i;
            z10 = true;
            z11 = false;
            if (p4.a.j(i9, this.f9642j)) {
                boolean k10 = aVar3.k(this.f9641i);
                zzah zzahVar = zzah.ANALYTICS_STORAGE;
                if (aVar3.i(zzahVar) && !this.f9641i.i(zzahVar)) {
                    z11 = true;
                }
                aVar3 = aVar3.d(this.f9641i);
                this.f9641i = aVar3;
                this.f9642j = i9;
                z12 = z11;
                z11 = k10;
            } else {
                z10 = false;
                z12 = false;
            }
        }
        if (!z10) {
            this.f9432a.b().u().b("Ignoring lower-priority consent settings, proposed settings", aVar3);
            return;
        }
        long andIncrement = this.f9643k.getAndIncrement();
        if (z11) {
            this.f9639g.set(null);
            this.f9432a.a().A(new g6(this, aVar3, j10, i9, andIncrement, z12, aVar2));
            return;
        }
        h6 h6Var = new h6(this, aVar3, i9, andIncrement, z12, aVar2);
        if (i9 != 30 && i9 != -10) {
            this.f9432a.a().z(h6Var);
        } else {
            this.f9432a.a().A(h6Var);
        }
    }

    @WorkerThread
    public final void H(p4.s sVar) {
        p4.s sVar2;
        h();
        i();
        if (sVar != null && sVar != (sVar2 = this.f9636d)) {
            com.google.android.gms.common.internal.p.o(sVar2 == null, "EventInterceptor already set.");
        }
        this.f9636d = sVar;
    }

    public final void I(Boolean bool) {
        i();
        this.f9432a.a().z(new f6(this, bool));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void J(p4.a aVar) {
        h();
        boolean z10 = (aVar.i(zzah.ANALYTICS_STORAGE) && aVar.i(zzah.AD_STORAGE)) || this.f9432a.L().A();
        if (z10 != this.f9432a.p()) {
            this.f9432a.l(z10);
            x3 F = this.f9432a.F();
            n4 n4Var = F.f9432a;
            F.h();
            Boolean valueOf = F.o().contains("measurement_enabled_from_api") ? Boolean.valueOf(F.o().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z10 || valueOf == null || valueOf.booleanValue()) {
                O(Boolean.valueOf(z10), false);
            }
        }
    }

    public final void K(String str, String str2, Object obj, boolean z10) {
        L(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_ldl", obj, true, this.f9432a.c().a());
    }

    public final void L(String str, String str2, Object obj, boolean z10, long j10) {
        int i9;
        String str3 = str == null ? PushConstants.EXTRA_APPLICATION_PENDING_INTENT : str;
        if (z10) {
            i9 = this.f9432a.N().n0(str2);
        } else {
            k9 N = this.f9432a.N();
            if (N.R("user property", str2)) {
                if (N.N("user property", p4.r.f56740a, null, str2)) {
                    N.f9432a.z();
                    if (N.M("user property", 24, str2)) {
                        i9 = 0;
                    }
                } else {
                    i9 = 15;
                }
            }
            i9 = 6;
        }
        if (i9 != 0) {
            k9 N2 = this.f9432a.N();
            this.f9432a.z();
            this.f9432a.N().B(this.f9648p, null, i9, "_ev", N2.r(str2, 24, true), str2 != null ? str2.length() : 0);
        } else if (obj != null) {
            int j02 = this.f9432a.N().j0(str2, obj);
            if (j02 != 0) {
                k9 N3 = this.f9432a.N();
                this.f9432a.z();
                this.f9432a.N().B(this.f9648p, null, j02, "_ev", N3.r(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? obj.toString().length() : 0);
                return;
            }
            Object p10 = this.f9432a.N().p(str2, obj);
            if (p10 != null) {
                B(str3, str2, j10, p10);
            }
        } else {
            B(str3, str2, j10, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007e  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void M(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) {
        /*
            r8 = this;
            com.google.android.gms.common.internal.p.f(r9)
            com.google.android.gms.common.internal.p.f(r10)
            r8.h()
            r8.i()
            java.lang.String r0 = "allow_personalized_ads"
            boolean r0 = r0.equals(r10)
            java.lang.String r1 = "_npa"
            if (r0 == 0) goto L64
            boolean r0 = r11 instanceof java.lang.String
            if (r0 == 0) goto L52
            r0 = r11
            java.lang.String r0 = (java.lang.String) r0
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L52
            r10 = 1
            java.util.Locale r11 = java.util.Locale.ENGLISH
            java.lang.String r11 = r0.toLowerCase(r11)
            java.lang.String r0 = "false"
            boolean r11 = r0.equals(r11)
            r2 = 1
            if (r10 == r11) goto L37
            r10 = 0
            goto L38
        L37:
            r10 = r2
        L38:
            java.lang.Long r11 = java.lang.Long.valueOf(r10)
            com.google.android.gms.measurement.internal.n4 r10 = r8.f9432a
            com.google.android.gms.measurement.internal.x3 r10 = r10.F()
            com.google.android.gms.measurement.internal.w3 r10 = r10.f9963m
            long r4 = r11.longValue()
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 != 0) goto L4e
            java.lang.String r0 = "true"
        L4e:
            r10.b(r0)
            goto L61
        L52:
            if (r11 != 0) goto L64
            com.google.android.gms.measurement.internal.n4 r10 = r8.f9432a
            com.google.android.gms.measurement.internal.x3 r10 = r10.F()
            com.google.android.gms.measurement.internal.w3 r10 = r10.f9963m
            java.lang.String r0 = "unset"
            r10.b(r0)
        L61:
            r6 = r11
            r3 = r1
            goto L66
        L64:
            r3 = r10
            r6 = r11
        L66:
            com.google.android.gms.measurement.internal.n4 r10 = r8.f9432a
            boolean r10 = r10.o()
            if (r10 != 0) goto L7e
            com.google.android.gms.measurement.internal.n4 r9 = r8.f9432a
            com.google.android.gms.measurement.internal.j3 r9 = r9.b()
            com.google.android.gms.measurement.internal.h3 r9 = r9.v()
            java.lang.String r10 = "User property not set since app measurement is disabled"
            r9.a(r10)
            return
        L7e:
            com.google.android.gms.measurement.internal.n4 r10 = r8.f9432a
            boolean r10 = r10.r()
            if (r10 != 0) goto L87
            return
        L87:
            com.google.android.gms.measurement.internal.zzlc r10 = new com.google.android.gms.measurement.internal.zzlc
            r2 = r10
            r4 = r12
            r7 = r9
            r2.<init>(r3, r4, r6, r7)
            com.google.android.gms.measurement.internal.n4 r9 = r8.f9432a
            com.google.android.gms.measurement.internal.y7 r9 = r9.L()
            r9.y(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.m6.M(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    public final void N(p4.t tVar) {
        i();
        com.google.android.gms.common.internal.p.j(tVar);
        if (this.f9637e.remove(tVar)) {
            return;
        }
        this.f9432a.b().w().a("OnEventListener had not been registered");
    }

    public final int Q(String str) {
        com.google.android.gms.common.internal.p.f(str);
        this.f9432a.z();
        return 25;
    }

    public final Boolean R() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.f9432a.a().r(atomicReference, 15000L, "boolean test flag value", new y5(this, atomicReference));
    }

    public final Double S() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.f9432a.a().r(atomicReference, 15000L, "double test flag value", new e6(this, atomicReference));
    }

    public final Integer T() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.f9432a.a().r(atomicReference, 15000L, "int test flag value", new d6(this, atomicReference));
    }

    public final Long U() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.f9432a.a().r(atomicReference, 15000L, "long test flag value", new c6(this, atomicReference));
    }

    public final String V() {
        return (String) this.f9639g.get();
    }

    public final String W() {
        r6 r10 = this.f9432a.K().r();
        if (r10 != null) {
            return r10.f9806b;
        }
        return null;
    }

    public final String X() {
        r6 r10 = this.f9432a.K().r();
        if (r10 != null) {
            return r10.f9805a;
        }
        return null;
    }

    public final String Y() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.f9432a.a().r(atomicReference, 15000L, "String test flag value", new b6(this, atomicReference));
    }

    public final ArrayList Z(String str, String str2) {
        if (this.f9432a.a().C()) {
            this.f9432a.b().r().a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        this.f9432a.d();
        if (c.a()) {
            this.f9432a.b().r().a("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.f9432a.a().r(atomicReference, 5000L, "get conditional user properties", new x5(this, atomicReference, null, str, str2));
        List list = (List) atomicReference.get();
        if (list == null) {
            this.f9432a.b().r().b("Timed out waiting for get conditional user properties", null);
            return new ArrayList();
        }
        return k9.v(list);
    }

    public final Map a0(String str, String str2, boolean z10) {
        if (this.f9432a.a().C()) {
            this.f9432a.b().r().a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        this.f9432a.d();
        if (c.a()) {
            this.f9432a.b().r().a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.f9432a.a().r(atomicReference, 5000L, "get user properties", new z5(this, atomicReference, null, str, str2, z10));
        List<zzlc> list = (List) atomicReference.get();
        if (list == null) {
            this.f9432a.b().r().b("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z10));
            return Collections.emptyMap();
        }
        ArrayMap arrayMap = new ArrayMap(list.size());
        for (zzlc zzlcVar : list) {
            Object I = zzlcVar.I();
            if (I != null) {
                arrayMap.put(zzlcVar.zzb, I);
            }
        }
        return arrayMap;
    }

    @WorkerThread
    public final void f0() {
        h();
        i();
        if (this.f9432a.r()) {
            if (this.f9432a.z().B(null, z2.Z)) {
                g z10 = this.f9432a.z();
                z10.f9432a.d();
                Boolean t10 = z10.t("google_analytics_deferred_deep_link_enabled");
                if (t10 != null && t10.booleanValue()) {
                    this.f9432a.b().q().a("Deferred Deep Link feature enabled.");
                    this.f9432a.a().z(new Runnable() { // from class: com.google.android.gms.measurement.internal.p5
                        @Override // java.lang.Runnable
                        public final void run() {
                            m6 m6Var = m6.this;
                            m6Var.h();
                            if (!m6Var.f9432a.F().f9968r.b()) {
                                long a10 = m6Var.f9432a.F().f9969s.a();
                                m6Var.f9432a.F().f9969s.b(1 + a10);
                                m6Var.f9432a.z();
                                if (a10 >= 5) {
                                    m6Var.f9432a.b().w().a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                                    m6Var.f9432a.F().f9968r.a(true);
                                    return;
                                }
                                m6Var.f9432a.j();
                                return;
                            }
                            m6Var.f9432a.b().q().a("Deferred Deep Link already retrieved. Not fetching again.");
                        }
                    });
                }
            }
            this.f9432a.L().O();
            this.f9647o = false;
            x3 F = this.f9432a.F();
            F.h();
            String string = F.o().getString("previous_os_version", null);
            F.f9432a.A().k();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = F.o().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            this.f9432a.A().k();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            u(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_ou", bundle);
        }
    }

    @Override // com.google.android.gms.measurement.internal.u3
    protected final boolean n() {
        return false;
    }

    public final void o(String str, String str2, Bundle bundle) {
        long a10 = this.f9432a.c().a();
        com.google.android.gms.common.internal.p.f(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", a10);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        this.f9432a.a().z(new w5(this, bundle2));
    }

    public final void p() {
        if (!(this.f9432a.f().getApplicationContext() instanceof Application) || this.f9635c == null) {
            return;
        }
        ((Application) this.f9432a.f().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f9635c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void q(Bundle bundle) {
        if (bundle == null) {
            this.f9432a.F().f9973w.b(new Bundle());
            return;
        }
        Bundle a10 = this.f9432a.F().f9973w.a();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                if (this.f9432a.N().U(obj)) {
                    this.f9432a.N().B(this.f9648p, null, 27, null, null, 0);
                }
                this.f9432a.b().x().c("Invalid default event parameter type. Name, value", str, obj);
            } else if (k9.W(str)) {
                this.f9432a.b().x().b("Invalid default event parameter name. Name", str);
            } else if (obj == null) {
                a10.remove(str);
            } else {
                k9 N = this.f9432a.N();
                this.f9432a.z();
                if (N.P(RemoteMessageConst.MessageBody.PARAM, str, 100, obj)) {
                    this.f9432a.N().C(a10, str, obj);
                }
            }
        }
        this.f9432a.N();
        int m10 = this.f9432a.z().m();
        if (a10.size() > m10) {
            int i9 = 0;
            for (String str2 : new TreeSet(a10.keySet())) {
                i9++;
                if (i9 > m10) {
                    a10.remove(str2);
                }
            }
            this.f9432a.N().B(this.f9648p, null, 26, null, null, 0);
            this.f9432a.b().x().a("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        this.f9432a.F().f9973w.b(a10);
        this.f9432a.L().v(a10);
    }

    public final void r(String str, String str2, Bundle bundle) {
        s(str, str2, bundle, true, true, this.f9432a.c().a());
    }

    public final void s(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) {
        String str3 = str == null ? PushConstants.EXTRA_APPLICATION_PENDING_INTENT : str;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (str2 != "screen_view" && (str2 == null || !str2.equals("screen_view"))) {
            A(str3, str2, j10, bundle2, z11, !z11 || this.f9636d == null || k9.W(str2), z10, null);
        } else {
            this.f9432a.K().E(bundle2, j10);
        }
    }

    public final void t(String str, String str2, Bundle bundle, String str3) {
        n4.t();
        A(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, str2, this.f9432a.c().a(), bundle, false, true, true, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void u(String str, String str2, Bundle bundle) {
        h();
        v(str, str2, this.f9432a.c().a(), bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void v(String str, String str2, long j10, Bundle bundle) {
        h();
        w(str, str2, j10, bundle, true, this.f9636d == null || k9.W(str2), true, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void w(String str, String str2, long j10, Bundle bundle, boolean z10, boolean z11, boolean z12, String str3) {
        boolean z13;
        String str4;
        long j11;
        String str5;
        String str6;
        Bundle[] bundleArr;
        Class<?> cls;
        com.google.android.gms.common.internal.p.f(str);
        com.google.android.gms.common.internal.p.j(bundle);
        h();
        i();
        if (this.f9432a.o()) {
            List u10 = this.f9432a.B().u();
            if (u10 != null && !u10.contains(str2)) {
                this.f9432a.b().q().c("Dropping non-safelisted event. event name, origin", str2, str);
                return;
            }
            if (!this.f9638f) {
                this.f9638f = true;
                try {
                    if (!this.f9432a.s()) {
                        cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, this.f9432a.f().getClassLoader());
                    } else {
                        cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService");
                    }
                    try {
                        cls.getDeclaredMethod("initialize", Context.class).invoke(null, this.f9432a.f());
                    } catch (Exception e10) {
                        this.f9432a.b().w().b("Failed to invoke Tag Manager's initialize() method", e10);
                    }
                } catch (ClassNotFoundException unused) {
                    this.f9432a.b().u().a("Tag Manager is not found and thus will not be used");
                }
            }
            if ("_cmp".equals(str2) && bundle.containsKey("gclid")) {
                this.f9432a.d();
                M(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_lgclid", bundle.getString("gclid"), this.f9432a.c().a());
            }
            this.f9432a.d();
            if (z10 && k9.a0(str2)) {
                this.f9432a.N().z(bundle, this.f9432a.F().f9973w.a());
            }
            if (!z12) {
                this.f9432a.d();
                if (!"_iap".equals(str2)) {
                    k9 N = this.f9432a.N();
                    int i9 = 2;
                    if (N.R("event", str2)) {
                        if (N.N("event", p4.p.f56732a, p4.p.f56733b, str2)) {
                            N.f9432a.z();
                            if (N.M("event", 40, str2)) {
                                i9 = 0;
                            }
                        } else {
                            i9 = 13;
                        }
                    }
                    if (i9 != 0) {
                        this.f9432a.b().s().b("Invalid public event name. Event will not be logged (FE)", this.f9432a.D().d(str2));
                        k9 N2 = this.f9432a.N();
                        this.f9432a.z();
                        this.f9432a.N().B(this.f9648p, null, i9, "_ev", N2.r(str2, 40, true), str2 != null ? str2.length() : 0);
                        return;
                    }
                }
            }
            this.f9432a.d();
            r6 s10 = this.f9432a.K().s(false);
            if (s10 != null && !bundle.containsKey("_sc")) {
                s10.f9808d = true;
            }
            k9.y(s10, bundle, z10 && !z12);
            boolean equals = "am".equals(str);
            boolean W = k9.W(str2);
            if (!z10 || this.f9636d == null || W) {
                z13 = equals;
            } else if (!equals) {
                this.f9432a.b().q().c("Passing event to registered event handler (FE)", this.f9432a.D().d(str2), this.f9432a.D().b(bundle));
                com.google.android.gms.common.internal.p.j(this.f9636d);
                this.f9636d.a(str, str2, bundle, j10);
                return;
            } else {
                z13 = true;
            }
            if (this.f9432a.r()) {
                int k02 = this.f9432a.N().k0(str2);
                if (k02 != 0) {
                    this.f9432a.b().s().b("Invalid event name. Event will not be logged (FE)", this.f9432a.D().d(str2));
                    k9 N3 = this.f9432a.N();
                    this.f9432a.z();
                    this.f9432a.N().B(this.f9648p, str3, k02, "_ev", N3.r(str2, 40, true), str2 != null ? str2.length() : 0);
                    return;
                }
                Bundle v02 = this.f9432a.N().v0(str3, str2, bundle, e4.e.c("_o", "_sn", "_sc", "_si"), z12);
                com.google.android.gms.common.internal.p.j(v02);
                this.f9432a.d();
                if (this.f9432a.K().s(false) != null && "_ae".equals(str2)) {
                    m8 m8Var = this.f9432a.M().f9735e;
                    long b10 = m8Var.f9654d.f9432a.c().b();
                    long j12 = b10 - m8Var.f9652b;
                    m8Var.f9652b = b10;
                    if (j12 > 0) {
                        this.f9432a.N().w(v02, j12);
                    }
                }
                ic.b();
                if (this.f9432a.z().B(null, z2.f10035e0)) {
                    if (!DebugKt.DEBUG_PROPERTY_VALUE_AUTO.equals(str) && "_ssr".equals(str2)) {
                        k9 N4 = this.f9432a.N();
                        String string = v02.getString("_ffr");
                        if (e4.o.a(string)) {
                            string = null;
                        } else if (string != null) {
                            string = string.trim();
                        }
                        if (!p4.b0.a(string, N4.f9432a.F().f9970t.a())) {
                            N4.f9432a.F().f9970t.b(string);
                        } else {
                            N4.f9432a.b().q().a("Not logging duplicate session_start_with_rollout event");
                            return;
                        }
                    } else if ("_ae".equals(str2)) {
                        String a10 = this.f9432a.N().f9432a.F().f9970t.a();
                        if (!TextUtils.isEmpty(a10)) {
                            v02.putString("_ffr", a10);
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(v02);
                if (this.f9432a.F().f9965o.a() > 0 && this.f9432a.F().v(j10) && this.f9432a.F().f9967q.b()) {
                    this.f9432a.b().v().a("Current session is expired, remove the session number, ID, and engagement time");
                    str4 = "_ae";
                    j11 = 0;
                    M(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_sid", null, this.f9432a.c().a());
                    M(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_sno", null, this.f9432a.c().a());
                    M(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_se", null, this.f9432a.c().a());
                } else {
                    str4 = "_ae";
                    j11 = 0;
                }
                if (v02.getLong("extend_session", j11) == 1) {
                    this.f9432a.b().v().a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                    this.f9432a.M().f9734d.b(j10, true);
                }
                ArrayList arrayList2 = new ArrayList(v02.keySet());
                Collections.sort(arrayList2);
                int size = arrayList2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    String str7 = (String) arrayList2.get(i10);
                    if (str7 != null) {
                        this.f9432a.N();
                        Object obj = v02.get(str7);
                        if (obj instanceof Bundle) {
                            bundleArr = new Bundle[]{(Bundle) obj};
                        } else if (obj instanceof Parcelable[]) {
                            Parcelable[] parcelableArr = (Parcelable[]) obj;
                            bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
                        } else if (obj instanceof ArrayList) {
                            ArrayList arrayList3 = (ArrayList) obj;
                            bundleArr = (Bundle[]) arrayList3.toArray(new Bundle[arrayList3.size()]);
                        } else {
                            bundleArr = null;
                        }
                        if (bundleArr != null) {
                            v02.putParcelableArray(str7, bundleArr);
                        }
                    }
                }
                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                    Bundle bundle2 = (Bundle) arrayList.get(i11);
                    if (i11 != 0) {
                        str6 = "_ep";
                        str5 = str;
                    } else {
                        str5 = str;
                        str6 = str2;
                    }
                    bundle2.putString("_o", str5);
                    if (z11) {
                        bundle2 = this.f9432a.N().u0(bundle2);
                    }
                    Bundle bundle3 = bundle2;
                    this.f9432a.L().o(new zzaw(str6, new zzau(bundle3), str, j10), str3);
                    if (!z13) {
                        for (p4.t tVar : this.f9637e) {
                            tVar.a(str, str2, new Bundle(bundle3), j10);
                        }
                    }
                }
                this.f9432a.d();
                if (this.f9432a.K().s(false) == null || !str4.equals(str2)) {
                    return;
                }
                this.f9432a.M().f9735e.d(true, true, this.f9432a.c().b());
                return;
            }
            return;
        }
        this.f9432a.b().q().a("Event not sent since app measurement is disabled");
    }

    public final void x(p4.t tVar) {
        i();
        com.google.android.gms.common.internal.p.j(tVar);
        if (this.f9637e.add(tVar)) {
            return;
        }
        this.f9432a.b().w().a("OnEventListener already registered");
    }

    public final void y(long j10) {
        this.f9639g.set(null);
        this.f9432a.a().z(new u5(this, j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void z(long j10, boolean z10) {
        h();
        i();
        this.f9432a.b().q().a("Resetting analytics data (FE)");
        o8 M = this.f9432a.M();
        M.h();
        M.f9735e.a();
        nd.b();
        if (this.f9432a.z().B(null, z2.f10067u0)) {
            this.f9432a.B().v();
        }
        boolean o10 = this.f9432a.o();
        x3 F = this.f9432a.F();
        F.f9955e.b(j10);
        if (!TextUtils.isEmpty(F.f9432a.F().f9970t.a())) {
            F.f9970t.b(null);
        }
        sc.b();
        g z11 = F.f9432a.z();
        y2 y2Var = z2.f10037f0;
        if (z11.B(null, y2Var)) {
            F.f9965o.b(0L);
        }
        if (!F.f9432a.z().E()) {
            F.t(!o10);
        }
        F.f9971u.b(null);
        F.f9972v.b(0L);
        F.f9973w.b(null);
        if (z10) {
            this.f9432a.L().q();
        }
        sc.b();
        if (this.f9432a.z().B(null, y2Var)) {
            this.f9432a.M().f9734d.a();
        }
        this.f9647o = !o10;
    }
}
