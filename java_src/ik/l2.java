package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class l2 extends f.a {

    /* renamed from: g  reason: collision with root package name */
    protected long[] f41544g;

    public l2() {
        this.f41544g = nk.k.c();
    }

    public l2(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 409) {
            throw new IllegalArgumentException("x value invalid for SecT409FieldElement");
        }
        this.f41544g = k2.e(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public l2(long[] jArr) {
        this.f41544g = jArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        long[] c10 = nk.k.c();
        k2.a(this.f41544g, ((l2) fVar).f41544g, c10);
        return new l2(c10);
    }

    @Override // fk.f
    public fk.f b() {
        long[] c10 = nk.k.c();
        k2.c(this.f41544g, c10);
        return new l2(c10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        return j(fVar.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l2) {
            return nk.k.e(this.f41544g, ((l2) obj).f41544g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return 409;
    }

    @Override // fk.f
    public fk.f g() {
        long[] c10 = nk.k.c();
        k2.l(this.f41544g, c10);
        return new l2(c10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.k.f(this.f41544g);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.w(this.f41544g, 0, 7) ^ 4090087;
    }

    @Override // fk.f
    public boolean i() {
        return nk.k.g(this.f41544g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        long[] c10 = nk.k.c();
        k2.m(this.f41544g, ((l2) fVar).f41544g, c10);
        return new l2(c10);
    }

    @Override // fk.f
    public fk.f k(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        return l(fVar, fVar2, fVar3);
    }

    @Override // fk.f
    public fk.f l(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        long[] jArr = this.f41544g;
        long[] jArr2 = ((l2) fVar).f41544g;
        long[] jArr3 = ((l2) fVar2).f41544g;
        long[] jArr4 = ((l2) fVar3).f41544g;
        long[] l10 = nk.n.l(13);
        k2.n(jArr, jArr2, l10);
        k2.n(jArr3, jArr4, l10);
        long[] c10 = nk.k.c();
        k2.o(l10, c10);
        return new l2(c10);
    }

    @Override // fk.f
    public fk.f m() {
        return this;
    }

    @Override // fk.f
    public fk.f n() {
        long[] c10 = nk.k.c();
        k2.p(this.f41544g, c10);
        return new l2(c10);
    }

    @Override // fk.f
    public fk.f o() {
        long[] c10 = nk.k.c();
        k2.q(this.f41544g, c10);
        return new l2(c10);
    }

    @Override // fk.f
    public fk.f p(fk.f fVar, fk.f fVar2) {
        long[] jArr = this.f41544g;
        long[] jArr2 = ((l2) fVar).f41544g;
        long[] jArr3 = ((l2) fVar2).f41544g;
        long[] l10 = nk.n.l(13);
        k2.r(jArr, l10);
        k2.n(jArr2, jArr3, l10);
        long[] c10 = nk.k.c();
        k2.o(l10, c10);
        return new l2(c10);
    }

    @Override // fk.f
    public fk.f q(int i9) {
        if (i9 < 1) {
            return this;
        }
        long[] c10 = nk.k.c();
        k2.s(this.f41544g, i9, c10);
        return new l2(c10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        return a(fVar);
    }

    @Override // fk.f
    public boolean s() {
        return (this.f41544g[0] & 1) != 0;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.k.h(this.f41544g);
    }

    @Override // fk.f.a
    public fk.f u() {
        long[] c10 = nk.k.c();
        k2.f(this.f41544g, c10);
        return new l2(c10);
    }

    @Override // fk.f.a
    public boolean v() {
        return true;
    }

    @Override // fk.f.a
    public int w() {
        return k2.t(this.f41544g);
    }
}
