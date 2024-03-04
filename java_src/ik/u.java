package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class u extends f.b {

    /* renamed from: h  reason: collision with root package name */
    public static final BigInteger f41620h = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"));

    /* renamed from: g  reason: collision with root package name */
    protected int[] f41621g;

    public u() {
        this.f41621g = nk.f.h();
    }

    public u(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f41620h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP192R1FieldElement");
        }
        this.f41621g = t.d(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public u(int[] iArr) {
        this.f41621g = iArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        int[] h10 = nk.f.h();
        t.a(this.f41621g, ((u) fVar).f41621g, h10);
        return new u(h10);
    }

    @Override // fk.f
    public fk.f b() {
        int[] h10 = nk.f.h();
        t.b(this.f41621g, h10);
        return new u(h10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        int[] h10 = nk.f.h();
        t.e(((u) fVar).f41621g, h10);
        t.g(h10, this.f41621g, h10);
        return new u(h10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof u) {
            return nk.f.m(this.f41621g, ((u) obj).f41621g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return f41620h.bitLength();
    }

    @Override // fk.f
    public fk.f g() {
        int[] h10 = nk.f.h();
        t.e(this.f41621g, h10);
        return new u(h10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.f.s(this.f41621g);
    }

    public int hashCode() {
        return f41620h.hashCode() ^ org.bouncycastle.util.a.v(this.f41621g, 0, 6);
    }

    @Override // fk.f
    public boolean i() {
        return nk.f.u(this.f41621g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        int[] h10 = nk.f.h();
        t.g(this.f41621g, ((u) fVar).f41621g, h10);
        return new u(h10);
    }

    @Override // fk.f
    public fk.f m() {
        int[] h10 = nk.f.h();
        t.i(this.f41621g, h10);
        return new u(h10);
    }

    @Override // fk.f
    public fk.f n() {
        int[] iArr = this.f41621g;
        if (nk.f.u(iArr) || nk.f.s(iArr)) {
            return this;
        }
        int[] h10 = nk.f.h();
        int[] h11 = nk.f.h();
        t.n(iArr, h10);
        t.g(h10, iArr, h10);
        t.o(h10, 2, h11);
        t.g(h11, h10, h11);
        t.o(h11, 4, h10);
        t.g(h10, h11, h10);
        t.o(h10, 8, h11);
        t.g(h11, h10, h11);
        t.o(h11, 16, h10);
        t.g(h10, h11, h10);
        t.o(h10, 32, h11);
        t.g(h11, h10, h11);
        t.o(h11, 64, h10);
        t.g(h10, h11, h10);
        t.o(h10, 62, h10);
        t.n(h10, h11);
        if (nk.f.m(iArr, h11)) {
            return new u(h10);
        }
        return null;
    }

    @Override // fk.f
    public fk.f o() {
        int[] h10 = nk.f.h();
        t.n(this.f41621g, h10);
        return new u(h10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        int[] h10 = nk.f.h();
        t.q(this.f41621g, ((u) fVar).f41621g, h10);
        return new u(h10);
    }

    @Override // fk.f
    public boolean s() {
        return nk.f.p(this.f41621g, 0) == 1;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.f.H(this.f41621g);
    }
}
