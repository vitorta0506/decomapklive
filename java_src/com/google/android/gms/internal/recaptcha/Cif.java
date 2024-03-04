package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.recaptcha.if  reason: invalid class name */
/* loaded from: classes2.dex */
final class Cif implements bj {

    /* renamed from: a  reason: collision with root package name */
    private final hf f8767a;

    private Cif(hf hfVar) {
        mg.f(hfVar, "output");
        this.f8767a = hfVar;
        hfVar.f8744a = this;
    }

    public static Cif L(hf hfVar) {
        Cif cif = hfVar.f8744a;
        return cif != null ? cif : new Cif(hfVar);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void A(int i9, int i10) throws IOException {
        this.f8767a.K(i9, (i10 >> 31) ^ (i10 + i10));
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void B(int i9) throws IOException {
        this.f8767a.J(i9, 3);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void C(int i9, int i10) throws IOException {
        this.f8767a.K(i9, i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void D(int i9, List<Integer> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8767a.J(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                list.get(i12).intValue();
                i11 += 4;
            }
            this.f8767a.L(i11);
            while (i10 < list.size()) {
                this.f8767a.A(list.get(i10).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8767a.z(i9, list.get(i10).intValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void E(int i9, List<Integer> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8767a.J(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += hf.l(list.get(i12).intValue());
            }
            this.f8767a.L(i11);
            while (i10 < list.size()) {
                this.f8767a.L(list.get(i10).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8767a.K(i9, list.get(i10).intValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void F(int i9, zzpy zzpyVar) throws IOException {
        this.f8767a.x(i9, zzpyVar);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void G(int i9, long j10) throws IOException {
        this.f8767a.B(i9, j10);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void H(int i9, List<Integer> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8767a.J(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                int intValue = list.get(i12).intValue();
                i11 += hf.l((intValue >> 31) ^ (intValue + intValue));
            }
            this.f8767a.L(i11);
            while (i10 < list.size()) {
                hf hfVar = this.f8767a;
                int intValue2 = list.get(i10).intValue();
                hfVar.L((intValue2 >> 31) ^ (intValue2 + intValue2));
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            hf hfVar2 = this.f8767a;
            int intValue3 = list.get(i10).intValue();
            hfVar2.K(i9, (intValue3 >> 31) ^ (intValue3 + intValue3));
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void I(int i9, List<Long> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8767a.J(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                long longValue = list.get(i12).longValue();
                i11 += hf.m((longValue >> 63) ^ (longValue + longValue));
            }
            this.f8767a.L(i11);
            while (i10 < list.size()) {
                hf hfVar = this.f8767a;
                long longValue2 = list.get(i10).longValue();
                hfVar.N((longValue2 >> 63) ^ (longValue2 + longValue2));
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            hf hfVar2 = this.f8767a;
            long longValue3 = list.get(i10).longValue();
            hfVar2.M(i9, (longValue3 >> 63) ^ (longValue3 + longValue3));
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void J(int i9, List<String> list) throws IOException {
        int i10 = 0;
        if (list instanceof qg) {
            qg qgVar = (qg) list;
            while (i10 < list.size()) {
                Object o10 = qgVar.o(i10);
                if (o10 instanceof String) {
                    this.f8767a.H(i9, (String) o10);
                } else {
                    this.f8767a.x(i9, (zzpy) o10);
                }
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8767a.H(i9, list.get(i10));
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void K(int i9, long j10) throws IOException {
        this.f8767a.M(i9, j10);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void a(int i9, Object obj, uh uhVar) throws IOException {
        hf hfVar = this.f8767a;
        hfVar.J(i9, 3);
        uhVar.g((gh) obj, hfVar.f8744a);
        hfVar.J(i9, 4);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final <K, V> void b(int i9, zg<K, V> zgVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f8767a.J(i9, 2);
            this.f8767a.L(ah.b(zgVar, entry.getKey(), entry.getValue()));
            ah.e(this.f8767a, zgVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void c(int i9, String str) throws IOException {
        this.f8767a.H(i9, str);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void d(int i9, List<Long> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8767a.J(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                list.get(i12).longValue();
                i11 += 8;
            }
            this.f8767a.L(i11);
            while (i10 < list.size()) {
                this.f8767a.C(list.get(i10).longValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8767a.B(i9, list.get(i10).longValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void e(int i9) throws IOException {
        this.f8767a.J(i9, 4);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void f(int i9, List<zzpy> list) throws IOException {
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f8767a.x(i9, list.get(i10));
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void g(int i9, boolean z10) throws IOException {
        this.f8767a.u(i9, z10);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void h(int i9, long j10) throws IOException {
        this.f8767a.M(i9, j10);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void i(int i9, List<Boolean> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8767a.J(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                list.get(i12).booleanValue();
                i11++;
            }
            this.f8767a.L(i11);
            while (i10 < list.size()) {
                this.f8767a.t(list.get(i10).booleanValue() ? (byte) 1 : (byte) 0);
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8767a.u(i9, list.get(i10).booleanValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void j(int i9, List<Integer> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8767a.J(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += hf.e(list.get(i12).intValue());
            }
            this.f8767a.L(i11);
            while (i10 < list.size()) {
                this.f8767a.E(list.get(i10).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8767a.D(i9, list.get(i10).intValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void k(int i9, int i10) throws IOException {
        this.f8767a.D(i9, i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void l(int i9, double d10) throws IOException {
        this.f8767a.B(i9, Double.doubleToRawLongBits(d10));
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void m(int i9, List<Long> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8767a.J(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                list.get(i12).longValue();
                i11 += 8;
            }
            this.f8767a.L(i11);
            while (i10 < list.size()) {
                this.f8767a.C(list.get(i10).longValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8767a.B(i9, list.get(i10).longValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void n(int i9, List<Float> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8767a.J(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                list.get(i12).floatValue();
                i11 += 4;
            }
            this.f8767a.L(i11);
            while (i10 < list.size()) {
                this.f8767a.A(Float.floatToRawIntBits(list.get(i10).floatValue()));
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8767a.z(i9, Float.floatToRawIntBits(list.get(i10).floatValue()));
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void o(int i9, int i10) throws IOException {
        this.f8767a.z(i9, i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void p(int i9, List<Integer> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8767a.J(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                list.get(i12).intValue();
                i11 += 4;
            }
            this.f8767a.L(i11);
            while (i10 < list.size()) {
                this.f8767a.A(list.get(i10).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8767a.z(i9, list.get(i10).intValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void q(int i9, int i10) throws IOException {
        this.f8767a.D(i9, i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void r(int i9, List<Integer> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8767a.J(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += hf.e(list.get(i12).intValue());
            }
            this.f8767a.L(i11);
            while (i10 < list.size()) {
                this.f8767a.E(list.get(i10).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8767a.D(i9, list.get(i10).intValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void s(int i9, float f10) throws IOException {
        this.f8767a.z(i9, Float.floatToRawIntBits(f10));
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void t(int i9, List<Long> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8767a.J(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += hf.m(list.get(i12).longValue());
            }
            this.f8767a.L(i11);
            while (i10 < list.size()) {
                this.f8767a.N(list.get(i10).longValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8767a.M(i9, list.get(i10).longValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void u(int i9, List<Double> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8767a.J(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                list.get(i12).doubleValue();
                i11 += 8;
            }
            this.f8767a.L(i11);
            while (i10 < list.size()) {
                this.f8767a.C(Double.doubleToRawLongBits(list.get(i10).doubleValue()));
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8767a.B(i9, Double.doubleToRawLongBits(list.get(i10).doubleValue()));
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void v(int i9, long j10) throws IOException {
        this.f8767a.B(i9, j10);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void w(int i9, long j10) throws IOException {
        this.f8767a.M(i9, (j10 >> 63) ^ (j10 + j10));
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void x(int i9, List<Long> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8767a.J(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += hf.m(list.get(i12).longValue());
            }
            this.f8767a.L(i11);
            while (i10 < list.size()) {
                this.f8767a.N(list.get(i10).longValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8767a.M(i9, list.get(i10).longValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void y(int i9, int i10) throws IOException {
        this.f8767a.z(i9, i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.bj
    public final void z(int i9, Object obj, uh uhVar) throws IOException {
        this.f8767a.F(i9, (gh) obj, uhVar);
    }
}
