package ik;

import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f41446a = {-1, -1, -1, -3};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f41447b = {1, 0, 0, 4, -2, -1, 3, -4};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f41448c = {-1, -1, -1, -5, 1, 0, -4, 3};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.d.a(iArr, iArr2, iArr3) != 0 || ((iArr3[3] >>> 1) >= 2147483646 && nk.d.n(iArr3, f41446a))) {
            c(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (nk.n.w(4, iArr, iArr2) != 0 || ((iArr2[3] >>> 1) >= 2147483646 && nk.d.n(iArr2, f41446a))) {
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
        iArr[3] = (int) (j11 + (4294967295L & iArr[3]) + 2);
    }

    public static int[] d(BigInteger bigInteger) {
        int[] l10 = nk.d.l(bigInteger);
        if ((l10[3] >>> 1) >= 2147483646) {
            int[] iArr = f41446a;
            if (nk.d.n(l10, iArr)) {
                nk.d.w(iArr, l10);
            }
        }
        return l10;
    }

    public static void e(int[] iArr, int[] iArr2) {
        nk.c.c(f41446a, iArr, iArr2);
    }

    public static int f(int[] iArr) {
        int i9 = 0;
        for (int i10 = 0; i10 < 4; i10++) {
            i9 |= iArr[i10];
        }
        return (((i9 >>> 1) | (i9 & 1)) - 1) >> 31;
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] h10 = nk.d.h();
        nk.d.s(iArr, iArr2, h10);
        l(h10, iArr3);
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.d.t(iArr, iArr2, iArr3) != 0 || ((iArr3[7] >>> 1) >= 2147483646 && nk.h.s(iArr3, f41447b))) {
            int[] iArr4 = f41448c;
            nk.n.e(iArr4.length, iArr4, iArr3);
        }
    }

    public static void i(int[] iArr, int[] iArr2) {
        if (f(iArr) == 0) {
            nk.d.v(f41446a, iArr, iArr2);
            return;
        }
        int[] iArr3 = f41446a;
        nk.d.v(iArr3, iArr3, iArr2);
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[16];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.g.f(bArr, 0, iArr, 0, 4);
        } while (nk.n.B(4, iArr, f41446a) == 0);
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        do {
            j(secureRandom, iArr);
        } while (f(iArr) != 0);
    }

    public static void l(int[] iArr, int[] iArr2) {
        long j10 = iArr[7] & 4294967295L;
        long j11 = (iArr[3] & 4294967295L) + j10;
        long j12 = (iArr[6] & 4294967295L) + (j10 << 1);
        long j13 = (iArr[2] & 4294967295L) + j12;
        long j14 = (iArr[5] & 4294967295L) + (j12 << 1);
        long j15 = (iArr[1] & 4294967295L) + j14;
        long j16 = (iArr[4] & 4294967295L) + (j14 << 1);
        long j17 = (iArr[0] & 4294967295L) + j16;
        iArr2[0] = (int) j17;
        long j18 = j15 + (j17 >>> 32);
        iArr2[1] = (int) j18;
        long j19 = j13 + (j18 >>> 32);
        iArr2[2] = (int) j19;
        long j20 = j11 + (j16 << 1) + (j19 >>> 32);
        iArr2[3] = (int) j20;
        m((int) (j20 >>> 32), iArr2);
    }

    public static void m(int i9, int[] iArr) {
        while (i9 != 0) {
            long j10 = i9 & 4294967295L;
            long j11 = (iArr[0] & 4294967295L) + j10;
            iArr[0] = (int) j11;
            long j12 = j11 >> 32;
            if (j12 != 0) {
                long j13 = j12 + (iArr[1] & 4294967295L);
                iArr[1] = (int) j13;
                long j14 = (j13 >> 32) + (iArr[2] & 4294967295L);
                iArr[2] = (int) j14;
                j12 = j14 >> 32;
            }
            long j15 = j12 + (4294967295L & iArr[3]) + (j10 << 1);
            iArr[3] = (int) j15;
            i9 = (int) (j15 >> 32);
        }
        if ((iArr[3] >>> 1) < 2147483646 || !nk.d.n(iArr, f41446a)) {
            return;
        }
        c(iArr);
    }

    public static void n(int[] iArr, int[] iArr2) {
        int[] h10 = nk.d.h();
        nk.d.u(iArr, h10);
        l(h10, iArr2);
    }

    public static void o(int[] iArr, int i9, int[] iArr2) {
        int[] h10 = nk.d.h();
        nk.d.u(iArr, h10);
        while (true) {
            l(h10, iArr2);
            i9--;
            if (i9 <= 0) {
                return;
            }
            nk.d.u(iArr2, h10);
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
        iArr[3] = (int) (j11 + ((4294967295L & iArr[3]) - 2));
    }

    public static void q(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.d.v(iArr, iArr2, iArr3) != 0) {
            p(iArr3);
        }
    }

    public static void r(int[] iArr, int[] iArr2) {
        if (nk.n.J(4, iArr, 0, iArr2) != 0 || ((iArr2[3] >>> 1) >= 2147483646 && nk.d.n(iArr2, f41446a))) {
            c(iArr2);
        }
    }
}
