package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class b1 extends f.a {

    /* renamed from: g  reason: collision with root package name */
    protected long[] f41452g;

    public b1() {
        this.f41452g = nk.f.i();
    }

    public b1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 131) {
            throw new IllegalArgumentException("x value invalid for SecT131FieldElement");
        }
        this.f41452g = a1.e(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b1(long[] jArr) {
        this.f41452g = jArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        long[] i9 = nk.f.i();
        a1.a(this.f41452g, ((b1) fVar).f41452g, i9);
        return new b1(i9);
    }

    @Override // fk.f
    public fk.f b() {
        long[] i9 = nk.f.i();
        a1.c(this.f41452g, i9);
        return new b1(i9);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        return j(fVar.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b1) {
            return nk.f.n(this.f41452g, ((b1) obj).f41452g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return 131;
    }

    @Override // fk.f
    public fk.f g() {
        long[] i9 = nk.f.i();
        a1.k(this.f41452g, i9);
        return new b1(i9);
    }

    @Override // fk.f
    public boolean h() {
        return nk.f.t(this.f41452g);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.w(this.f41452g, 0, 3) ^ 131832;
    }

    @Override // fk.f
    public boolean i() {
        return nk.f.v(this.f41452g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        long[] i9 = nk.f.i();
        a1.l(this.f41452g, ((b1) fVar).f41452g, i9);
        return new b1(i9);
    }

    @Override // fk.f
    public fk.f k(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        return l(fVar, fVar2, fVar3);
    }

    @Override // fk.f
    public fk.f l(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        long[] jArr = this.f41452g;
        long[] jArr2 = ((b1) fVar).f41452g;
        long[] jArr3 = ((b1) fVar2).f41452g;
        long[] jArr4 = ((b1) fVar3).f41452g;
        long[] l10 = nk.n.l(5);
        a1.m(jArr, jArr2, l10);
        a1.m(jArr3, jArr4, l10);
        long[] i9 = nk.f.i();
        a1.n(l10, i9);
        return new b1(i9);
    }

    @Override // fk.f
    public fk.f m() {
        return this;
    }

    @Override // fk.f
    public fk.f n() {
        long[] i9 = nk.f.i();
        a1.o(this.f41452g, i9);
        return new b1(i9);
    }

    @Override // fk.f
    public fk.f o() {
        long[] i9 = nk.f.i();
        a1.p(this.f41452g, i9);
        return new b1(i9);
    }

    @Override // fk.f
    public fk.f p(fk.f fVar, fk.f fVar2) {
        long[] jArr = this.f41452g;
        long[] jArr2 = ((b1) fVar).f41452g;
        long[] jArr3 = ((b1) fVar2).f41452g;
        long[] l10 = nk.n.l(5);
        a1.q(jArr, l10);
        a1.m(jArr2, jArr3, l10);
        long[] i9 = nk.f.i();
        a1.n(l10, i9);
        return new b1(i9);
    }

    @Override // fk.f
    public fk.f q(int i9) {
        if (i9 < 1) {
            return this;
        }
        long[] i10 = nk.f.i();
        a1.r(this.f41452g, i9, i10);
        return new b1(i10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        return a(fVar);
    }

    @Override // fk.f
    public boolean s() {
        return (this.f41452g[0] & 1) != 0;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.f.I(this.f41452g);
    }

    @Override // fk.f.a
    public fk.f u() {
        long[] i9 = nk.f.i();
        a1.f(this.f41452g, i9);
        return new b1(i9);
    }

    @Override // fk.f.a
    public boolean v() {
        return true;
    }

    @Override // fk.f.a
    public int w() {
        return a1.s(this.f41452g);
    }
}
