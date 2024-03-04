package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class k0 extends f.b {

    /* renamed from: h  reason: collision with root package name */
    public static final BigInteger f41534h = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"));

    /* renamed from: g  reason: collision with root package name */
    protected int[] f41535g;

    public k0() {
        this.f41535g = nk.h.i();
    }

    public k0(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f41534h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256R1FieldElement");
        }
        this.f41535g = j0.d(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public k0(int[] iArr) {
        this.f41535g = iArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        int[] i9 = nk.h.i();
        j0.a(this.f41535g, ((k0) fVar).f41535g, i9);
        return new k0(i9);
    }

    @Override // fk.f
    public fk.f b() {
        int[] i9 = nk.h.i();
        j0.b(this.f41535g, i9);
        return new k0(i9);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        int[] i9 = nk.h.i();
        j0.e(((k0) fVar).f41535g, i9);
        j0.g(i9, this.f41535g, i9);
        return new k0(i9);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k0) {
            return nk.h.n(this.f41535g, ((k0) obj).f41535g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return f41534h.bitLength();
    }

    @Override // fk.f
    public fk.f g() {
        int[] i9 = nk.h.i();
        j0.e(this.f41535g, i9);
        return new k0(i9);
    }

    @Override // fk.f
    public boolean h() {
        return nk.h.t(this.f41535g);
    }

    public int hashCode() {
        return f41534h.hashCode() ^ org.bouncycastle.util.a.v(this.f41535g, 0, 8);
    }

    @Override // fk.f
    public boolean i() {
        return nk.h.v(this.f41535g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        int[] i9 = nk.h.i();
        j0.g(this.f41535g, ((k0) fVar).f41535g, i9);
        return new k0(i9);
    }

    @Override // fk.f
    public fk.f m() {
        int[] i9 = nk.h.i();
        j0.i(this.f41535g, i9);
        return new k0(i9);
    }

    @Override // fk.f
    public fk.f n() {
        int[] iArr = this.f41535g;
        if (nk.h.v(iArr) || nk.h.t(iArr)) {
            return this;
        }
        int[] i9 = nk.h.i();
        int[] i10 = nk.h.i();
        j0.n(iArr, i9);
        j0.g(i9, iArr, i9);
        j0.o(i9, 2, i10);
        j0.g(i10, i9, i10);
        j0.o(i10, 4, i9);
        j0.g(i9, i10, i9);
        j0.o(i9, 8, i10);
        j0.g(i10, i9, i10);
        j0.o(i10, 16, i9);
        j0.g(i9, i10, i9);
        j0.o(i9, 32, i9);
        j0.g(i9, iArr, i9);
        j0.o(i9, 96, i9);
        j0.g(i9, iArr, i9);
        j0.o(i9, 94, i9);
        j0.n(i9, i10);
        if (nk.h.n(iArr, i10)) {
            return new k0(i9);
        }
        return null;
    }

    @Override // fk.f
    public fk.f o() {
        int[] i9 = nk.h.i();
        j0.n(this.f41535g, i9);
        return new k0(i9);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        int[] i9 = nk.h.i();
        j0.q(this.f41535g, ((k0) fVar).f41535g, i9);
        return new k0(i9);
    }

    @Override // fk.f
    public boolean s() {
        return nk.h.q(this.f41535g, 0) == 1;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.h.J(this.f41535g);
    }
}
