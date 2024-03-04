package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class q extends f.b {

    /* renamed from: h  reason: collision with root package name */
    public static final BigInteger f41583h = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEE37"));

    /* renamed from: g  reason: collision with root package name */
    protected int[] f41584g;

    public q() {
        this.f41584g = nk.f.h();
    }

    public q(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f41583h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP192K1FieldElement");
        }
        this.f41584g = p.c(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public q(int[] iArr) {
        this.f41584g = iArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        int[] h10 = nk.f.h();
        p.a(this.f41584g, ((q) fVar).f41584g, h10);
        return new q(h10);
    }

    @Override // fk.f
    public fk.f b() {
        int[] h10 = nk.f.h();
        p.b(this.f41584g, h10);
        return new q(h10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        int[] h10 = nk.f.h();
        p.d(((q) fVar).f41584g, h10);
        p.f(h10, this.f41584g, h10);
        return new q(h10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof q) {
            return nk.f.m(this.f41584g, ((q) obj).f41584g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return f41583h.bitLength();
    }

    @Override // fk.f
    public fk.f g() {
        int[] h10 = nk.f.h();
        p.d(this.f41584g, h10);
        return new q(h10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.f.s(this.f41584g);
    }

    public int hashCode() {
        return f41583h.hashCode() ^ org.bouncycastle.util.a.v(this.f41584g, 0, 6);
    }

    @Override // fk.f
    public boolean i() {
        return nk.f.u(this.f41584g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        int[] h10 = nk.f.h();
        p.f(this.f41584g, ((q) fVar).f41584g, h10);
        return new q(h10);
    }

    @Override // fk.f
    public fk.f m() {
        int[] h10 = nk.f.h();
        p.h(this.f41584g, h10);
        return new q(h10);
    }

    @Override // fk.f
    public fk.f n() {
        int[] iArr = this.f41584g;
        if (nk.f.u(iArr) || nk.f.s(iArr)) {
            return this;
        }
        int[] h10 = nk.f.h();
        p.m(iArr, h10);
        p.f(h10, iArr, h10);
        int[] h11 = nk.f.h();
        p.m(h10, h11);
        p.f(h11, iArr, h11);
        int[] h12 = nk.f.h();
        p.n(h11, 3, h12);
        p.f(h12, h11, h12);
        p.n(h12, 2, h12);
        p.f(h12, h10, h12);
        p.n(h12, 8, h10);
        p.f(h10, h12, h10);
        p.n(h10, 3, h12);
        p.f(h12, h11, h12);
        int[] h13 = nk.f.h();
        p.n(h12, 16, h13);
        p.f(h13, h10, h13);
        p.n(h13, 35, h10);
        p.f(h10, h13, h10);
        p.n(h10, 70, h13);
        p.f(h13, h10, h13);
        p.n(h13, 19, h10);
        p.f(h10, h12, h10);
        p.n(h10, 20, h10);
        p.f(h10, h12, h10);
        p.n(h10, 4, h10);
        p.f(h10, h11, h10);
        p.n(h10, 6, h10);
        p.f(h10, h11, h10);
        p.m(h10, h10);
        p.m(h10, h11);
        if (nk.f.m(iArr, h11)) {
            return new q(h10);
        }
        return null;
    }

    @Override // fk.f
    public fk.f o() {
        int[] h10 = nk.f.h();
        p.m(this.f41584g, h10);
        return new q(h10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        int[] h10 = nk.f.h();
        p.o(this.f41584g, ((q) fVar).f41584g, h10);
        return new q(h10);
    }

    @Override // fk.f
    public boolean s() {
        return nk.f.p(this.f41584g, 0) == 1;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.f.H(this.f41584g);
    }
}
