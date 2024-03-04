package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class h1 extends f.a {

    /* renamed from: g  reason: collision with root package name */
    protected long[] f41507g;

    public h1() {
        this.f41507g = nk.f.i();
    }

    public h1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 163) {
            throw new IllegalArgumentException("x value invalid for SecT163FieldElement");
        }
        this.f41507g = g1.e(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h1(long[] jArr) {
        this.f41507g = jArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        long[] i9 = nk.f.i();
        g1.a(this.f41507g, ((h1) fVar).f41507g, i9);
        return new h1(i9);
    }

    @Override // fk.f
    public fk.f b() {
        long[] i9 = nk.f.i();
        g1.c(this.f41507g, i9);
        return new h1(i9);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        return j(fVar.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h1) {
            return nk.f.n(this.f41507g, ((h1) obj).f41507g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return 163;
    }

    @Override // fk.f
    public fk.f g() {
        long[] i9 = nk.f.i();
        g1.k(this.f41507g, i9);
        return new h1(i9);
    }

    @Override // fk.f
    public boolean h() {
        return nk.f.t(this.f41507g);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.w(this.f41507g, 0, 3) ^ 163763;
    }

    @Override // fk.f
    public boolean i() {
        return nk.f.v(this.f41507g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        long[] i9 = nk.f.i();
        g1.l(this.f41507g, ((h1) fVar).f41507g, i9);
        return new h1(i9);
    }

    @Override // fk.f
    public fk.f k(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        return l(fVar, fVar2, fVar3);
    }

    @Override // fk.f
    public fk.f l(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        long[] jArr = this.f41507g;
        long[] jArr2 = ((h1) fVar).f41507g;
        long[] jArr3 = ((h1) fVar2).f41507g;
        long[] jArr4 = ((h1) fVar3).f41507g;
        long[] k10 = nk.f.k();
        g1.m(jArr, jArr2, k10);
        g1.m(jArr3, jArr4, k10);
        long[] i9 = nk.f.i();
        g1.n(k10, i9);
        return new h1(i9);
    }

    @Override // fk.f
    public fk.f m() {
        return this;
    }

    @Override // fk.f
    public fk.f n() {
        long[] i9 = nk.f.i();
        g1.o(this.f41507g, i9);
        return new h1(i9);
    }

    @Override // fk.f
    public fk.f o() {
        long[] i9 = nk.f.i();
        g1.p(this.f41507g, i9);
        return new h1(i9);
    }

    @Override // fk.f
    public fk.f p(fk.f fVar, fk.f fVar2) {
        long[] jArr = this.f41507g;
        long[] jArr2 = ((h1) fVar).f41507g;
        long[] jArr3 = ((h1) fVar2).f41507g;
        long[] k10 = nk.f.k();
        g1.q(jArr, k10);
        g1.m(jArr2, jArr3, k10);
        long[] i9 = nk.f.i();
        g1.n(k10, i9);
        return new h1(i9);
    }

    @Override // fk.f
    public fk.f q(int i9) {
        if (i9 < 1) {
            return this;
        }
        long[] i10 = nk.f.i();
        g1.r(this.f41507g, i9, i10);
        return new h1(i10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        return a(fVar);
    }

    @Override // fk.f
    public boolean s() {
        return (this.f41507g[0] & 1) != 0;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.f.I(this.f41507g);
    }

    @Override // fk.f.a
    public fk.f u() {
        long[] i9 = nk.f.i();
        g1.f(this.f41507g, i9);
        return new h1(i9);
    }

    @Override // fk.f.a
    public boolean v() {
        return true;
    }

    @Override // fk.f.a
    public int w() {
        return g1.s(this.f41507g);
    }
}
