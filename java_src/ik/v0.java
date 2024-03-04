package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class v0 extends f.a {

    /* renamed from: g  reason: collision with root package name */
    protected long[] f41629g;

    public v0() {
        this.f41629g = nk.d.g();
    }

    public v0(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 113) {
            throw new IllegalArgumentException("x value invalid for SecT113FieldElement");
        }
        this.f41629g = u0.e(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public v0(long[] jArr) {
        this.f41629g = jArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        long[] g10 = nk.d.g();
        u0.a(this.f41629g, ((v0) fVar).f41629g, g10);
        return new v0(g10);
    }

    @Override // fk.f
    public fk.f b() {
        long[] g10 = nk.d.g();
        u0.c(this.f41629g, g10);
        return new v0(g10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        return j(fVar.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v0) {
            return nk.d.k(this.f41629g, ((v0) obj).f41629g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return 113;
    }

    @Override // fk.f
    public fk.f g() {
        long[] g10 = nk.d.g();
        u0.j(this.f41629g, g10);
        return new v0(g10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.d.p(this.f41629g);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.w(this.f41629g, 0, 2) ^ 113009;
    }

    @Override // fk.f
    public boolean i() {
        return nk.d.r(this.f41629g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        long[] g10 = nk.d.g();
        u0.k(this.f41629g, ((v0) fVar).f41629g, g10);
        return new v0(g10);
    }

    @Override // fk.f
    public fk.f k(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        return l(fVar, fVar2, fVar3);
    }

    @Override // fk.f
    public fk.f l(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        long[] jArr = this.f41629g;
        long[] jArr2 = ((v0) fVar).f41629g;
        long[] jArr3 = ((v0) fVar2).f41629g;
        long[] jArr4 = ((v0) fVar3).f41629g;
        long[] i9 = nk.d.i();
        u0.l(jArr, jArr2, i9);
        u0.l(jArr3, jArr4, i9);
        long[] g10 = nk.d.g();
        u0.m(i9, g10);
        return new v0(g10);
    }

    @Override // fk.f
    public fk.f m() {
        return this;
    }

    @Override // fk.f
    public fk.f n() {
        long[] g10 = nk.d.g();
        u0.n(this.f41629g, g10);
        return new v0(g10);
    }

    @Override // fk.f
    public fk.f o() {
        long[] g10 = nk.d.g();
        u0.o(this.f41629g, g10);
        return new v0(g10);
    }

    @Override // fk.f
    public fk.f p(fk.f fVar, fk.f fVar2) {
        long[] jArr = this.f41629g;
        long[] jArr2 = ((v0) fVar).f41629g;
        long[] jArr3 = ((v0) fVar2).f41629g;
        long[] i9 = nk.d.i();
        u0.p(jArr, i9);
        u0.l(jArr2, jArr3, i9);
        long[] g10 = nk.d.g();
        u0.m(i9, g10);
        return new v0(g10);
    }

    @Override // fk.f
    public fk.f q(int i9) {
        if (i9 < 1) {
            return this;
        }
        long[] g10 = nk.d.g();
        u0.q(this.f41629g, i9, g10);
        return new v0(g10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        return a(fVar);
    }

    @Override // fk.f
    public boolean s() {
        return (this.f41629g[0] & 1) != 0;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.d.y(this.f41629g);
    }

    @Override // fk.f.a
    public fk.f u() {
        long[] g10 = nk.d.g();
        u0.f(this.f41629g, g10);
        return new v0(g10);
    }

    @Override // fk.f.a
    public boolean v() {
        return true;
    }

    @Override // fk.f.a
    public int w() {
        return u0.r(this.f41629g);
    }
}
