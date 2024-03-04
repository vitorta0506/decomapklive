package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.measurement.nd;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import kotlinx.coroutines.DebugKt;
/* loaded from: classes2.dex */
final class a5 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzaw f9263a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9264b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f5 f9265c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a5(f5 f5Var, zzaw zzawVar, String str) {
        this.f9265c = f5Var;
        this.f9263a = zzawVar;
        this.f9264b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        d9 d9Var;
        d9 d9Var2;
        byte[] bArr;
        d9 d9Var3;
        i9 i9Var;
        j5 j5Var;
        com.google.android.gms.internal.measurement.s4 s4Var;
        String str;
        Bundle bundle;
        com.google.android.gms.internal.measurement.v4 v4Var;
        String str2;
        q c10;
        long j10;
        d9Var = this.f9265c.f9403a;
        d9Var.e();
        d9Var2 = this.f9265c.f9403a;
        q6 d02 = d9Var2.d0();
        zzaw zzawVar = this.f9263a;
        String str3 = this.f9264b;
        d02.h();
        n4.t();
        com.google.android.gms.common.internal.p.j(zzawVar);
        com.google.android.gms.common.internal.p.f(str3);
        if (!d02.f9432a.z().B(str3, z2.U)) {
            d02.f9432a.b().q().b("Generating ScionPayload disabled. packageName", str3);
            return new byte[0];
        } else if (!"_iap".equals(zzawVar.zza) && !"_iapx".equals(zzawVar.zza)) {
            d02.f9432a.b().q().c("Generating a payload for this event is not available. package_name, event_name", str3, zzawVar.zza);
            return null;
        } else {
            com.google.android.gms.internal.measurement.s4 w6 = com.google.android.gms.internal.measurement.u4.w();
            d02.f9855b.W().e0();
            try {
                j5 R = d02.f9855b.W().R(str3);
                if (R == null) {
                    d02.f9432a.b().q().b("Log and bundle not available. package_name", str3);
                    bArr = new byte[0];
                    d9Var3 = d02.f9855b;
                } else if (!R.J()) {
                    d02.f9432a.b().q().b("Log and bundle disabled. package_name", str3);
                    bArr = new byte[0];
                    d9Var3 = d02.f9855b;
                } else {
                    com.google.android.gms.internal.measurement.v4 L1 = com.google.android.gms.internal.measurement.w4.L1();
                    L1.Y(1);
                    L1.T("android");
                    if (!TextUtils.isEmpty(R.d0())) {
                        L1.u(R.d0());
                    }
                    if (!TextUtils.isEmpty(R.f0())) {
                        L1.w((String) com.google.android.gms.common.internal.p.j(R.f0()));
                    }
                    if (!TextUtils.isEmpty(R.g0())) {
                        L1.x((String) com.google.android.gms.common.internal.p.j(R.g0()));
                    }
                    if (R.L() != -2147483648L) {
                        L1.y((int) R.L());
                    }
                    L1.P(R.W());
                    L1.H(R.U());
                    String i02 = R.i0();
                    String b02 = R.b0();
                    if (!TextUtils.isEmpty(i02)) {
                        L1.O(i02);
                    } else if (!TextUtils.isEmpty(b02)) {
                        L1.t(b02);
                    }
                    p4.a V = d02.f9855b.V(str3);
                    L1.D(R.T());
                    if (d02.f9432a.o() && d02.f9432a.z().C(L1.m0()) && V.i(zzah.AD_STORAGE) && !TextUtils.isEmpty(null)) {
                        L1.G(null);
                    }
                    L1.C(V.h());
                    if (V.i(zzah.AD_STORAGE) && R.I()) {
                        Pair n9 = d02.f9855b.e0().n(R.d0(), V);
                        if (R.I() && !TextUtils.isEmpty((CharSequence) n9.first)) {
                            try {
                                L1.Z(q6.e((String) n9.first, Long.toString(zzawVar.zzd)));
                                Object obj = n9.second;
                                if (obj != null) {
                                    L1.R(((Boolean) obj).booleanValue());
                                }
                            } catch (SecurityException e10) {
                                d02.f9432a.b().q().b("Resettable device id encryption failed", e10.getMessage());
                                bArr = new byte[0];
                                d9Var3 = d02.f9855b;
                            }
                        }
                    }
                    d02.f9432a.A().k();
                    L1.E(Build.MODEL);
                    d02.f9432a.A().k();
                    L1.S(Build.VERSION.RELEASE);
                    L1.g0((int) d02.f9432a.A().p());
                    L1.k0(d02.f9432a.A().q());
                    try {
                        if (V.i(zzah.ANALYTICS_STORAGE) && R.e0() != null) {
                            L1.v(q6.e((String) com.google.android.gms.common.internal.p.j(R.e0()), Long.toString(zzawVar.zzd)));
                        }
                        if (!TextUtils.isEmpty(R.h0())) {
                            L1.N((String) com.google.android.gms.common.internal.p.j(R.h0()));
                        }
                        String d03 = R.d0();
                        List c02 = d02.f9855b.W().c0(d03);
                        Iterator it = c02.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                i9Var = null;
                                break;
                            }
                            i9Var = (i9) it.next();
                            if ("_lte".equals(i9Var.f9494c)) {
                                break;
                            }
                        }
                        if (i9Var == null || i9Var.f9496e == null) {
                            i9 i9Var2 = new i9(d03, DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_lte", d02.f9432a.c().a(), 0L);
                            c02.add(i9Var2);
                            d02.f9855b.W().x(i9Var2);
                        }
                        g9 g02 = d02.f9855b.g0();
                        g02.f9432a.b().v().a("Checking account type status for ad personalization signals");
                        if (g02.f9432a.A().s()) {
                            String d04 = R.d0();
                            com.google.android.gms.common.internal.p.j(d04);
                            if (R.I() && g02.f9855b.a0().B(d04)) {
                                g02.f9432a.b().q().a("Turning off ad personalization due to account type");
                                Iterator it2 = c02.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        break;
                                    } else if ("_npa".equals(((i9) it2.next()).f9494c)) {
                                        it2.remove();
                                        break;
                                    }
                                }
                                c02.add(new i9(d04, DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_npa", g02.f9432a.c().a(), 1L));
                            }
                        }
                        com.google.android.gms.internal.measurement.f5[] f5VarArr = new com.google.android.gms.internal.measurement.f5[c02.size()];
                        for (int i9 = 0; i9 < c02.size(); i9++) {
                            com.google.android.gms.internal.measurement.e5 z10 = com.google.android.gms.internal.measurement.f5.z();
                            z10.w(((i9) c02.get(i9)).f9494c);
                            z10.x(((i9) c02.get(i9)).f9495d);
                            d02.f9855b.g0().K(z10, ((i9) c02.get(i9)).f9496e);
                            f5VarArr[i9] = (com.google.android.gms.internal.measurement.f5) z10.o();
                        }
                        L1.D0(Arrays.asList(f5VarArr));
                        k3 b10 = k3.b(zzawVar);
                        d02.f9432a.N().z(b10.f9568d, d02.f9855b.W().Q(str3));
                        d02.f9432a.N().A(b10, d02.f9432a.z().n(str3));
                        Bundle bundle2 = b10.f9568d;
                        bundle2.putLong("_c", 1L);
                        d02.f9432a.b().q().a("Marking in-app purchase as real-time");
                        bundle2.putLong("_r", 1L);
                        bundle2.putString("_o", zzawVar.zzc);
                        if (d02.f9432a.N().T(L1.m0())) {
                            d02.f9432a.N().C(bundle2, "_dbg", 1L);
                            d02.f9432a.N().C(bundle2, "_r", 1L);
                        }
                        q V2 = d02.f9855b.W().V(str3, zzawVar.zza);
                        if (V2 == null) {
                            v4Var = L1;
                            j5Var = R;
                            s4Var = w6;
                            str = str3;
                            bundle = bundle2;
                            str2 = null;
                            c10 = new q(str3, zzawVar.zza, 0L, 0L, 0L, zzawVar.zzd, 0L, null, null, null, null);
                            j10 = 0;
                        } else {
                            j5Var = R;
                            s4Var = w6;
                            str = str3;
                            bundle = bundle2;
                            v4Var = L1;
                            str2 = null;
                            long j11 = V2.f9766f;
                            c10 = V2.c(zzawVar.zzd);
                            j10 = j11;
                        }
                        d02.f9855b.W().q(c10);
                        p pVar = new p(d02.f9432a, zzawVar.zzc, str, zzawVar.zza, zzawVar.zzd, j10, bundle);
                        com.google.android.gms.internal.measurement.k4 A = com.google.android.gms.internal.measurement.l4.A();
                        A.D(pVar.f9742d);
                        A.z(pVar.f9740b);
                        A.C(pVar.f9743e);
                        r rVar = new r(pVar.f9744f);
                        while (rVar.hasNext()) {
                            String next = rVar.next();
                            com.google.android.gms.internal.measurement.o4 A2 = com.google.android.gms.internal.measurement.p4.A();
                            A2.A(next);
                            Object R2 = pVar.f9744f.R(next);
                            if (R2 != null) {
                                d02.f9855b.g0().J(A2, R2);
                                A.v(A2);
                            }
                        }
                        com.google.android.gms.internal.measurement.v4 v4Var2 = v4Var;
                        v4Var2.H0(A);
                        com.google.android.gms.internal.measurement.x4 w8 = com.google.android.gms.internal.measurement.z4.w();
                        com.google.android.gms.internal.measurement.m4 w10 = com.google.android.gms.internal.measurement.n4.w();
                        w10.r(c10.f9763c);
                        w10.s(zzawVar.zza);
                        w8.r(w10);
                        v4Var2.V(w8);
                        v4Var2.x0(d02.f9855b.T().m(j5Var.d0(), Collections.emptyList(), v4Var2.r0(), Long.valueOf(A.t()), Long.valueOf(A.t())));
                        if (A.J()) {
                            v4Var2.e0(A.t());
                            v4Var2.J(A.t());
                        }
                        long X = j5Var.X();
                        int i10 = (X > 0L ? 1 : (X == 0L ? 0 : -1));
                        if (i10 != 0) {
                            v4Var2.W(X);
                        }
                        long Z = j5Var.Z();
                        if (Z != 0) {
                            v4Var2.X(Z);
                        } else if (i10 != 0) {
                            v4Var2.X(X);
                        }
                        String b11 = j5Var.b();
                        nd.b();
                        if (d02.f9432a.z().B(str2, z2.f10065t0) && b11 != null) {
                            v4Var2.d0(b11);
                        }
                        j5Var.e();
                        v4Var2.z((int) j5Var.Y());
                        d02.f9432a.z().q();
                        v4Var2.i0(73000L);
                        v4Var2.h0(d02.f9432a.c().a());
                        v4Var2.b0(true);
                        if (d02.f9432a.z().B(str2, z2.B0)) {
                            d02.f9855b.h(v4Var2.m0(), v4Var2);
                        }
                        com.google.android.gms.internal.measurement.s4 s4Var2 = s4Var;
                        s4Var2.r(v4Var2);
                        j5 j5Var2 = j5Var;
                        j5Var2.C(v4Var2.u0());
                        j5Var2.z(v4Var2.t0());
                        d02.f9855b.W().p(j5Var2);
                        d02.f9855b.W().o();
                        try {
                            return d02.f9855b.g0().O(((com.google.android.gms.internal.measurement.u4) s4Var2.o()).j());
                        } catch (IOException e11) {
                            d02.f9432a.b().r().c("Data loss. Failed to bundle and serialize. appId", j3.z(str), e11);
                            return str2;
                        }
                    } catch (SecurityException e12) {
                        d02.f9432a.b().q().b("app instance id encryption failed", e12.getMessage());
                        bArr = new byte[0];
                        d9Var3 = d02.f9855b;
                    }
                }
                d9Var3.W().f0();
                return bArr;
            } finally {
                d02.f9855b.W().f0();
            }
        }
    }
}
