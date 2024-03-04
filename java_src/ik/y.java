package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class y extends f.b {

    /* renamed from: h  reason: collision with root package name */
    public static final BigInteger f41650h = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"));

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f41651i = {868209154, -587542221, 579297866, -1014948952, -1470801668, 514782679, -1897982644};

    /* renamed from: g  reason: collision with root package name */
    protected int[] f41652g;

    public y() {
        this.f41652g = nk.g.e();
    }

    public y(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f41650h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP224K1FieldElement");
        }
        this.f41652g = x.c(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public y(int[] iArr) {
        this.f41652g = iArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        int[] e10 = nk.g.e();
        x.a(this.f41652g, ((y) fVar).f41652g, e10);
        return new y(e10);
    }

    @Override // fk.f
    public fk.f b() {
        int[] e10 = nk.g.e();
        x.b(this.f41652g, e10);
        return new y(e10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        int[] e10 = nk.g.e();
        x.d(((y) fVar).f41652g, e10);
        x.f(e10, this.f41652g, e10);
        return new y(e10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof y) {
            return nk.g.g(this.f41652g, ((y) obj).f41652g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return f41650h.bitLength();
    }

    @Override // fk.f
    public fk.f g() {
        int[] e10 = nk.g.e();
        x.d(this.f41652g, e10);
        return new y(e10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.g.k(this.f41652g);
    }

    public int hashCode() {
        return f41650h.hashCode() ^ org.bouncycastle.util.a.v(this.f41652g, 0, 7);
    }

    @Override // fk.f
    public boolean i() {
        return nk.g.l(this.f41652g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        int[] e10 = nk.g.e();
        x.f(this.f41652g, ((y) fVar).f41652g, e10);
        return new y(e10);
    }

    @Override // fk.f
    public fk.f m() {
        int[] e10 = nk.g.e();
        x.h(this.f41652g, e10);
        return new y(e10);
    }

    @Override // fk.f
    public fk.f n() {
        int[] iArr = this.f41652g;
        if (nk.g.l(iArr) || nk.g.k(iArr)) {
            return this;
        }
        int[] e10 = nk.g.e();
        x.m(iArr, e10);
        x.f(e10, iArr, e10);
        x.m(e10, e10);
        x.f(e10, iArr, e10);
        int[] e11 = nk.g.e();
        x.m(e10, e11);
        x.f(e11, iArr, e11);
        int[] e12 = nk.g.e();
        x.n(e11, 4, e12);
        x.f(e12, e11, e12);
        int[] e13 = nk.g.e();
        x.n(e12, 3, e13);
        x.f(e13, e10, e13);
        x.n(e13, 8, e13);
        x.f(e13, e12, e13);
        x.n(e13, 4, e12);
        x.f(e12, e11, e12);
        x.n(e12, 19, e11);
        x.f(e11, e13, e11);
        int[] e14 = nk.g.e();
        x.n(e11, 42, e14);
        x.f(e14, e11, e14);
        x.n(e14, 23, e11);
        x.f(e11, e12, e11);
        x.n(e11, 84, e12);
        x.f(e12, e14, e12);
        x.n(e12, 20, e12);
        x.f(e12, e13, e12);
        x.n(e12, 3, e12);
        x.f(e12, iArr, e12);
        x.n(e12, 2, e12);
        x.f(e12, iArr, e12);
        x.n(e12, 4, e12);
        x.f(e12, e10, e12);
        x.m(e12, e12);
        x.m(e12, e14);
        if (nk.g.g(iArr, e14)) {
            return new y(e12);
        }
        x.f(e12, f41651i, e12);
        x.m(e12, e14);
        if (nk.g.g(iArr, e14)) {
            return new y(e12);
        }
        return null;
    }

    @Override // fk.f
    public fk.f o() {
        int[] e10 = nk.g.e();
        x.m(this.f41652g, e10);
        return new y(e10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        int[] e10 = nk.g.e();
        x.o(this.f41652g, ((y) fVar).f41652g, e10);
        return new y(e10);
    }

    @Override // fk.f
    public boolean s() {
        return nk.g.i(this.f41652g, 0) == 1;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.g.u(this.f41652g);
    }
}
