package hk;

import fk.f;
import java.math.BigInteger;
import nk.h;
/* loaded from: classes7.dex */
public class c extends f.b {

    /* renamed from: h  reason: collision with root package name */
    public static final BigInteger f40817h = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF"));

    /* renamed from: g  reason: collision with root package name */
    protected int[] f40818g;

    public c() {
        this.f40818g = h.i();
    }

    public c(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f40817h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SM2P256V1FieldElement");
        }
        this.f40818g = b.d(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(int[] iArr) {
        this.f40818g = iArr;
    }

    @Override // fk.f
    public f a(f fVar) {
        int[] i9 = h.i();
        b.a(this.f40818g, ((c) fVar).f40818g, i9);
        return new c(i9);
    }

    @Override // fk.f
    public f b() {
        int[] i9 = h.i();
        b.b(this.f40818g, i9);
        return new c(i9);
    }

    @Override // fk.f
    public f d(f fVar) {
        int[] i9 = h.i();
        b.e(((c) fVar).f40818g, i9);
        b.g(i9, this.f40818g, i9);
        return new c(i9);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            return h.n(this.f40818g, ((c) obj).f40818g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return f40817h.bitLength();
    }

    @Override // fk.f
    public f g() {
        int[] i9 = h.i();
        b.e(this.f40818g, i9);
        return new c(i9);
    }

    @Override // fk.f
    public boolean h() {
        return h.t(this.f40818g);
    }

    public int hashCode() {
        return f40817h.hashCode() ^ org.bouncycastle.util.a.v(this.f40818g, 0, 8);
    }

    @Override // fk.f
    public boolean i() {
        return h.v(this.f40818g);
    }

    @Override // fk.f
    public f j(f fVar) {
        int[] i9 = h.i();
        b.g(this.f40818g, ((c) fVar).f40818g, i9);
        return new c(i9);
    }

    @Override // fk.f
    public f m() {
        int[] i9 = h.i();
        b.i(this.f40818g, i9);
        return new c(i9);
    }

    @Override // fk.f
    public f n() {
        int[] iArr = this.f40818g;
        if (h.v(iArr) || h.t(iArr)) {
            return this;
        }
        int[] i9 = h.i();
        b.n(iArr, i9);
        b.g(i9, iArr, i9);
        int[] i10 = h.i();
        b.o(i9, 2, i10);
        b.g(i10, i9, i10);
        int[] i11 = h.i();
        b.o(i10, 2, i11);
        b.g(i11, i9, i11);
        b.o(i11, 6, i9);
        b.g(i9, i11, i9);
        int[] i12 = h.i();
        b.o(i9, 12, i12);
        b.g(i12, i9, i12);
        b.o(i12, 6, i9);
        b.g(i9, i11, i9);
        b.n(i9, i11);
        b.g(i11, iArr, i11);
        b.o(i11, 31, i12);
        b.g(i12, i11, i9);
        b.o(i12, 32, i12);
        b.g(i12, i9, i12);
        b.o(i12, 62, i12);
        b.g(i12, i9, i12);
        b.o(i12, 4, i12);
        b.g(i12, i10, i12);
        b.o(i12, 32, i12);
        b.g(i12, iArr, i12);
        b.o(i12, 62, i12);
        b.n(i12, i10);
        if (h.n(iArr, i10)) {
            return new c(i12);
        }
        return null;
    }

    @Override // fk.f
    public f o() {
        int[] i9 = h.i();
        b.n(this.f40818g, i9);
        return new c(i9);
    }

    @Override // fk.f
    public f r(f fVar) {
        int[] i9 = h.i();
        b.q(this.f40818g, ((c) fVar).f40818g, i9);
        return new c(i9);
    }

    @Override // fk.f
    public boolean s() {
        return h.q(this.f40818g, 0) == 1;
    }

    @Override // fk.f
    public BigInteger t() {
        return h.J(this.f40818g);
    }
}
