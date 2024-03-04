package gk;

import fk.f;
import java.math.BigInteger;
import nk.h;
/* loaded from: classes7.dex */
public class c extends f.b {

    /* renamed from: h  reason: collision with root package name */
    public static final BigInteger f40210h = h.J(b.f40208a);

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f40211i = {1242472624, -991028441, -1389370248, 792926214, 1039914919, 726466713, 1338105611, 730014848};

    /* renamed from: g  reason: collision with root package name */
    protected int[] f40212g;

    public c() {
        this.f40212g = h.i();
    }

    public c(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f40210h) >= 0) {
            throw new IllegalArgumentException("x value invalid for Curve25519FieldElement");
        }
        this.f40212g = b.d(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(int[] iArr) {
        this.f40212g = iArr;
    }

    @Override // fk.f
    public f a(f fVar) {
        int[] i9 = h.i();
        b.a(this.f40212g, ((c) fVar).f40212g, i9);
        return new c(i9);
    }

    @Override // fk.f
    public f b() {
        int[] i9 = h.i();
        b.b(this.f40212g, i9);
        return new c(i9);
    }

    @Override // fk.f
    public f d(f fVar) {
        int[] i9 = h.i();
        b.e(((c) fVar).f40212g, i9);
        b.g(i9, this.f40212g, i9);
        return new c(i9);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            return h.n(this.f40212g, ((c) obj).f40212g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return f40210h.bitLength();
    }

    @Override // fk.f
    public f g() {
        int[] i9 = h.i();
        b.e(this.f40212g, i9);
        return new c(i9);
    }

    @Override // fk.f
    public boolean h() {
        return h.t(this.f40212g);
    }

    public int hashCode() {
        return f40210h.hashCode() ^ org.bouncycastle.util.a.v(this.f40212g, 0, 8);
    }

    @Override // fk.f
    public boolean i() {
        return h.v(this.f40212g);
    }

    @Override // fk.f
    public f j(f fVar) {
        int[] i9 = h.i();
        b.g(this.f40212g, ((c) fVar).f40212g, i9);
        return new c(i9);
    }

    @Override // fk.f
    public f m() {
        int[] i9 = h.i();
        b.i(this.f40212g, i9);
        return new c(i9);
    }

    @Override // fk.f
    public f n() {
        int[] iArr = this.f40212g;
        if (h.v(iArr) || h.t(iArr)) {
            return this;
        }
        int[] i9 = h.i();
        b.n(iArr, i9);
        b.g(i9, iArr, i9);
        b.n(i9, i9);
        b.g(i9, iArr, i9);
        int[] i10 = h.i();
        b.n(i9, i10);
        b.g(i10, iArr, i10);
        int[] i11 = h.i();
        b.o(i10, 3, i11);
        b.g(i11, i9, i11);
        b.o(i11, 4, i9);
        b.g(i9, i10, i9);
        b.o(i9, 4, i11);
        b.g(i11, i10, i11);
        b.o(i11, 15, i10);
        b.g(i10, i11, i10);
        b.o(i10, 30, i11);
        b.g(i11, i10, i11);
        b.o(i11, 60, i10);
        b.g(i10, i11, i10);
        b.o(i10, 11, i11);
        b.g(i11, i9, i11);
        b.o(i11, 120, i9);
        b.g(i9, i10, i9);
        b.n(i9, i9);
        b.n(i9, i10);
        if (h.n(iArr, i10)) {
            return new c(i9);
        }
        b.g(i9, f40211i, i9);
        b.n(i9, i10);
        if (h.n(iArr, i10)) {
            return new c(i9);
        }
        return null;
    }

    @Override // fk.f
    public f o() {
        int[] i9 = h.i();
        b.n(this.f40212g, i9);
        return new c(i9);
    }

    @Override // fk.f
    public f r(f fVar) {
        int[] i9 = h.i();
        b.r(this.f40212g, ((c) fVar).f40212g, i9);
        return new c(i9);
    }

    @Override // fk.f
    public boolean s() {
        return h.q(this.f40212g, 0) == 1;
    }

    @Override // fk.f
    public BigInteger t() {
        return h.J(this.f40212g);
    }
}
