package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class g0 extends f.b {

    /* renamed from: h  reason: collision with root package name */
    public static final BigInteger f41496h = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"));

    /* renamed from: g  reason: collision with root package name */
    protected int[] f41497g;

    public g0() {
        this.f41497g = nk.h.i();
    }

    public g0(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f41496h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256K1FieldElement");
        }
        this.f41497g = f0.c(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g0(int[] iArr) {
        this.f41497g = iArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        int[] i9 = nk.h.i();
        f0.a(this.f41497g, ((g0) fVar).f41497g, i9);
        return new g0(i9);
    }

    @Override // fk.f
    public fk.f b() {
        int[] i9 = nk.h.i();
        f0.b(this.f41497g, i9);
        return new g0(i9);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        int[] i9 = nk.h.i();
        f0.d(((g0) fVar).f41497g, i9);
        f0.f(i9, this.f41497g, i9);
        return new g0(i9);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g0) {
            return nk.h.n(this.f41497g, ((g0) obj).f41497g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return f41496h.bitLength();
    }

    @Override // fk.f
    public fk.f g() {
        int[] i9 = nk.h.i();
        f0.d(this.f41497g, i9);
        return new g0(i9);
    }

    @Override // fk.f
    public boolean h() {
        return nk.h.t(this.f41497g);
    }

    public int hashCode() {
        return f41496h.hashCode() ^ org.bouncycastle.util.a.v(this.f41497g, 0, 8);
    }

    @Override // fk.f
    public boolean i() {
        return nk.h.v(this.f41497g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        int[] i9 = nk.h.i();
        f0.f(this.f41497g, ((g0) fVar).f41497g, i9);
        return new g0(i9);
    }

    @Override // fk.f
    public fk.f m() {
        int[] i9 = nk.h.i();
        f0.h(this.f41497g, i9);
        return new g0(i9);
    }

    @Override // fk.f
    public fk.f n() {
        int[] iArr = this.f41497g;
        if (nk.h.v(iArr) || nk.h.t(iArr)) {
            return this;
        }
        int[] i9 = nk.h.i();
        f0.m(iArr, i9);
        f0.f(i9, iArr, i9);
        int[] i10 = nk.h.i();
        f0.m(i9, i10);
        f0.f(i10, iArr, i10);
        int[] i11 = nk.h.i();
        f0.n(i10, 3, i11);
        f0.f(i11, i10, i11);
        f0.n(i11, 3, i11);
        f0.f(i11, i10, i11);
        f0.n(i11, 2, i11);
        f0.f(i11, i9, i11);
        int[] i12 = nk.h.i();
        f0.n(i11, 11, i12);
        f0.f(i12, i11, i12);
        f0.n(i12, 22, i11);
        f0.f(i11, i12, i11);
        int[] i13 = nk.h.i();
        f0.n(i11, 44, i13);
        f0.f(i13, i11, i13);
        int[] i14 = nk.h.i();
        f0.n(i13, 88, i14);
        f0.f(i14, i13, i14);
        f0.n(i14, 44, i13);
        f0.f(i13, i11, i13);
        f0.n(i13, 3, i11);
        f0.f(i11, i10, i11);
        f0.n(i11, 23, i11);
        f0.f(i11, i12, i11);
        f0.n(i11, 6, i11);
        f0.f(i11, i9, i11);
        f0.n(i11, 2, i11);
        f0.m(i11, i9);
        if (nk.h.n(iArr, i9)) {
            return new g0(i11);
        }
        return null;
    }

    @Override // fk.f
    public fk.f o() {
        int[] i9 = nk.h.i();
        f0.m(this.f41497g, i9);
        return new g0(i9);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        int[] i9 = nk.h.i();
        f0.o(this.f41497g, ((g0) fVar).f41497g, i9);
        return new g0(i9);
    }

    @Override // fk.f
    public boolean s() {
        return nk.h.q(this.f41497g, 0) == 1;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.h.J(this.f41497g);
    }
}
