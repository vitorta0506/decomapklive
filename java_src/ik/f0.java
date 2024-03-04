package ik;

import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class f0 {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f41486a = {-977, -2, -1, -1, -1, -1, -1, -1};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f41487b = {954529, 1954, 1, 0, 0, 0, 0, 0, -1954, -3, -1, -1, -1, -1, -1, -1};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f41488c = {-954529, -1955, -2, -1, -1, -1, -1, -1, 1953, 2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.h.a(iArr, iArr2, iArr3) != 0 || (iArr3[7] == -1 && nk.h.s(iArr3, f41486a))) {
            nk.n.b(8, 977, iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (nk.n.w(8, iArr, iArr2) != 0 || (iArr2[7] == -1 && nk.h.s(iArr2, f41486a))) {
            nk.n.b(8, 977, iArr2);
        }
    }

    public static int[] c(BigInteger bigInteger) {
        int[] p10 = nk.h.p(bigInteger);
        if (p10[7] == -1) {
            int[] iArr = f41486a;
            if (nk.h.s(p10, iArr)) {
                nk.h.I(iArr, p10);
            }
        }
        return p10;
    }

    public static void d(int[] iArr, int[] iArr2) {
        nk.c.c(f41486a, iArr, iArr2);
    }

    public static int e(int[] iArr) {
        int i9 = 0;
        for (int i10 = 0; i10 < 8; i10++) {
            i9 |= iArr[i10];
        }
        return (((i9 >>> 1) | (i9 & 1)) - 1) >> 31;
    }

    public static void f(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] k10 = nk.h.k();
        nk.h.y(iArr, iArr2, k10);
        k(k10, iArr3);
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.h.C(iArr, iArr2, iArr3) != 0 || (iArr3[15] == -1 && nk.n.u(16, iArr3, f41487b))) {
            int[] iArr4 = f41488c;
            if (nk.n.e(iArr4.length, iArr4, iArr3) != 0) {
                nk.n.x(16, iArr3, iArr4.length);
            }
        }
    }

    public static void h(int[] iArr, int[] iArr2) {
        if (e(iArr) == 0) {
            nk.h.H(f41486a, iArr, iArr2);
            return;
        }
        int[] iArr3 = f41486a;
        nk.h.H(iArr3, iArr3, iArr2);
    }

    public static void i(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[32];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.g.f(bArr, 0, iArr, 0, 8);
        } while (nk.n.B(8, iArr, f41486a) == 0);
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        do {
            i(secureRandom, iArr);
        } while (e(iArr) != 0);
    }

    public static void k(int[] iArr, int[] iArr2) {
        if (nk.h.A(977, nk.h.z(977, iArr, 8, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[7] == -1 && nk.h.s(iArr2, f41486a))) {
            nk.n.b(8, 977, iArr2);
        }
    }

    public static void l(int i9, int[] iArr) {
        if ((i9 == 0 || nk.h.B(977, i9, iArr, 0) == 0) && !(iArr[7] == -1 && nk.h.s(iArr, f41486a))) {
            return;
        }
        nk.n.b(8, 977, iArr);
    }

    public static void m(int[] iArr, int[] iArr2) {
        int[] k10 = nk.h.k();
        nk.h.F(iArr, k10);
        k(k10, iArr2);
    }

    public static void n(int[] iArr, int i9, int[] iArr2) {
        int[] k10 = nk.h.k();
        nk.h.F(iArr, k10);
        while (true) {
            k(k10, iArr2);
            i9--;
            if (i9 <= 0) {
                return;
            }
            nk.h.F(iArr2, k10);
        }
    }

    public static void o(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.h.H(iArr, iArr2, iArr3) != 0) {
            nk.n.Q(8, 977, iArr3);
        }
    }

    public static void p(int[] iArr, int[] iArr2) {
        if (nk.n.J(8, iArr, 0, iArr2) != 0 || (iArr2[7] == -1 && nk.h.s(iArr2, f41486a))) {
            nk.n.b(8, 977, iArr2);
        }
    }
}
