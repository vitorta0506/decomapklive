package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
/* loaded from: classes2.dex */
final class g8 implements sb {

    /* renamed from: a  reason: collision with root package name */
    private final f8 f8095a;

    private g8(f8 f8Var) {
        e9.f(f8Var, "output");
        this.f8095a = f8Var;
        f8Var.f8076a = this;
    }

    public static g8 a(f8 f8Var) {
        g8 g8Var = f8Var.f8076a;
        return g8Var != null ? g8Var : new g8(f8Var);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void A(int i9, Object obj, ka kaVar) throws IOException {
        f8 f8Var = this.f8095a;
        f8Var.s(i9, 3);
        kaVar.d((z9) obj, f8Var.f8076a);
        f8Var.s(i9, 4);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void B(int i9, List list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8095a.s(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += f8.b(((Long) list.get(i12)).longValue());
            }
            this.f8095a.u(i11);
            while (i10 < list.size()) {
                this.f8095a.w(((Long) list.get(i10)).longValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8095a.v(i9, ((Long) list.get(i10)).longValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    @Deprecated
    public final void C(int i9) throws IOException {
        this.f8095a.s(i9, 3);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void D(int i9, long j10) throws IOException {
        this.f8095a.v(i9, (j10 >> 63) ^ (j10 + j10));
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void E(int i9, int i10) throws IOException {
        this.f8095a.t(i9, i10);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void F(int i9, List list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8095a.s(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                ((Long) list.get(i12)).longValue();
                i11 += 8;
            }
            this.f8095a.u(i11);
            while (i10 < list.size()) {
                this.f8095a.n(((Long) list.get(i10)).longValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8095a.m(i9, ((Long) list.get(i10)).longValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void G(int i9, long j10) throws IOException {
        this.f8095a.m(i9, j10);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void H(int i9, List list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8095a.s(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += f8.a(((Integer) list.get(i12)).intValue());
            }
            this.f8095a.u(i11);
            while (i10 < list.size()) {
                this.f8095a.u(((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8095a.t(i9, ((Integer) list.get(i10)).intValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void I(int i9, List list) throws IOException {
        int i10 = 0;
        if (list instanceof h9) {
            h9 h9Var = (h9) list;
            while (i10 < list.size()) {
                Object o10 = h9Var.o(i10);
                if (o10 instanceof String) {
                    this.f8095a.r(i9, (String) o10);
                } else {
                    this.f8095a.j(i9, (zzjd) o10);
                }
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8095a.r(i9, (String) list.get(i10));
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void J(int i9, List list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8095a.s(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                int intValue = ((Integer) list.get(i12)).intValue();
                i11 += f8.a((intValue >> 31) ^ (intValue + intValue));
            }
            this.f8095a.u(i11);
            while (i10 < list.size()) {
                f8 f8Var = this.f8095a;
                int intValue2 = ((Integer) list.get(i10)).intValue();
                f8Var.u((intValue2 >> 31) ^ (intValue2 + intValue2));
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            f8 f8Var2 = this.f8095a;
            int intValue3 = ((Integer) list.get(i10)).intValue();
            f8Var2.t(i9, (intValue3 >> 31) ^ (intValue3 + intValue3));
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void K(int i9, List list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8095a.s(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                ((Integer) list.get(i12)).intValue();
                i11 += 4;
            }
            this.f8095a.u(i11);
            while (i10 < list.size()) {
                this.f8095a.l(((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8095a.k(i9, ((Integer) list.get(i10)).intValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void L(int i9, long j10) throws IOException {
        this.f8095a.v(i9, j10);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void M(int i9, Object obj, ka kaVar) throws IOException {
        Object obj2 = (z9) obj;
        d8 d8Var = (d8) this.f8095a;
        d8Var.u((i9 << 3) | 2);
        i7 i7Var = (i7) obj2;
        int c10 = i7Var.c();
        if (c10 == -1) {
            c10 = kaVar.a(i7Var);
            i7Var.i(c10);
        }
        d8Var.u(c10);
        kaVar.d(obj2, d8Var.f8076a);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void N(int i9, List list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8095a.s(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                long longValue = ((Long) list.get(i12)).longValue();
                i11 += f8.b((longValue >> 63) ^ (longValue + longValue));
            }
            this.f8095a.u(i11);
            while (i10 < list.size()) {
                f8 f8Var = this.f8095a;
                long longValue2 = ((Long) list.get(i10)).longValue();
                f8Var.w((longValue2 >> 63) ^ (longValue2 + longValue2));
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            f8 f8Var2 = this.f8095a;
            long longValue3 = ((Long) list.get(i10)).longValue();
            f8Var2.v(i9, (longValue3 >> 63) ^ (longValue3 + longValue3));
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    @Deprecated
    public final void e(int i9) throws IOException {
        this.f8095a.s(i9, 4);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void f(int i9, List list) throws IOException {
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f8095a.j(i9, (zzjd) list.get(i10));
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void g(int i9, boolean z10) throws IOException {
        this.f8095a.i(i9, z10);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void h(int i9, long j10) throws IOException {
        this.f8095a.v(i9, j10);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void i(int i9, List list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8095a.s(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                ((Boolean) list.get(i12)).booleanValue();
                i11++;
            }
            this.f8095a.u(i11);
            while (i10 < list.size()) {
                this.f8095a.h(((Boolean) list.get(i10)).booleanValue() ? (byte) 1 : (byte) 0);
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8095a.i(i9, ((Boolean) list.get(i10)).booleanValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void j(int i9, List list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8095a.s(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += f8.z(((Integer) list.get(i12)).intValue());
            }
            this.f8095a.u(i11);
            while (i10 < list.size()) {
                this.f8095a.p(((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8095a.o(i9, ((Integer) list.get(i10)).intValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void k(int i9, int i10) throws IOException {
        this.f8095a.o(i9, i10);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void l(int i9, double d10) throws IOException {
        this.f8095a.m(i9, Double.doubleToRawLongBits(d10));
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void m(int i9, List list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8095a.s(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                ((Long) list.get(i12)).longValue();
                i11 += 8;
            }
            this.f8095a.u(i11);
            while (i10 < list.size()) {
                this.f8095a.n(((Long) list.get(i10)).longValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8095a.m(i9, ((Long) list.get(i10)).longValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void n(int i9, List list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8095a.s(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                ((Float) list.get(i12)).floatValue();
                i11 += 4;
            }
            this.f8095a.u(i11);
            while (i10 < list.size()) {
                this.f8095a.l(Float.floatToRawIntBits(((Float) list.get(i10)).floatValue()));
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8095a.k(i9, Float.floatToRawIntBits(((Float) list.get(i10)).floatValue()));
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void o(int i9, int i10) throws IOException {
        this.f8095a.k(i9, i10);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void p(int i9, List list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8095a.s(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                ((Integer) list.get(i12)).intValue();
                i11 += 4;
            }
            this.f8095a.u(i11);
            while (i10 < list.size()) {
                this.f8095a.l(((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8095a.k(i9, ((Integer) list.get(i10)).intValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void q(int i9, int i10) throws IOException {
        this.f8095a.o(i9, i10);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void r(int i9, List list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8095a.s(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += f8.z(((Integer) list.get(i12)).intValue());
            }
            this.f8095a.u(i11);
            while (i10 < list.size()) {
                this.f8095a.p(((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8095a.o(i9, ((Integer) list.get(i10)).intValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void s(int i9, float f10) throws IOException {
        this.f8095a.k(i9, Float.floatToRawIntBits(f10));
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void t(int i9, List list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8095a.s(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += f8.b(((Long) list.get(i12)).longValue());
            }
            this.f8095a.u(i11);
            while (i10 < list.size()) {
                this.f8095a.w(((Long) list.get(i10)).longValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8095a.v(i9, ((Long) list.get(i10)).longValue());
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void u(int i9, List list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f8095a.s(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                ((Double) list.get(i12)).doubleValue();
                i11 += 8;
            }
            this.f8095a.u(i11);
            while (i10 < list.size()) {
                this.f8095a.n(Double.doubleToRawLongBits(((Double) list.get(i10)).doubleValue()));
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f8095a.m(i9, Double.doubleToRawLongBits(((Double) list.get(i10)).doubleValue()));
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void v(int i9, long j10) throws IOException {
        this.f8095a.m(i9, j10);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void w(int i9, int i10) throws IOException {
        this.f8095a.t(i9, (i10 >> 31) ^ (i10 + i10));
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void x(int i9, String str) throws IOException {
        this.f8095a.r(i9, str);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void y(int i9, zzjd zzjdVar) throws IOException {
        this.f8095a.j(i9, zzjdVar);
    }

    @Override // com.google.android.gms.internal.measurement.sb
    public final void z(int i9, int i10) throws IOException {
        this.f8095a.k(i9, i10);
    }
}
