package ik;

import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class j0 {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f41526a = {-1, -1, -1, 0, 0, 0, 1, -1};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f41527b = {1, 0, 0, -2, -1, -1, -2, 1, -2, 1, -2, 1, 1, -2, 2, -2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.h.a(iArr, iArr2, iArr3) != 0 || (iArr3[7] == -1 && nk.h.s(iArr3, f41526a))) {
            c(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (nk.n.w(8, iArr, iArr2) != 0 || (iArr2[7] == -1 && nk.h.s(iArr2, f41526a))) {
            c(iArr2);
        }
    }

    private static void c(int[] iArr) {
        long j10 = (iArr[0] & 4294967295L) + 1;
        iArr[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (iArr[1] & 4294967295L);
            iArr[1] = (int) j12;
            long j13 = (j12 >> 32) + (iArr[2] & 4294967295L);
            iArr[2] = (int) j13;
            j11 = j13 >> 32;
        }
        long j14 = j11 + ((iArr[3] & 4294967295L) - 1);
        iArr[3] = (int) j14;
        long j15 = j14 >> 32;
        if (j15 != 0) {
            long j16 = j15 + (iArr[4] & 4294967295L);
            iArr[4] = (int) j16;
            long j17 = (j16 >> 32) + (iArr[5] & 4294967295L);
            iArr[5] = (int) j17;
            j15 = j17 >> 32;
        }
        long j18 = j15 + ((iArr[6] & 4294967295L) - 1);
        iArr[6] = (int) j18;
        iArr[7] = (int) ((j18 >> 32) + (4294967295L & iArr[7]) + 1);
    }

    public static int[] d(BigInteger bigInteger) {
        int[] p10 = nk.h.p(bigInteger);
        if (p10[7] == -1) {
            int[] iArr = f41526a;
            if (nk.h.s(p10, iArr)) {
                nk.h.I(iArr, p10);
            }
        }
        return p10;
    }

    public static void e(int[] iArr, int[] iArr2) {
        nk.c.c(f41526a, iArr, iArr2);
    }

    public static int f(int[] iArr) {
        int i9 = 0;
        for (int i10 = 0; i10 < 8; i10++) {
            i9 |= iArr[i10];
        }
        return (((i9 >>> 1) | (i9 & 1)) - 1) >> 31;
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] k10 = nk.h.k();
        nk.h.y(iArr, iArr2, k10);
        l(k10, iArr3);
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.h.C(iArr, iArr2, iArr3) != 0 || ((iArr3[15] >>> 1) >= Integer.MAX_VALUE && nk.n.u(16, iArr3, f41527b))) {
            nk.n.S(16, f41527b, iArr3);
        }
    }

    public static void i(int[] iArr, int[] iArr2) {
        if (f(iArr) == 0) {
            nk.h.H(f41526a, iArr, iArr2);
            return;
        }
        int[] iArr3 = f41526a;
        nk.h.H(iArr3, iArr3, iArr2);
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[32];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.g.f(bArr, 0, iArr, 0, 8);
        } while (nk.n.B(8, iArr, f41526a) == 0);
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        do {
            j(secureRandom, iArr);
        } while (f(iArr) != 0);
    }

    public static void l(int[] iArr, int[] iArr2) {
        long j10 = iArr[9] & 4294967295L;
        long j11 = iArr[10] & 4294967295L;
        long j12 = iArr[11] & 4294967295L;
        long j13 = iArr[12] & 4294967295L;
        long j14 = iArr[13] & 4294967295L;
        long j15 = iArr[14] & 4294967295L;
        long j16 = iArr[15] & 4294967295L;
        long j17 = (iArr[8] & 4294967295L) - 6;
        long j18 = j17 + j10;
        long j19 = j10 + j11;
        long j20 = (j11 + j12) - j16;
        long j21 = j12 + j13;
        long j22 = j13 + j14;
        long j23 = j14 + j15;
        long j24 = j15 + j16;
        long j25 = j23 - j18;
        long j26 = (((iArr[0] & 4294967295L) - j21) - j25) + 0;
        iArr2[0] = (int) j26;
        long j27 = (j26 >> 32) + ((((iArr[1] & 4294967295L) + j19) - j22) - j24);
        iArr2[1] = (int) j27;
        long j28 = (j27 >> 32) + (((iArr[2] & 4294967295L) + j20) - j23);
        iArr2[2] = (int) j28;
        long j29 = (j28 >> 32) + ((((iArr[3] & 4294967295L) + (j21 << 1)) + j25) - j24);
        iArr2[3] = (int) j29;
        long j30 = (j29 >> 32) + ((((iArr[4] & 4294967295L) + (j22 << 1)) + j15) - j19);
        iArr2[4] = (int) j30;
        long j31 = (j30 >> 32) + (((iArr[5] & 4294967295L) + (j23 << 1)) - j20);
        iArr2[5] = (int) j31;
        long j32 = (j31 >> 32) + (iArr[6] & 4294967295L) + (j24 << 1) + j25;
        iArr2[6] = (int) j32;
        long j33 = (j32 >> 32) + (((((iArr[7] & 4294967295L) + (j16 << 1)) + j17) - j20) - j22);
        iArr2[7] = (int) j33;
        m((int) ((j33 >> 32) + 6), iArr2);
    }

    public static void m(int i9, int[] iArr) {
        long j10;
        if (i9 != 0) {
            long j11 = i9 & 4294967295L;
            long j12 = (iArr[0] & 4294967295L) + j11 + 0;
            iArr[0] = (int) j12;
            long j13 = j12 >> 32;
            if (j13 != 0) {
                long j14 = j13 + (iArr[1] & 4294967295L);
                iArr[1] = (int) j14;
                long j15 = (j14 >> 32) + (iArr[2] & 4294967295L);
                iArr[2] = (int) j15;
                j13 = j15 >> 32;
            }
            long j16 = j13 + ((iArr[3] & 4294967295L) - j11);
            iArr[3] = (int) j16;
            long j17 = j16 >> 32;
            if (j17 != 0) {
                long j18 = j17 + (iArr[4] & 4294967295L);
                iArr[4] = (int) j18;
                long j19 = (j18 >> 32) + (iArr[5] & 4294967295L);
                iArr[5] = (int) j19;
                j17 = j19 >> 32;
            }
            long j20 = j17 + ((iArr[6] & 4294967295L) - j11);
            iArr[6] = (int) j20;
            long j21 = (j20 >> 32) + (4294967295L & iArr[7]) + j11;
            iArr[7] = (int) j21;
            j10 = j21 >> 32;
        } else {
            j10 = 0;
        }
        if (j10 != 0 || (iArr[7] == -1 && nk.h.s(iArr, f41526a))) {
            c(iArr);
        }
    }

    public static void n(int[] iArr, int[] iArr2) {
        int[] k10 = nk.h.k();
        nk.h.F(iArr, k10);
        l(k10, iArr2);
    }

    public static void o(int[] iArr, int i9, int[] iArr2) {
        int[] k10 = nk.h.k();
        nk.h.F(iArr, k10);
        while (true) {
            l(k10, iArr2);
            i9--;
            if (i9 <= 0) {
                return;
            }
            nk.h.F(iArr2, k10);
        }
    }

    private static void p(int[] iArr) {
        long j10 = (iArr[0] & 4294967295L) - 1;
        iArr[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (iArr[1] & 4294967295L);
            iArr[1] = (int) j12;
            long j13 = (j12 >> 32) + (iArr[2] & 4294967295L);
            iArr[2] = (int) j13;
            j11 = j13 >> 32;
        }
        long j14 = j11 + (iArr[3] & 4294967295L) + 1;
        iArr[3] = (int) j14;
        long j15 = j14 >> 32;
        if (j15 != 0) {
            long j16 = j15 + (iArr[4] & 4294967295L);
            iArr[4] = (int) j16;
            long j17 = (j16 >> 32) + (iArr[5] & 4294967295L);
            iArr[5] = (int) j17;
            j15 = j17 >> 32;
        }
        long j18 = j15 + (iArr[6] & 4294967295L) + 1;
        iArr[6] = (int) j18;
        iArr[7] = (int) ((j18 >> 32) + ((4294967295L & iArr[7]) - 1));
    }

    public static void q(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.h.H(iArr, iArr2, iArr3) != 0) {
            p(iArr3);
        }
    }

    public static void r(int[] iArr, int[] iArr2) {
        if (nk.n.J(8, iArr, 0, iArr2) != 0 || (iArr2[7] == -1 && nk.h.s(iArr2, f41526a))) {
            c(iArr2);
        }
    }
}
