package ik;

import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f41647a = {-6803, -2, -1, -1, -1, -1, -1};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f41648b = {46280809, 13606, 1, 0, 0, 0, 0, -13606, -3, -1, -1, -1, -1, -1};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f41649c = {-46280809, -13607, -2, -1, -1, -1, -1, 13605, 2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.g.a(iArr, iArr2, iArr3) != 0 || (iArr3[6] == -1 && nk.g.j(iArr3, f41647a))) {
            nk.n.b(7, 6803, iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (nk.n.w(7, iArr, iArr2) != 0 || (iArr2[6] == -1 && nk.g.j(iArr2, f41647a))) {
            nk.n.b(7, 6803, iArr2);
        }
    }

    public static int[] c(BigInteger bigInteger) {
        int[] h10 = nk.g.h(bigInteger);
        if (h10[6] == -1 && nk.g.j(h10, f41647a)) {
            nk.n.b(7, 6803, h10);
        }
        return h10;
    }

    public static void d(int[] iArr, int[] iArr2) {
        nk.c.c(f41647a, iArr, iArr2);
    }

    public static int e(int[] iArr) {
        int i9 = 0;
        for (int i10 = 0; i10 < 7; i10++) {
            i9 |= iArr[i10];
        }
        return (((i9 >>> 1) | (i9 & 1)) - 1) >> 31;
    }

    public static void f(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] f10 = nk.g.f();
        nk.g.m(iArr, iArr2, f10);
        k(f10, iArr3);
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.g.q(iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && nk.n.u(14, iArr3, f41648b))) {
            int[] iArr4 = f41649c;
            if (nk.n.e(iArr4.length, iArr4, iArr3) != 0) {
                nk.n.x(14, iArr3, iArr4.length);
            }
        }
    }

    public static void h(int[] iArr, int[] iArr2) {
        if (e(iArr) == 0) {
            nk.g.s(f41647a, iArr, iArr2);
            return;
        }
        int[] iArr3 = f41647a;
        nk.g.s(iArr3, iArr3, iArr2);
    }

    public static void i(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[28];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.g.f(bArr, 0, iArr, 0, 7);
        } while (nk.n.B(7, iArr, f41647a) == 0);
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        do {
            i(secureRandom, iArr);
        } while (e(iArr) != 0);
    }

    public static void k(int[] iArr, int[] iArr2) {
        if (nk.g.o(6803, nk.g.n(6803, iArr, 7, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[6] == -1 && nk.g.j(iArr2, f41647a))) {
            nk.n.b(7, 6803, iArr2);
        }
    }

    public static void l(int i9, int[] iArr) {
        if ((i9 == 0 || nk.g.p(6803, i9, iArr, 0) == 0) && !(iArr[6] == -1 && nk.g.j(iArr, f41647a))) {
            return;
        }
        nk.n.b(7, 6803, iArr);
    }

    public static void m(int[] iArr, int[] iArr2) {
        int[] f10 = nk.g.f();
        nk.g.r(iArr, f10);
        k(f10, iArr2);
    }

    public static void n(int[] iArr, int i9, int[] iArr2) {
        int[] f10 = nk.g.f();
        nk.g.r(iArr, f10);
        while (true) {
            k(f10, iArr2);
            i9--;
            if (i9 <= 0) {
                return;
            }
            nk.g.r(iArr2, f10);
        }
    }

    public static void o(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.g.s(iArr, iArr2, iArr3) != 0) {
            nk.n.Q(7, 6803, iArr3);
        }
    }

    public static void p(int[] iArr, int[] iArr2) {
        if (nk.n.J(7, iArr, 0, iArr2) != 0 || (iArr2[6] == -1 && nk.g.j(iArr2, f41647a))) {
            nk.n.b(7, 6803, iArr2);
        }
    }
}
