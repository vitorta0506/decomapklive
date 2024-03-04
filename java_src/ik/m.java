package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class m extends f.b {

    /* renamed from: h  reason: collision with root package name */
    public static final BigInteger f41545h = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"));

    /* renamed from: g  reason: collision with root package name */
    protected int[] f41546g;

    public m() {
        this.f41546g = nk.e.d();
    }

    public m(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f41545h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP160R2FieldElement");
        }
        this.f41546g = l.c(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public m(int[] iArr) {
        this.f41546g = iArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        int[] d10 = nk.e.d();
        l.a(this.f41546g, ((m) fVar).f41546g, d10);
        return new m(d10);
    }

    @Override // fk.f
    public fk.f b() {
        int[] d10 = nk.e.d();
        l.b(this.f41546g, d10);
        return new m(d10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        int[] d10 = nk.e.d();
        l.d(((m) fVar).f41546g, d10);
        l.f(d10, this.f41546g, d10);
        return new m(d10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m) {
            return nk.e.f(this.f41546g, ((m) obj).f41546g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return f41545h.bitLength();
    }

    @Override // fk.f
    public fk.f g() {
        int[] d10 = nk.e.d();
        l.d(this.f41546g, d10);
        return new m(d10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.e.j(this.f41546g);
    }

    public int hashCode() {
        return f41545h.hashCode() ^ org.bouncycastle.util.a.v(this.f41546g, 0, 5);
    }

    @Override // fk.f
    public boolean i() {
        return nk.e.k(this.f41546g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        int[] d10 = nk.e.d();
        l.f(this.f41546g, ((m) fVar).f41546g, d10);
        return new m(d10);
    }

    @Override // fk.f
    public fk.f m() {
        int[] d10 = nk.e.d();
        l.h(this.f41546g, d10);
        return new m(d10);
    }

    @Override // fk.f
    public fk.f n() {
        int[] iArr = this.f41546g;
        if (nk.e.k(iArr) || nk.e.j(iArr)) {
            return this;
        }
        int[] d10 = nk.e.d();
        l.m(iArr, d10);
        l.f(d10, iArr, d10);
        int[] d11 = nk.e.d();
        l.m(d10, d11);
        l.f(d11, iArr, d11);
        int[] d12 = nk.e.d();
        l.m(d11, d12);
        l.f(d12, iArr, d12);
        int[] d13 = nk.e.d();
        l.n(d12, 3, d13);
        l.f(d13, d11, d13);
        l.n(d13, 7, d12);
        l.f(d12, d13, d12);
        l.n(d12, 3, d13);
        l.f(d13, d11, d13);
        int[] d14 = nk.e.d();
        l.n(d13, 14, d14);
        l.f(d14, d12, d14);
        l.n(d14, 31, d12);
        l.f(d12, d14, d12);
        l.n(d12, 62, d14);
        l.f(d14, d12, d14);
        l.n(d14, 3, d12);
        l.f(d12, d11, d12);
        l.n(d12, 18, d12);
        l.f(d12, d13, d12);
        l.n(d12, 2, d12);
        l.f(d12, iArr, d12);
        l.n(d12, 3, d12);
        l.f(d12, d10, d12);
        l.n(d12, 6, d12);
        l.f(d12, d11, d12);
        l.n(d12, 2, d12);
        l.f(d12, iArr, d12);
        l.m(d12, d10);
        if (nk.e.f(iArr, d10)) {
            return new m(d12);
        }
        return null;
    }

    @Override // fk.f
    public fk.f o() {
        int[] d10 = nk.e.d();
        l.m(this.f41546g, d10);
        return new m(d10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        int[] d10 = nk.e.d();
        l.o(this.f41546g, ((m) fVar).f41546g, d10);
        return new m(d10);
    }

    @Override // fk.f
    public boolean s() {
        return nk.e.h(this.f41546g, 0) == 1;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.e.u(this.f41546g);
    }
}
