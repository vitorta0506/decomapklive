package ik;

import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f41541a = {-21389, -2, -1, -1, -1};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f41542b = {457489321, 42778, 1, 0, 0, -42778, -3, -1, -1, -1};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f41543c = {-457489321, -42779, -2, -1, -1, 42777, 2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.e.a(iArr, iArr2, iArr3) != 0 || (iArr3[4] == -1 && nk.e.i(iArr3, f41541a))) {
            nk.n.b(5, 21389, iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (nk.n.w(5, iArr, iArr2) != 0 || (iArr2[4] == -1 && nk.e.i(iArr2, f41541a))) {
            nk.n.b(5, 21389, iArr2);
        }
    }

    public static int[] c(BigInteger bigInteger) {
        int[] g10 = nk.e.g(bigInteger);
        if (g10[4] == -1) {
            int[] iArr = f41541a;
            if (nk.e.i(g10, iArr)) {
                nk.e.t(iArr, g10);
            }
        }
        return g10;
    }

    public static void d(int[] iArr, int[] iArr2) {
        nk.c.c(f41541a, iArr, iArr2);
    }

    public static int e(int[] iArr) {
        int i9 = 0;
        for (int i10 = 0; i10 < 5; i10++) {
            i9 |= iArr[i10];
        }
        return (((i9 >>> 1) | (i9 & 1)) - 1) >> 31;
    }

    public static void f(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] e10 = nk.e.e();
        nk.e.l(iArr, iArr2, e10);
        k(e10, iArr3);
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.e.p(iArr, iArr2, iArr3) != 0 || (iArr3[9] == -1 && nk.n.u(10, iArr3, f41542b))) {
            int[] iArr4 = f41543c;
            if (nk.n.e(iArr4.length, iArr4, iArr3) != 0) {
                nk.n.x(10, iArr3, iArr4.length);
            }
        }
    }

    public static void h(int[] iArr, int[] iArr2) {
        if (e(iArr) == 0) {
            nk.e.s(f41541a, iArr, iArr2);
            return;
        }
        int[] iArr3 = f41541a;
        nk.e.s(iArr3, iArr3, iArr2);
    }

    public static void i(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[20];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.g.f(bArr, 0, iArr, 0, 5);
        } while (nk.n.B(5, iArr, f41541a) == 0);
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        do {
            i(secureRandom, iArr);
        } while (e(iArr) != 0);
    }

    public static void k(int[] iArr, int[] iArr2) {
        if (nk.e.n(21389, nk.e.m(21389, iArr, 5, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[4] == -1 && nk.e.i(iArr2, f41541a))) {
            nk.n.b(5, 21389, iArr2);
        }
    }

    public static void l(int i9, int[] iArr) {
        if ((i9 == 0 || nk.e.o(21389, i9, iArr, 0) == 0) && !(iArr[4] == -1 && nk.e.i(iArr, f41541a))) {
            return;
        }
        nk.n.b(5, 21389, iArr);
    }

    public static void m(int[] iArr, int[] iArr2) {
        int[] e10 = nk.e.e();
        nk.e.r(iArr, e10);
        k(e10, iArr2);
    }

    public static void n(int[] iArr, int i9, int[] iArr2) {
        int[] e10 = nk.e.e();
        nk.e.r(iArr, e10);
        while (true) {
            k(e10, iArr2);
            i9--;
            if (i9 <= 0) {
                return;
            }
            nk.e.r(iArr2, e10);
        }
    }

    public static void o(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.e.s(iArr, iArr2, iArr3) != 0) {
            nk.n.Q(5, 21389, iArr3);
        }
    }

    public static void p(int[] iArr, int[] iArr2) {
        if (nk.n.J(5, iArr, 0, iArr2) != 0 || (iArr2[4] == -1 && nk.e.i(iArr2, f41541a))) {
            nk.n.b(5, 21389, iArr2);
        }
    }
}
