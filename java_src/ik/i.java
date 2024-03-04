package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class i extends f.b {

    /* renamed from: h  reason: collision with root package name */
    public static final BigInteger f41508h = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF"));

    /* renamed from: g  reason: collision with root package name */
    protected int[] f41509g;

    public i() {
        this.f41509g = nk.e.d();
    }

    public i(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f41508h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP160R1FieldElement");
        }
        this.f41509g = h.c(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public i(int[] iArr) {
        this.f41509g = iArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        int[] d10 = nk.e.d();
        h.a(this.f41509g, ((i) fVar).f41509g, d10);
        return new i(d10);
    }

    @Override // fk.f
    public fk.f b() {
        int[] d10 = nk.e.d();
        h.b(this.f41509g, d10);
        return new i(d10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        int[] d10 = nk.e.d();
        h.d(((i) fVar).f41509g, d10);
        h.f(d10, this.f41509g, d10);
        return new i(d10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            return nk.e.f(this.f41509g, ((i) obj).f41509g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return f41508h.bitLength();
    }

    @Override // fk.f
    public fk.f g() {
        int[] d10 = nk.e.d();
        h.d(this.f41509g, d10);
        return new i(d10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.e.j(this.f41509g);
    }

    public int hashCode() {
        return f41508h.hashCode() ^ org.bouncycastle.util.a.v(this.f41509g, 0, 5);
    }

    @Override // fk.f
    public boolean i() {
        return nk.e.k(this.f41509g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        int[] d10 = nk.e.d();
        h.f(this.f41509g, ((i) fVar).f41509g, d10);
        return new i(d10);
    }

    @Override // fk.f
    public fk.f m() {
        int[] d10 = nk.e.d();
        h.h(this.f41509g, d10);
        return new i(d10);
    }

    @Override // fk.f
    public fk.f n() {
        int[] iArr = this.f41509g;
        if (nk.e.k(iArr) || nk.e.j(iArr)) {
            return this;
        }
        int[] d10 = nk.e.d();
        h.m(iArr, d10);
        h.f(d10, iArr, d10);
        int[] d11 = nk.e.d();
        h.n(d10, 2, d11);
        h.f(d11, d10, d11);
        h.n(d11, 4, d10);
        h.f(d10, d11, d10);
        h.n(d10, 8, d11);
        h.f(d11, d10, d11);
        h.n(d11, 16, d10);
        h.f(d10, d11, d10);
        h.n(d10, 32, d11);
        h.f(d11, d10, d11);
        h.n(d11, 64, d10);
        h.f(d10, d11, d10);
        h.m(d10, d11);
        h.f(d11, iArr, d11);
        h.n(d11, 29, d11);
        h.m(d11, d10);
        if (nk.e.f(iArr, d10)) {
            return new i(d11);
        }
        return null;
    }

    @Override // fk.f
    public fk.f o() {
        int[] d10 = nk.e.d();
        h.m(this.f41509g, d10);
        return new i(d10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        int[] d10 = nk.e.d();
        h.o(this.f41509g, ((i) fVar).f41509g, d10);
        return new i(d10);
    }

    @Override // fk.f
    public boolean s() {
        return nk.e.h(this.f41509g, 0) == 1;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.e.u(this.f41509g);
    }
}
