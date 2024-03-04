package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class c extends f.b {

    /* renamed from: h  reason: collision with root package name */
    public static final BigInteger f41454h = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF"));

    /* renamed from: g  reason: collision with root package name */
    protected int[] f41455g;

    public c() {
        this.f41455g = nk.d.f();
    }

    public c(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f41454h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP128R1FieldElement");
        }
        this.f41455g = b.d(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(int[] iArr) {
        this.f41455g = iArr;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        int[] f10 = nk.d.f();
        b.a(this.f41455g, ((c) fVar).f41455g, f10);
        return new c(f10);
    }

    @Override // fk.f
    public fk.f b() {
        int[] f10 = nk.d.f();
        b.b(this.f41455g, f10);
        return new c(f10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        int[] f10 = nk.d.f();
        b.e(((c) fVar).f41455g, f10);
        b.g(f10, this.f41455g, f10);
        return new c(f10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            return nk.d.j(this.f41455g, ((c) obj).f41455g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return f41454h.bitLength();
    }

    @Override // fk.f
    public fk.f g() {
        int[] f10 = nk.d.f();
        b.e(this.f41455g, f10);
        return new c(f10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.d.o(this.f41455g);
    }

    public int hashCode() {
        return f41454h.hashCode() ^ org.bouncycastle.util.a.v(this.f41455g, 0, 4);
    }

    @Override // fk.f
    public boolean i() {
        return nk.d.q(this.f41455g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        int[] f10 = nk.d.f();
        b.g(this.f41455g, ((c) fVar).f41455g, f10);
        return new c(f10);
    }

    @Override // fk.f
    public fk.f m() {
        int[] f10 = nk.d.f();
        b.i(this.f41455g, f10);
        return new c(f10);
    }

    @Override // fk.f
    public fk.f n() {
        int[] iArr = this.f41455g;
        if (nk.d.q(iArr) || nk.d.o(iArr)) {
            return this;
        }
        int[] f10 = nk.d.f();
        b.n(iArr, f10);
        b.g(f10, iArr, f10);
        int[] f11 = nk.d.f();
        b.o(f10, 2, f11);
        b.g(f11, f10, f11);
        int[] f12 = nk.d.f();
        b.o(f11, 4, f12);
        b.g(f12, f11, f12);
        b.o(f12, 2, f11);
        b.g(f11, f10, f11);
        b.o(f11, 10, f10);
        b.g(f10, f11, f10);
        b.o(f10, 10, f12);
        b.g(f12, f11, f12);
        b.n(f12, f11);
        b.g(f11, iArr, f11);
        b.o(f11, 95, f11);
        b.n(f11, f12);
        if (nk.d.j(iArr, f12)) {
            return new c(f11);
        }
        return null;
    }

    @Override // fk.f
    public fk.f o() {
        int[] f10 = nk.d.f();
        b.n(this.f41455g, f10);
        return new c(f10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        int[] f10 = nk.d.f();
        b.q(this.f41455g, ((c) fVar).f41455g, f10);
        return new c(f10);
    }

    @Override // fk.f
    public boolean s() {
        return nk.d.m(this.f41455g, 0) == 1;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.d.x(this.f41455g);
    }
}
