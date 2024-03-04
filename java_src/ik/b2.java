package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class b2 extends f.a {

    /* renamed from: g  reason: collision with root package name */
    protected long[] f41453g;

    public b2() {
        this.f41453g = nk.h.j();
    }

    public b2(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 239) {
            throw new IllegalArgumentException("x value invalid for SecT239FieldElement");
        }
        this.f41453g = a2.e(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b2(long[] jArr) {
        this.f41453g = jArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        long[] j10 = nk.h.j();
        a2.a(this.f41453g, ((b2) fVar).f41453g, j10);
        return new b2(j10);
    }

    @Override // fk.f
    public fk.f b() {
        long[] j10 = nk.h.j();
        a2.c(this.f41453g, j10);
        return new b2(j10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        return j(fVar.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b2) {
            return nk.h.o(this.f41453g, ((b2) obj).f41453g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return 239;
    }

    @Override // fk.f
    public fk.f g() {
        long[] j10 = nk.h.j();
        a2.l(this.f41453g, j10);
        return new b2(j10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.h.u(this.f41453g);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.w(this.f41453g, 0, 4) ^ 23900158;
    }

    @Override // fk.f
    public boolean i() {
        return nk.h.w(this.f41453g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        long[] j10 = nk.h.j();
        a2.m(this.f41453g, ((b2) fVar).f41453g, j10);
        return new b2(j10);
    }

    @Override // fk.f
    public fk.f k(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        return l(fVar, fVar2, fVar3);
    }

    @Override // fk.f
    public fk.f l(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        long[] jArr = this.f41453g;
        long[] jArr2 = ((b2) fVar).f41453g;
        long[] jArr3 = ((b2) fVar2).f41453g;
        long[] jArr4 = ((b2) fVar3).f41453g;
        long[] l10 = nk.h.l();
        a2.n(jArr, jArr2, l10);
        a2.n(jArr3, jArr4, l10);
        long[] j10 = nk.h.j();
        a2.o(l10, j10);
        return new b2(j10);
    }

    @Override // fk.f
    public fk.f m() {
        return this;
    }

    @Override // fk.f
    public fk.f n() {
        long[] j10 = nk.h.j();
        a2.p(this.f41453g, j10);
        return new b2(j10);
    }

    @Override // fk.f
    public fk.f o() {
        long[] j10 = nk.h.j();
        a2.q(this.f41453g, j10);
        return new b2(j10);
    }

    @Override // fk.f
    public fk.f p(fk.f fVar, fk.f fVar2) {
        long[] jArr = this.f41453g;
        long[] jArr2 = ((b2) fVar).f41453g;
        long[] jArr3 = ((b2) fVar2).f41453g;
        long[] l10 = nk.h.l();
        a2.r(jArr, l10);
        a2.n(jArr2, jArr3, l10);
        long[] j10 = nk.h.j();
        a2.o(l10, j10);
        return new b2(j10);
    }

    @Override // fk.f
    public fk.f q(int i9) {
        if (i9 < 1) {
            return this;
        }
        long[] j10 = nk.h.j();
        a2.s(this.f41453g, i9, j10);
        return new b2(j10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        return a(fVar);
    }

    @Override // fk.f
    public boolean s() {
        return (this.f41453g[0] & 1) != 0;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.h.K(this.f41453g);
    }

    @Override // fk.f.a
    public fk.f u() {
        long[] j10 = nk.h.j();
        a2.f(this.f41453g, j10);
        return new b2(j10);
    }

    @Override // fk.f.a
    public boolean v() {
        return true;
    }

    @Override // fk.f.a
    public int w() {
        return a2.t(this.f41453g);
    }
}
