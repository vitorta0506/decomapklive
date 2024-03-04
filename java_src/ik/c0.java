package ik;

import fk.f;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class c0 extends f.b {

    /* renamed from: h  reason: collision with root package name */
    public static final BigInteger f41456h = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001"));

    /* renamed from: g  reason: collision with root package name */
    protected int[] f41457g;

    public c0() {
        this.f41457g = nk.g.e();
    }

    public c0(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f41456h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP224R1FieldElement");
        }
        this.f41457g = b0.d(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c0(int[] iArr) {
        this.f41457g = iArr;
    }

    private static void u(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7) {
        b0.g(iArr5, iArr3, iArr7);
        b0.g(iArr7, iArr, iArr7);
        b0.g(iArr4, iArr2, iArr6);
        b0.a(iArr6, iArr7, iArr6);
        b0.g(iArr4, iArr3, iArr7);
        nk.g.d(iArr6, iArr4);
        b0.g(iArr5, iArr2, iArr5);
        b0.a(iArr5, iArr7, iArr5);
        b0.n(iArr5, iArr6);
        b0.g(iArr6, iArr, iArr6);
    }

    private static void v(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5) {
        nk.g.d(iArr, iArr4);
        int[] e10 = nk.g.e();
        int[] e11 = nk.g.e();
        for (int i9 = 0; i9 < 7; i9++) {
            nk.g.d(iArr2, e10);
            nk.g.d(iArr3, e11);
            int i10 = 1 << i9;
            while (true) {
                i10--;
                if (i10 >= 0) {
                    w(iArr2, iArr3, iArr4, iArr5);
                }
            }
            u(iArr, e10, e11, iArr2, iArr3, iArr4, iArr5);
        }
    }

    private static void w(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        b0.g(iArr2, iArr, iArr2);
        b0.r(iArr2, iArr2);
        b0.n(iArr, iArr4);
        b0.a(iArr3, iArr4, iArr);
        b0.g(iArr3, iArr4, iArr3);
        b0.m(nk.n.L(7, iArr3, 2, 0), iArr3);
    }

    private static boolean x(int[] iArr) {
        int[] e10 = nk.g.e();
        int[] e11 = nk.g.e();
        nk.g.d(iArr, e10);
        for (int i9 = 0; i9 < 7; i9++) {
            nk.g.d(e10, e11);
            b0.o(e10, 1 << i9, e10);
            b0.g(e10, e11, e10);
        }
        b0.o(e10, 95, e10);
        return nk.g.k(e10);
    }

    private static boolean y(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] e10 = nk.g.e();
        nk.g.d(iArr2, e10);
        int[] e11 = nk.g.e();
        e11[0] = 1;
        int[] e12 = nk.g.e();
        v(iArr, e10, e11, e12, iArr3);
        int[] e13 = nk.g.e();
        int[] e14 = nk.g.e();
        for (int i9 = 1; i9 < 96; i9++) {
            nk.g.d(e10, e13);
            nk.g.d(e11, e14);
            w(e10, e11, e12, iArr3);
            if (nk.g.l(e10)) {
                b0.e(e14, iArr3);
                b0.g(iArr3, e13, iArr3);
                return true;
            }
        }
        return false;
    }

    @Override // fk.f
    public fk.f a(fk.f fVar) {
        int[] e10 = nk.g.e();
        b0.a(this.f41457g, ((c0) fVar).f41457g, e10);
        return new c0(e10);
    }

    @Override // fk.f
    public fk.f b() {
        int[] e10 = nk.g.e();
        b0.b(this.f41457g, e10);
        return new c0(e10);
    }

    @Override // fk.f
    public fk.f d(fk.f fVar) {
        int[] e10 = nk.g.e();
        b0.e(((c0) fVar).f41457g, e10);
        b0.g(e10, this.f41457g, e10);
        return new c0(e10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c0) {
            return nk.g.g(this.f41457g, ((c0) obj).f41457g);
        }
        return false;
    }

    @Override // fk.f
    public int f() {
        return f41456h.bitLength();
    }

    @Override // fk.f
    public fk.f g() {
        int[] e10 = nk.g.e();
        b0.e(this.f41457g, e10);
        return new c0(e10);
    }

    @Override // fk.f
    public boolean h() {
        return nk.g.k(this.f41457g);
    }

    public int hashCode() {
        return f41456h.hashCode() ^ org.bouncycastle.util.a.v(this.f41457g, 0, 7);
    }

    @Override // fk.f
    public boolean i() {
        return nk.g.l(this.f41457g);
    }

    @Override // fk.f
    public fk.f j(fk.f fVar) {
        int[] e10 = nk.g.e();
        b0.g(this.f41457g, ((c0) fVar).f41457g, e10);
        return new c0(e10);
    }

    @Override // fk.f
    public fk.f m() {
        int[] e10 = nk.g.e();
        b0.i(this.f41457g, e10);
        return new c0(e10);
    }

    @Override // fk.f
    public fk.f n() {
        int[] iArr = this.f41457g;
        if (nk.g.l(iArr) || nk.g.k(iArr)) {
            return this;
        }
        int[] e10 = nk.g.e();
        b0.i(iArr, e10);
        int[] o10 = nk.c.o(b0.f41449a);
        int[] e11 = nk.g.e();
        if (x(iArr)) {
            while (!y(e10, o10, e11)) {
                b0.b(o10, o10);
            }
            b0.n(e11, o10);
            if (nk.g.g(iArr, o10)) {
                return new c0(e11);
            }
            return null;
        }
        return null;
    }

    @Override // fk.f
    public fk.f o() {
        int[] e10 = nk.g.e();
        b0.n(this.f41457g, e10);
        return new c0(e10);
    }

    @Override // fk.f
    public fk.f r(fk.f fVar) {
        int[] e10 = nk.g.e();
        b0.q(this.f41457g, ((c0) fVar).f41457g, e10);
        return new c0(e10);
    }

    @Override // fk.f
    public boolean s() {
        return nk.g.i(this.f41457g, 0) == 1;
    }

    @Override // fk.f
    public BigInteger t() {
        return nk.g.u(this.f41457g);
    }
}
