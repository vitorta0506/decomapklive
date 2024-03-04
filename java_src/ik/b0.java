package ik;

import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class b0 {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f41449a = {1, 0, 0, -1, -1, -1, -1};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f41450b = {1, 0, 0, -2, -1, -1, 0, 2, 0, 0, -2, -1, -1, -1};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f41451c = {-1, -1, -1, 1, 0, 0, -1, -3, -1, -1, 1};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.g.a(iArr, iArr2, iArr3) != 0 || (iArr3[6] == -1 && nk.g.j(iArr3, f41449a))) {
            c(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (nk.n.w(7, iArr, iArr2) != 0 || (iArr2[6] == -1 && nk.g.j(iArr2, f41449a))) {
            c(iArr2);
        }
    }

    private static void c(int[] iArr) {
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
        long j14 = j11 + (4294967295L & iArr[3]) + 1;
        iArr[3] = (int) j14;
        if ((j14 >> 32) != 0) {
            nk.n.x(7, iArr, 4);
        }
    }

    public static int[] d(BigInteger bigInteger) {
        int[] h10 = nk.g.h(bigInteger);
        if (h10[6] == -1) {
            int[] iArr = f41449a;
            if (nk.g.j(h10, iArr)) {
                nk.g.t(iArr, h10);
            }
        }
        return h10;
    }

    public static void e(int[] iArr, int[] iArr2) {
        nk.c.c(f41449a, iArr, iArr2);
    }

    public static int f(int[] iArr) {
        int i9 = 0;
        for (int i10 = 0; i10 < 7; i10++) {
            i9 |= iArr[i10];
        }
        return (((i9 >>> 1) | (i9 & 1)) - 1) >> 31;
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] f10 = nk.g.f();
        nk.g.m(iArr, iArr2, f10);
        l(f10, iArr3);
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.g.q(iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && nk.n.u(14, iArr3, f41450b))) {
            int[] iArr4 = f41451c;
            if (nk.n.e(iArr4.length, iArr4, iArr3) != 0) {
                nk.n.x(14, iArr3, iArr4.length);
            }
        }
    }

    public static void i(int[] iArr, int[] iArr2) {
        if (f(iArr) == 0) {
            nk.g.s(f41449a, iArr, iArr2);
            return;
        }
        int[] iArr3 = f41449a;
        nk.g.s(iArr3, iArr3, iArr2);
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[28];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.g.f(bArr, 0, iArr, 0, 7);
        } while (nk.n.B(7, iArr, f41449a) == 0);
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        do {
            j(secureRandom, iArr);
        } while (f(iArr) != 0);
    }

    public static void l(int[] iArr, int[] iArr2) {
        long j10 = iArr[10] & 4294967295L;
        long j11 = iArr[11] & 4294967295L;
        long j12 = iArr[12] & 4294967295L;
        long j13 = iArr[13] & 4294967295L;
        long j14 = ((iArr[7] & 4294967295L) + j11) - 1;
        long j15 = (iArr[8] & 4294967295L) + j12;
        long j16 = (iArr[9] & 4294967295L) + j13;
        long j17 = ((iArr[0] & 4294967295L) - j14) + 0;
        long j18 = j17 & 4294967295L;
        long j19 = (j17 >> 32) + ((iArr[1] & 4294967295L) - j15);
        iArr2[1] = (int) j19;
        long j20 = (j19 >> 32) + ((iArr[2] & 4294967295L) - j16);
        iArr2[2] = (int) j20;
        long j21 = (j20 >> 32) + (((iArr[3] & 4294967295L) + j14) - j10);
        long j22 = j21 & 4294967295L;
        long j23 = (j21 >> 32) + (((iArr[4] & 4294967295L) + j15) - j11);
        iArr2[4] = (int) j23;
        long j24 = (j23 >> 32) + (((iArr[5] & 4294967295L) + j16) - j12);
        iArr2[5] = (int) j24;
        long j25 = (j24 >> 32) + (((iArr[6] & 4294967295L) + j10) - j13);
        iArr2[6] = (int) j25;
        long j26 = (j25 >> 32) + 1;
        long j27 = j22 + j26;
        long j28 = j18 - j26;
        iArr2[0] = (int) j28;
        long j29 = j28 >> 32;
        if (j29 != 0) {
            long j30 = j29 + (iArr2[1] & 4294967295L);
            iArr2[1] = (int) j30;
            long j31 = (j30 >> 32) + (4294967295L & iArr2[2]);
            iArr2[2] = (int) j31;
            j27 += j31 >> 32;
        }
        iArr2[3] = (int) j27;
        if (((j27 >> 32) == 0 || nk.n.x(7, iArr2, 4) == 0) && !(iArr2[6] == -1 && nk.g.j(iArr2, f41449a))) {
            return;
        }
        c(iArr2);
    }

    public static void m(int i9, int[] iArr) {
        long j10;
        if (i9 != 0) {
            long j11 = i9 & 4294967295L;
            long j12 = ((iArr[0] & 4294967295L) - j11) + 0;
            iArr[0] = (int) j12;
            long j13 = j12 >> 32;
            if (j13 != 0) {
                long j14 = j13 + (iArr[1] & 4294967295L);
                iArr[1] = (int) j14;
                long j15 = (j14 >> 32) + (iArr[2] & 4294967295L);
                iArr[2] = (int) j15;
                j13 = j15 >> 32;
            }
            long j16 = j13 + (4294967295L & iArr[3]) + j11;
            iArr[3] = (int) j16;
            j10 = j16 >> 32;
        } else {
            j10 = 0;
        }
        if ((j10 == 0 || nk.n.x(7, iArr, 4) == 0) && !(iArr[6] == -1 && nk.g.j(iArr, f41449a))) {
            return;
        }
        c(iArr);
    }

    public static void n(int[] iArr, int[] iArr2) {
        int[] f10 = nk.g.f();
        nk.g.r(iArr, f10);
        l(f10, iArr2);
    }

    public static void o(int[] iArr, int i9, int[] iArr2) {
        int[] f10 = nk.g.f();
        nk.g.r(iArr, f10);
        while (true) {
            l(f10, iArr2);
            i9--;
            if (i9 <= 0) {
                return;
            }
            nk.g.r(iArr2, f10);
        }
    }

    private static void p(int[] iArr) {
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
        long j14 = j11 + ((4294967295L & iArr[3]) - 1);
        iArr[3] = (int) j14;
        if ((j14 >> 32) != 0) {
            nk.n.n(7, iArr, 4);
        }
    }

    public static void q(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.g.s(iArr, iArr2, iArr3) != 0) {
            p(iArr3);
        }
    }

    public static void r(int[] iArr, int[] iArr2) {
        if (nk.n.J(7, iArr, 0, iArr2) != 0 || (iArr2[6] == -1 && nk.g.j(iArr2, f41449a))) {
            c(iArr2);
        }
    }
}
