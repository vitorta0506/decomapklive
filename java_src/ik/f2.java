package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class f2 extends f.a {

    /* renamed from: g  reason: collision with root package name */
    protected long[] f41489g;

    public f2() {
        this.f41489g = nk.i.c();
    }

    public f2(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 283) {
            throw new IllegalArgumentException("x value invalid for SecT283FieldElement");
        }
        this.f41489g = e2.e(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public f2(long[] jArr) {
        this.f41489g = jArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        long[] c10 = nk.i.c();
        e2.a(this.f41489g, ((f2) fVar).f41489g, c10);
        return new f2(c10);
    }

    @Override // fk.f
    public fk.f b() {
        long[] c10 = nk.i.c();
        e2.c(this.f41489g, c10);
        return new f2(c10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        return j(fVar.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f2) {
            return nk.i.e(this.f41489g, ((f2) obj).f41489g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return 283;
    }

    @Override // fk.f
    public fk.f g() {
        long[] c10 = nk.i.c();
        e2.l(this.f41489g, c10);
        return new f2(c10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.i.f(this.f41489g);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.w(this.f41489g, 0, 5) ^ 2831275;
    }

    @Override // fk.f
    public boolean i() {
        return nk.i.g(this.f41489g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        long[] c10 = nk.i.c();
        e2.m(this.f41489g, ((f2) fVar).f41489g, c10);
        return new f2(c10);
    }

    @Override // fk.f
    public fk.f k(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        return l(fVar, fVar2, fVar3);
    }

    @Override // fk.f
    public fk.f l(fk.f fVar, fk.f fVar2, fk.f fVar3) {
        long[] jArr = this.f41489g;
        long[] jArr2 = ((f2) fVar).f41489g;
        long[] jArr3 = ((f2) fVar2).f41489g;
        long[] jArr4 = ((f2) fVar3).f41489g;
        long[] l10 = nk.n.l(9);
        e2.n(jArr, jArr2, l10);
        e2.n(jArr3, jArr4, l10);
        long[] c10 = nk.i.c();
        e2.o(l10, c10);
        return new f2(c10);
    }

    @Override // fk.f
    public fk.f m() {
        return this;
    }

    @Override // fk.f
    public fk.f n() {
        long[] c10 = nk.i.c();
        e2.p(this.f41489g, c10);
        return new f2(c10);
    }

    @Override // fk.f
    public fk.f o() {
        long[] c10 = nk.i.c();
        e2.q(this.f41489g, c10);
        return new f2(c10);
    }

    @Override // fk.f
    public fk.f p(fk.f fVar, fk.f fVar2) {
        long[] jArr = this.f41489g;
        long[] jArr2 = ((f2) fVar).f41489g;
        long[] jArr3 = ((f2) fVar2).f41489g;
        long[] l10 = nk.n.l(9);
        e2.r(jArr, l10);
        e2.n(jArr2, jArr3, l10);
        long[] c10 = nk.i.c();
        e2.o(l10, c10);
        return new f2(c10);
    }

    @Override // fk.f
    public fk.f q(int i9) {
        if (i9 < 1) {
            return this;
        }
        long[] c10 = nk.i.c();
        e2.s(this.f41489g, i9, c10);
        return new f2(c10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        return a(fVar);
    }

    @Override // fk.f
    public boolean s() {
        return (this.f41489g[0] & 1) != 0;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.i.h(this.f41489g);
    }

    @Override // fk.f.a
    public fk.f u() {
        long[] c10 = nk.i.c();
        e2.f(this.f41489g, c10);
        return new f2(c10);
    }

    @Override // fk.f.a
    public boolean v() {
        return true;
    }

    @Override // fk.f.a
    public int w() {
        return e2.t(this.f41489g);
    }
}
