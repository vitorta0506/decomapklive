package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class o0 extends f.b {

    /* renamed from: h  reason: collision with root package name */
    public static final BigInteger f41572h = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"));

    /* renamed from: g  reason: collision with root package name */
    protected int[] f41573g;

    public o0() {
        this.f41573g = nk.n.k(12);
    }

    public o0(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f41572h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP384R1FieldElement");
        }
        this.f41573g = n0.e(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public o0(int[] iArr) {
        this.f41573g = iArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        int[] k10 = nk.n.k(12);
        n0.a(this.f41573g, ((o0) fVar).f41573g, k10);
        return new o0(k10);
    }

    @Override // fk.f
    public fk.f b() {
        int[] k10 = nk.n.k(12);
        n0.c(this.f41573g, k10);
        return new o0(k10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        int[] k10 = nk.n.k(12);
        n0.f(((o0) fVar).f41573g, k10);
        n0.h(k10, this.f41573g, k10);
        return new o0(k10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof o0) {
            return nk.n.o(12, this.f41573g, ((o0) obj).f41573g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return f41572h.bitLength();
    }

    @Override // fk.f
    public fk.f g() {
        int[] k10 = nk.n.k(12);
        n0.f(this.f41573g, k10);
        return new o0(k10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.n.z(12, this.f41573g);
    }

    public int hashCode() {
        return f41572h.hashCode() ^ org.bouncycastle.util.a.v(this.f41573g, 0, 12);
    }

    @Override // fk.f
    public boolean i() {
        return nk.n.A(12, this.f41573g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        int[] k10 = nk.n.k(12);
        n0.h(this.f41573g, ((o0) fVar).f41573g, k10);
        return new o0(k10);
    }

    @Override // fk.f
    public fk.f m() {
        int[] k10 = nk.n.k(12);
        n0.i(this.f41573g, k10);
        return new o0(k10);
    }

    @Override // fk.f
    public fk.f n() {
        int[] iArr = this.f41573g;
        if (nk.n.A(12, iArr) || nk.n.z(12, iArr)) {
            return this;
        }
        int[] k10 = nk.n.k(12);
        int[] k11 = nk.n.k(12);
        int[] k12 = nk.n.k(12);
        int[] k13 = nk.n.k(12);
        n0.n(iArr, k10);
        n0.h(k10, iArr, k10);
        n0.o(k10, 2, k11);
        n0.h(k11, k10, k11);
        n0.n(k11, k11);
        n0.h(k11, iArr, k11);
        n0.o(k11, 5, k12);
        n0.h(k12, k11, k12);
        n0.o(k12, 5, k13);
        n0.h(k13, k11, k13);
        n0.o(k13, 15, k11);
        n0.h(k11, k13, k11);
        n0.o(k11, 2, k12);
        n0.h(k10, k12, k10);
        n0.o(k12, 28, k12);
        n0.h(k11, k12, k11);
        n0.o(k11, 60, k12);
        n0.h(k12, k11, k12);
        n0.o(k12, 120, k11);
        n0.h(k11, k12, k11);
        n0.o(k11, 15, k11);
        n0.h(k11, k13, k11);
        n0.o(k11, 33, k11);
        n0.h(k11, k10, k11);
        n0.o(k11, 64, k11);
        n0.h(k11, iArr, k11);
        n0.o(k11, 30, k10);
        n0.n(k10, k11);
        if (nk.n.o(12, iArr, k11)) {
            return new o0(k10);
        }
        return null;
    }

    @Override // fk.f
    public fk.f o() {
        int[] k10 = nk.n.k(12);
        n0.n(this.f41573g, k10);
        return new o0(k10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        int[] k10 = nk.n.k(12);
        n0.q(this.f41573g, ((o0) fVar).f41573g, k10);
        return new o0(k10);
    }

    @Override // fk.f
    public boolean s() {
        return nk.n.t(this.f41573g, 0) == 1;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.n.U(12, this.f41573g);
    }
}
