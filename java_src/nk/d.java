package nk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public abstract class d {
    public static int a(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + 0;
        iArr3[0] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr3[1] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr3[2] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr3[3] = (int) j13;
        return (int) (j13 >>> 32);
    }

    public static int b(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + (iArr3[0] & 4294967295L) + 0;
        iArr3[0] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (iArr3[1] & 4294967295L);
        iArr3[1] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (iArr3[2] & 4294967295L);
        iArr3[2] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (iArr3[3] & 4294967295L);
        iArr3[3] = (int) j13;
        return (int) (j13 >>> 32);
    }

    public static void c(int[] iArr, int i9, int[] iArr2, int i10) {
        iArr2[i10 + 0] = iArr[i9 + 0];
        iArr2[i10 + 1] = iArr[i9 + 1];
        iArr2[i10 + 2] = iArr[i9 + 2];
        iArr2[i10 + 3] = iArr[i9 + 3];
    }

    public static void d(long[] jArr, int i9, long[] jArr2, int i10) {
        jArr2[i10 + 0] = jArr[i9 + 0];
        jArr2[i10 + 1] = jArr[i9 + 1];
    }

    public static void e(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
    }

    public static int[] f() {
        return new int[4];
    }

    public static long[] g() {
        return new long[2];
    }

    public static int[] h() {
        return new int[8];
    }

    public static long[] i() {
        return new long[4];
    }

    public static boolean j(int[] iArr, int[] iArr2) {
        for (int i9 = 3; i9 >= 0; i9--) {
            if (iArr[i9] != iArr2[i9]) {
                return false;
            }
        }
        return true;
    }

    public static boolean k(long[] jArr, long[] jArr2) {
        for (int i9 = 1; i9 >= 0; i9--) {
            if (jArr[i9] != jArr2[i9]) {
                return false;
            }
        }
        return true;
    }

    public static int[] l(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 128) {
            throw new IllegalArgumentException();
        }
        int[] f10 = f();
        for (int i9 = 0; i9 < 4; i9++) {
            f10[i9] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return f10;
    }

    public static int m(int[] iArr, int i9) {
        int i10;
        if (i9 == 0) {
            i10 = iArr[0];
        } else {
            int i11 = i9 >> 5;
            if (i11 < 0 || i11 >= 4) {
                return 0;
            }
            i10 = iArr[i11] >>> (i9 & 31);
        }
        return i10 & 1;
    }

    public static boolean n(int[] iArr, int[] iArr2) {
        for (int i9 = 3; i9 >= 0; i9--) {
            int i10 = iArr[i9] ^ Integer.MIN_VALUE;
            int i11 = Integer.MIN_VALUE ^ iArr2[i9];
            if (i10 < i11) {
                return false;
            }
            if (i10 > i11) {
                return true;
            }
        }
        return true;
    }

    public static boolean o(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i9 = 1; i9 < 4; i9++) {
            if (iArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean p(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i9 = 1; i9 < 2; i9++) {
            if (jArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean q(int[] iArr) {
        for (int i9 = 0; i9 < 4; i9++) {
            if (iArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean r(long[] jArr) {
        for (int i9 = 0; i9 < 2; i9++) {
            if (jArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void s(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = iArr2[0] & 4294967295L;
        int i9 = 1;
        long j11 = iArr2[1] & 4294967295L;
        long j12 = iArr2[2] & 4294967295L;
        long j13 = iArr2[3] & 4294967295L;
        long j14 = iArr[0] & 4294967295L;
        long j15 = (j14 * j10) + 0;
        iArr3[0] = (int) j15;
        long j16 = (j15 >>> 32) + (j14 * j11);
        iArr3[1] = (int) j16;
        long j17 = (j16 >>> 32) + (j14 * j12);
        iArr3[2] = (int) j17;
        long j18 = (j17 >>> 32) + (j14 * j13);
        iArr3[3] = (int) j18;
        int i10 = (int) (j18 >>> 32);
        iArr3[4] = i10;
        for (int i11 = 4; i9 < i11; i11 = 4) {
            long j19 = iArr[i9] & 4294967295L;
            int i12 = i9 + 0;
            long j20 = (j19 * j10) + (iArr3[i12] & 4294967295L) + 0;
            iArr3[i12] = (int) j20;
            int i13 = i9 + 1;
            long j21 = (j20 >>> 32) + (j19 * j11) + (iArr3[i13] & 4294967295L);
            iArr3[i13] = (int) j21;
            int i14 = i9 + 2;
            long j22 = (j21 >>> 32) + (j19 * j12) + (iArr3[i14] & 4294967295L);
            iArr3[i14] = (int) j22;
            int i15 = i9 + 3;
            long j23 = (j22 >>> 32) + (j19 * j13) + (iArr3[i15] & 4294967295L);
            iArr3[i15] = (int) j23;
            iArr3[i9 + 4] = (int) (j23 >>> 32);
            i9 = i13;
            j10 = j10;
        }
    }

    public static int t(int[] iArr, int[] iArr2, int[] iArr3) {
        int i9;
        int i10;
        int i11;
        int i12;
        int i13 = 0;
        long j10 = 4294967295L;
        long j11 = iArr2[0] & 4294967295L;
        long j12 = iArr2[1] & 4294967295L;
        long j13 = iArr2[2] & 4294967295L;
        long j14 = iArr2[3] & 4294967295L;
        long j15 = 0;
        while (i13 < 4) {
            long j16 = iArr[i13] & j10;
            long j17 = (j16 * j11) + (iArr3[i9] & j10) + 0;
            iArr3[i13 + 0] = (int) j17;
            int i14 = i13 + 1;
            long j18 = (j17 >>> 32) + (j16 * j12) + (iArr3[i14] & 4294967295L);
            iArr3[i14] = (int) j18;
            long j19 = (j18 >>> 32) + (j16 * j13) + (iArr3[i10] & 4294967295L);
            iArr3[i13 + 2] = (int) j19;
            long j20 = (j19 >>> 32) + (j16 * j14) + (iArr3[i11] & 4294967295L);
            iArr3[i13 + 3] = (int) j20;
            long j21 = j15 + (j20 >>> 32) + (iArr3[i12] & 4294967295L);
            iArr3[i13 + 4] = (int) j21;
            j15 = j21 >>> 32;
            i13 = i14;
            j10 = 4294967295L;
            j11 = j11;
            j12 = j12;
        }
        return (int) j15;
    }

    public static void u(int[] iArr, int[] iArr2) {
        long j10 = iArr[0] & 4294967295L;
        int i9 = 8;
        int i10 = 3;
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            long j11 = iArr[i10] & 4294967295L;
            long j12 = j11 * j11;
            int i13 = i9 - 1;
            iArr2[i13] = (i11 << 31) | ((int) (j12 >>> 33));
            i9 = i13 - 1;
            iArr2[i9] = (int) (j12 >>> 1);
            int i14 = (int) j12;
            if (i12 <= 0) {
                long j13 = j10 * j10;
                iArr2[0] = (int) j13;
                long j14 = iArr[1] & 4294967295L;
                long j15 = (((i14 << 31) & 4294967295L) | (j13 >>> 33)) + (j14 * j10);
                int i15 = (int) j15;
                iArr2[1] = (i15 << 1) | (((int) (j13 >>> 32)) & 1);
                int i16 = i15 >>> 31;
                long j16 = (iArr2[2] & 4294967295L) + (j15 >>> 32);
                long j17 = iArr[2] & 4294967295L;
                long j18 = j16 + (j17 * j10);
                int i17 = (int) j18;
                iArr2[2] = (i17 << 1) | i16;
                long j19 = (iArr2[3] & 4294967295L) + (j18 >>> 32) + (j17 * j14);
                long j20 = (iArr2[4] & 4294967295L) + (j19 >>> 32);
                long j21 = iArr[3] & 4294967295L;
                long j22 = (iArr2[5] & 4294967295L) + (j20 >>> 32);
                long j23 = (j19 & 4294967295L) + (j10 * j21);
                int i18 = (int) j23;
                iArr2[3] = (i18 << 1) | (i17 >>> 31);
                long j24 = (j20 & 4294967295L) + (j23 >>> 32) + (j14 * j21);
                long j25 = (j22 & 4294967295L) + (j24 >>> 32) + (j21 * j17);
                long j26 = (iArr2[6] & 4294967295L) + (j22 >>> 32) + (j25 >>> 32);
                int i19 = (int) j24;
                iArr2[4] = (i18 >>> 31) | (i19 << 1);
                int i20 = (int) (j25 & 4294967295L);
                iArr2[5] = (i19 >>> 31) | (i20 << 1);
                int i21 = (int) j26;
                iArr2[6] = (i20 >>> 31) | (i21 << 1);
                iArr2[7] = ((iArr2[7] + ((int) (j26 >>> 32))) << 1) | (i21 >>> 31);
                return;
            }
            i10 = i12;
            i11 = i14;
        }
    }

    public static int v(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = ((iArr[0] & 4294967295L) - (iArr2[0] & 4294967295L)) + 0;
        iArr3[0] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr[1] & 4294967295L) - (iArr2[1] & 4294967295L));
        iArr3[1] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr[2] & 4294967295L) - (iArr2[2] & 4294967295L));
        iArr3[2] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr[3] & 4294967295L) - (iArr2[3] & 4294967295L));
        iArr3[3] = (int) j13;
        return (int) (j13 >> 32);
    }

    public static int w(int[] iArr, int[] iArr2) {
        long j10 = ((iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L)) + 0;
        iArr2[0] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L));
        iArr2[1] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L));
        iArr2[2] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr2[3] & 4294967295L) - (4294967295L & iArr[3]));
        iArr2[3] = (int) j13;
        return (int) (j13 >> 32);
    }

    public static BigInteger x(int[] iArr) {
        byte[] bArr = new byte[16];
        for (int i9 = 0; i9 < 4; i9++) {
            int i10 = iArr[i9];
            if (i10 != 0) {
                org.bouncycastle.util.g.c(i10, bArr, (3 - i9) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger y(long[] jArr) {
        byte[] bArr = new byte[16];
        for (int i9 = 0; i9 < 2; i9++) {
            long j10 = jArr[i9];
            if (j10 != 0) {
                org.bouncycastle.util.g.i(j10, bArr, (1 - i9) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }
}
