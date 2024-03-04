package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class v1 extends f.a {

    /* renamed from: g  reason: collision with root package name */
    protected long[] f41630g;

    public v1() {
        this.f41630g = nk.h.j();
    }

    public v1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 233) {
            throw new IllegalArgumentException("x value invalid for SecT233FieldElement");
        }
        this.f41630g = u1.e(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public v1(long[] jArr) {
        this.f41630g = jArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        long[] j10 = nk.h.j();
        u1.a(this.f41630g, ((v1) fVar).f41630g, j10);
        return new v1(j10);
    }

    @Override // fk.f
    public fk.f b() {
        long[] j10 = nk.h.j();
        u1.c(this.f41630g, j10);
        return new v1(j10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        return j(fVar.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v1) {
            return nk.h.o(this.f41630g, ((v1) obj).f41630g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return 233;
    }

    @Override // fk.f
    public fk.f g() {
        long[] j10 = nk.h.j();
        u1.l(this.f41630g, j10);
        return new v1(j10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.h.u(this.f41630g);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.w(this.f41630g, 0, 4) ^ 2330074;
    }

    @Override // fk.f
    public boolean i() {
        return nk.h.w(this.f41630g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        long[] j10 = nk.h.j();
        u1.m(this.f41630g, ((v1) fVar).f41630g, j10);
        return new v1(j10);
    }

    @Override // fk.f
    public fk.f k(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        return l(fVar, fVar2, fVar3);
    }

    @Override // fk.f
    public fk.f l(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        long[] jArr = this.f41630g;
        long[] jArr2 = ((v1) fVar).f41630g;
        long[] jArr3 = ((v1) fVar2).f41630g;
        long[] jArr4 = ((v1) fVar3).f41630g;
        long[] l10 = nk.h.l();
        u1.n(jArr, jArr2, l10);
        u1.n(jArr3, jArr4, l10);
        long[] j10 = nk.h.j();
        u1.o(l10, j10);
        return new v1(j10);
    }

    @Override // fk.f
    public fk.f m() {
        return this;
    }

    @Override // fk.f
    public fk.f n() {
        long[] j10 = nk.h.j();
        u1.p(this.f41630g, j10);
        return new v1(j10);
    }

    @Override // fk.f
    public fk.f o() {
        long[] j10 = nk.h.j();
        u1.q(this.f41630g, j10);
        return new v1(j10);
    }

    @Override // fk.f
    public fk.f p(fk.f fVar, fk.f fVar2) {
        long[] jArr = this.f41630g;
        long[] jArr2 = ((v1) fVar).f41630g;
        long[] jArr3 = ((v1) fVar2).f41630g;
        long[] l10 = nk.h.l();
        u1.r(jArr, l10);
        u1.n(jArr2, jArr3, l10);
        long[] j10 = nk.h.j();
        u1.o(l10, j10);
        return new v1(j10);
    }

    @Override // fk.f
    public fk.f q(int i9) {
        if (i9 < 1) {
            return this;
        }
        long[] j10 = nk.h.j();
        u1.s(this.f41630g, i9, j10);
        return new v1(j10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        return a(fVar);
    }

    @Override // fk.f
    public boolean s() {
        return (this.f41630g[0] & 1) != 0;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.h.K(this.f41630g);
    }

    @Override // fk.f.a
    public fk.f u() {
        long[] j10 = nk.h.j();
        u1.f(this.f41630g, j10);
        return new v1(j10);
    }

    @Override // fk.f.a
    public boolean v() {
        return true;
    }

    @Override // fk.f.a
    public int w() {
        return u1.t(this.f41630g);
    }
}
