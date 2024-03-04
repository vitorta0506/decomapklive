package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class s0 extends f.b {

    /* renamed from: h  reason: collision with root package name */
    public static final BigInteger f41605h = new BigInteger(1, org.bouncycastle.util.encoders.d.b("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"));

    /* renamed from: g  reason: collision with root package name */
    protected int[] f41606g;

    public s0() {
        this.f41606g = nk.n.k(17);
    }

    public s0(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f41605h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP521R1FieldElement");
        }
        this.f41606g = r0.c(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public s0(int[] iArr) {
        this.f41606g = iArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        int[] k10 = nk.n.k(17);
        r0.a(this.f41606g, ((s0) fVar).f41606g, k10);
        return new s0(k10);
    }

    @Override // fk.f
    public fk.f b() {
        int[] k10 = nk.n.k(17);
        r0.b(this.f41606g, k10);
        return new s0(k10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        int[] k10 = nk.n.k(17);
        r0.f(((s0) fVar).f41606g, k10);
        r0.h(k10, this.f41606g, k10);
        return new s0(k10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof s0) {
            return nk.n.o(17, this.f41606g, ((s0) obj).f41606g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return f41605h.bitLength();
    }

    @Override // fk.f
    public fk.f g() {
        int[] k10 = nk.n.k(17);
        r0.f(this.f41606g, k10);
        return new s0(k10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.n.z(17, this.f41606g);
    }

    public int hashCode() {
        return f41605h.hashCode() ^ org.bouncycastle.util.a.v(this.f41606g, 0, 17);
    }

    @Override // fk.f
    public boolean i() {
        return nk.n.A(17, this.f41606g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        int[] k10 = nk.n.k(17);
        r0.h(this.f41606g, ((s0) fVar).f41606g, k10);
        return new s0(k10);
    }

    @Override // fk.f
    public fk.f m() {
        int[] k10 = nk.n.k(17);
        r0.i(this.f41606g, k10);
        return new s0(k10);
    }

    @Override // fk.f
    public fk.f n() {
        int[] iArr = this.f41606g;
        if (nk.n.A(17, iArr) || nk.n.z(17, iArr)) {
            return this;
        }
        int[] k10 = nk.n.k(17);
        int[] k11 = nk.n.k(17);
        r0.o(iArr, 519, k10);
        r0.n(k10, k11);
        if (nk.n.o(17, iArr, k11)) {
            return new s0(k10);
        }
        return null;
    }

    @Override // fk.f
    public fk.f o() {
        int[] k10 = nk.n.k(17);
        r0.n(this.f41606g, k10);
        return new s0(k10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        int[] k10 = nk.n.k(17);
        r0.p(this.f41606g, ((s0) fVar).f41606g, k10);
        return new s0(k10);
    }

    @Override // fk.f
    public boolean s() {
        return nk.n.t(this.f41606g, 0) == 1;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.n.U(17, this.f41606g);
    }
}
