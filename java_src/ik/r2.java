package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class r2 extends f.a {

    /* renamed from: g  reason: collision with root package name */
    protected long[] f41598g;

    public r2() {
        this.f41598g = nk.m.c();
    }

    public r2(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 571) {
            throw new IllegalArgumentException("x value invalid for SecT571FieldElement");
        }
        this.f41598g = q2.h(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public r2(long[] jArr) {
        this.f41598g = jArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        long[] c10 = nk.m.c();
        q2.b(this.f41598g, ((r2) fVar).f41598g, c10);
        return new r2(c10);
    }

    @Override // fk.f
    public fk.f b() {
        long[] c10 = nk.m.c();
        q2.f(this.f41598g, c10);
        return new r2(c10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        return j(fVar.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof r2) {
            return nk.m.e(this.f41598g, ((r2) obj).f41598g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return 571;
    }

    @Override // fk.f
    public fk.f g() {
        long[] c10 = nk.m.c();
        q2.n(this.f41598g, c10);
        return new r2(c10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.m.f(this.f41598g);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.w(this.f41598g, 0, 9) ^ 5711052;
    }

    @Override // fk.f
    public boolean i() {
        return nk.m.g(this.f41598g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        long[] c10 = nk.m.c();
        q2.o(this.f41598g, ((r2) fVar).f41598g, c10);
        return new r2(c10);
    }

    @Override // fk.f
    public fk.f k(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        return l(fVar, fVar2, fVar3);
    }

    @Override // fk.f
    public fk.f l(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        long[] jArr = this.f41598g;
        long[] jArr2 = ((r2) fVar).f41598g;
        long[] jArr3 = ((r2) fVar2).f41598g;
        long[] jArr4 = ((r2) fVar3).f41598g;
        long[] d10 = nk.m.d();
        q2.p(jArr, jArr2, d10);
        q2.p(jArr3, jArr4, d10);
        long[] c10 = nk.m.c();
        q2.t(d10, c10);
        return new r2(c10);
    }

    @Override // fk.f
    public fk.f m() {
        return this;
    }

    @Override // fk.f
    public fk.f n() {
        long[] c10 = nk.m.c();
        q2.v(this.f41598g, c10);
        return new r2(c10);
    }

    @Override // fk.f
    public fk.f o() {
        long[] c10 = nk.m.c();
        q2.w(this.f41598g, c10);
        return new r2(c10);
    }

    @Override // fk.f
    public fk.f p(fk.f fVar, fk.f fVar2) {
        long[] jArr = this.f41598g;
        long[] jArr2 = ((r2) fVar).f41598g;
        long[] jArr3 = ((r2) fVar2).f41598g;
        long[] d10 = nk.m.d();
        q2.x(jArr, d10);
        q2.p(jArr2, jArr3, d10);
        long[] c10 = nk.m.c();
        q2.t(d10, c10);
        return new r2(c10);
    }

    @Override // fk.f
    public fk.f q(int i9) {
        if (i9 < 1) {
            return this;
        }
        long[] c10 = nk.m.c();
        q2.y(this.f41598g, i9, c10);
        return new r2(c10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        return a(fVar);
    }

    @Override // fk.f
    public boolean s() {
        return (this.f41598g[0] & 1) != 0;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.m.h(this.f41598g);
    }

    @Override // fk.f.a
    public fk.f u() {
        long[] c10 = nk.m.c();
        q2.i(this.f41598g, c10);
        return new r2(c10);
    }

    @Override // fk.f.a
    public boolean v() {
        return true;
    }

    @Override // fk.f.a
    public int w() {
        return q2.z(this.f41598g);
    }
}
