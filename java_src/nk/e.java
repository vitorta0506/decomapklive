package nk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public abstract class e {
    public static int a(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + 0;
        iArr3[0] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr3[1] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr3[2] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr3[3] = (int) j13;
        long j14 = (j13 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L);
        iArr3[4] = (int) j14;
        return (int) (j14 >>> 32);
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
        long j14 = (j13 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L) + (iArr3[4] & 4294967295L);
        iArr3[4] = (int) j14;
        return (int) (j14 >>> 32);
    }

    public static void c(int[] iArr, int i9, int[] iArr2, int i10) {
        iArr2[i10 + 0] = iArr[i9 + 0];
        iArr2[i10 + 1] = iArr[i9 + 1];
        iArr2[i10 + 2] = iArr[i9 + 2];
        iArr2[i10 + 3] = iArr[i9 + 3];
        iArr2[i10 + 4] = iArr[i9 + 4];
    }

    public static int[] d() {
        return new int[5];
    }

    public static int[] e() {
        return new int[10];
    }

    public static boolean f(int[] iArr, int[] iArr2) {
        for (int i9 = 4; i9 >= 0; i9--) {
            if (iArr[i9] != iArr2[i9]) {
                return false;
            }
        }
        return true;
    }

    public static int[] g(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 160) {
            throw new IllegalArgumentException();
        }
        int[] d10 = d();
        for (int i9 = 0; i9 < 5; i9++) {
            d10[i9] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return d10;
    }

    public static int h(int[] iArr, int i9) {
        int i10;
        if (i9 == 0) {
            i10 = iArr[0];
        } else {
            int i11 = i9 >> 5;
            if (i11 < 0 || i11 >= 5) {
                return 0;
            }
            i10 = iArr[i11] >>> (i9 & 31);
        }
        return i10 & 1;
    }

    public static boolean i(int[] iArr, int[] iArr2) {
        for (int i9 = 4; i9 >= 0; i9--) {
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

    public static boolean j(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i9 = 1; i9 < 5; i9++) {
            if (iArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean k(int[] iArr) {
        for (int i9 = 0; i9 < 5; i9++) {
            if (iArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void l(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = iArr2[0] & 4294967295L;
        int i9 = 1;
        long j11 = iArr2[1] & 4294967295L;
        long j12 = iArr2[2] & 4294967295L;
        long j13 = iArr2[3] & 4294967295L;
        long j14 = iArr2[4] & 4294967295L;
        long j15 = iArr[0] & 4294967295L;
        long j16 = (j15 * j10) + 0;
        iArr3[0] = (int) j16;
        long j17 = (j16 >>> 32) + (j15 * j11);
        iArr3[1] = (int) j17;
        long j18 = (j17 >>> 32) + (j15 * j12);
        iArr3[2] = (int) j18;
        long j19 = (j18 >>> 32) + (j15 * j13);
        iArr3[3] = (int) j19;
        long j20 = (j19 >>> 32) + (j15 * j14);
        iArr3[4] = (int) j20;
        int i10 = (int) (j20 >>> 32);
        iArr3[5] = i10;
        for (int i11 = 5; i9 < i11; i11 = 5) {
            long j21 = iArr[i9] & 4294967295L;
            int i12 = i9 + 0;
            long j22 = (j21 * j10) + (iArr3[i12] & 4294967295L) + 0;
            iArr3[i12] = (int) j22;
            int i13 = i9 + 1;
            long j23 = j11;
            long j24 = (j22 >>> 32) + (j21 * j11) + (iArr3[i13] & 4294967295L);
            iArr3[i13] = (int) j24;
            int i14 = i9 + 2;
            long j25 = j14;
            long j26 = (j24 >>> 32) + (j21 * j12) + (iArr3[i14] & 4294967295L);
            iArr3[i14] = (int) j26;
            int i15 = i9 + 3;
            long j27 = (j26 >>> 32) + (j21 * j13) + (iArr3[i15] & 4294967295L);
            iArr3[i15] = (int) j27;
            int i16 = i9 + 4;
            long j28 = (j27 >>> 32) + (j21 * j25) + (iArr3[i16] & 4294967295L);
            iArr3[i16] = (int) j28;
            iArr3[i9 + 5] = (int) (j28 >>> 32);
            i9 = i13;
            j14 = j25;
            j10 = j10;
            j11 = j23;
        }
    }

    public static long m(int i9, int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = i9 & 4294967295L;
        long j11 = iArr[i10 + 0] & 4294967295L;
        long j12 = (j10 * j11) + (iArr2[i11 + 0] & 4294967295L) + 0;
        iArr3[i12 + 0] = (int) j12;
        long j13 = iArr[i10 + 1] & 4294967295L;
        long j14 = (j12 >>> 32) + (j10 * j13) + j11 + (iArr2[i11 + 1] & 4294967295L);
        iArr3[i12 + 1] = (int) j14;
        long j15 = j14 >>> 32;
        long j16 = iArr[i10 + 2] & 4294967295L;
        long j17 = j15 + (j10 * j16) + j13 + (iArr2[i11 + 2] & 4294967295L);
        iArr3[i12 + 2] = (int) j17;
        long j18 = iArr[i10 + 3] & 4294967295L;
        long j19 = (j17 >>> 32) + (j10 * j18) + j16 + (iArr2[i11 + 3] & 4294967295L);
        iArr3[i12 + 3] = (int) j19;
        long j20 = iArr[i10 + 4] & 4294967295L;
        long j21 = (j19 >>> 32) + (j10 * j20) + j18 + (4294967295L & iArr2[i11 + 4]);
        iArr3[i12 + 4] = (int) j21;
        return (j21 >>> 32) + j20;
    }

    public static int n(int i9, long j10, int[] iArr, int i10) {
        long j11 = i9 & 4294967295L;
        long j12 = j10 & 4294967295L;
        int i11 = i10 + 0;
        long j13 = (j11 * j12) + (iArr[i11] & 4294967295L) + 0;
        iArr[i11] = (int) j13;
        long j14 = j10 >>> 32;
        long j15 = (j11 * j14) + j12;
        int i12 = i10 + 1;
        long j16 = (j13 >>> 32) + j15 + (iArr[i12] & 4294967295L);
        iArr[i12] = (int) j16;
        int i13 = i10 + 2;
        long j17 = (j16 >>> 32) + j14 + (iArr[i13] & 4294967295L);
        iArr[i13] = (int) j17;
        int i14 = i10 + 3;
        long j18 = (j17 >>> 32) + (4294967295L & iArr[i14]);
        iArr[i14] = (int) j18;
        if ((j18 >>> 32) == 0) {
            return 0;
        }
        return n.y(5, iArr, i10, 4);
    }

    public static int o(int i9, int i10, int[] iArr, int i11) {
        long j10 = i10 & 4294967295L;
        int i12 = i11 + 0;
        long j11 = ((i9 & 4294967295L) * j10) + (iArr[i12] & 4294967295L) + 0;
        iArr[i12] = (int) j11;
        int i13 = i11 + 1;
        long j12 = (j11 >>> 32) + j10 + (iArr[i13] & 4294967295L);
        iArr[i13] = (int) j12;
        long j13 = j12 >>> 32;
        int i14 = i11 + 2;
        long j14 = j13 + (iArr[i14] & 4294967295L);
        iArr[i14] = (int) j14;
        if ((j14 >>> 32) == 0) {
            return 0;
        }
        return n.y(5, iArr, i11, 3);
    }

    public static int p(int[] iArr, int[] iArr2, int[] iArr3) {
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = 0;
        long j10 = 4294967295L;
        long j11 = iArr2[0] & 4294967295L;
        long j12 = iArr2[1] & 4294967295L;
        long j13 = iArr2[2] & 4294967295L;
        long j14 = iArr2[3] & 4294967295L;
        long j15 = iArr2[4] & 4294967295L;
        long j16 = 0;
        while (i14 < 5) {
            long j17 = iArr[i14] & j10;
            long j18 = (j17 * j11) + (iArr3[i9] & j10) + 0;
            iArr3[i14 + 0] = (int) j18;
            int i15 = i14 + 1;
            long j19 = j12;
            long j20 = (j18 >>> 32) + (j17 * j12) + (iArr3[i15] & 4294967295L);
            iArr3[i15] = (int) j20;
            long j21 = j13;
            long j22 = (j20 >>> 32) + (j17 * j13) + (iArr3[i10] & 4294967295L);
            iArr3[i14 + 2] = (int) j22;
            long j23 = (j22 >>> 32) + (j17 * j14) + (iArr3[i11] & 4294967295L);
            iArr3[i14 + 3] = (int) j23;
            long j24 = (j23 >>> 32) + (j17 * j15) + (iArr3[i12] & 4294967295L);
            iArr3[i14 + 4] = (int) j24;
            long j25 = (j24 >>> 32) + (iArr3[i13] & 4294967295L) + j16;
            iArr3[i14 + 5] = (int) j25;
            j16 = j25 >>> 32;
            i14 = i15;
            j10 = 4294967295L;
            j11 = j11;
            j13 = j21;
            j12 = j19;
        }
        return (int) j16;
    }

    public static int q(int i9, int i10, int[] iArr, int i11) {
        int i12 = i11 + 0;
        long j10 = ((i10 & 4294967295L) * (i9 & 4294967295L)) + (iArr[i12] & 4294967295L) + 0;
        iArr[i12] = (int) j10;
        int i13 = i11 + 1;
        long j11 = (j10 >>> 32) + (4294967295L & iArr[i13]);
        iArr[i13] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return n.y(5, iArr, i11, 2);
    }

    public static void r(int[] iArr, int[] iArr2) {
        long j10 = iArr[0] & 4294967295L;
        int i9 = 10;
        int i10 = 4;
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
                long j16 = (iArr2[2] & 4294967295L) + (j15 >>> 32);
                long j17 = iArr[2] & 4294967295L;
                long j18 = j16 + (j17 * j10);
                int i16 = (int) j18;
                iArr2[2] = (i16 << 1) | (i15 >>> 31);
                long j19 = (iArr2[3] & 4294967295L) + (j18 >>> 32) + (j17 * j14);
                long j20 = (iArr2[4] & 4294967295L) + (j19 >>> 32);
                long j21 = iArr[3] & 4294967295L;
                long j22 = (iArr2[5] & 4294967295L) + (j20 >>> 32);
                long j23 = j20 & 4294967295L;
                long j24 = (iArr2[6] & 4294967295L) + (j22 >>> 32);
                long j25 = (j19 & 4294967295L) + (j21 * j10);
                int i17 = (int) j25;
                iArr2[3] = (i17 << 1) | (i16 >>> 31);
                int i18 = i17 >>> 31;
                long j26 = j23 + (j25 >>> 32) + (j21 * j14);
                long j27 = (j22 & 4294967295L) + (j26 >>> 32) + (j21 * j17);
                long j28 = j24 + (j27 >>> 32);
                long j29 = iArr[4] & 4294967295L;
                long j30 = (iArr2[7] & 4294967295L) + (j28 >>> 32);
                long j31 = 4294967295L & j30;
                long j32 = (j26 & 4294967295L) + (j29 * j10);
                int i19 = (int) j32;
                iArr2[4] = i18 | (i19 << 1);
                long j33 = (j27 & 4294967295L) + (j32 >>> 32) + (j14 * j29);
                long j34 = (j28 & 4294967295L) + (j33 >>> 32) + (j29 * j17);
                long j35 = j31 + (j34 >>> 32) + (j29 * j21);
                long j36 = (iArr2[8] & 4294967295L) + (j30 >>> 32) + (j35 >>> 32);
                int i20 = (int) j33;
                iArr2[5] = (i19 >>> 31) | (i20 << 1);
                int i21 = (int) j34;
                iArr2[6] = (i21 << 1) | (i20 >>> 31);
                int i22 = i21 >>> 31;
                int i23 = (int) j35;
                iArr2[7] = i22 | (i23 << 1);
                int i24 = i23 >>> 31;
                int i25 = (int) j36;
                iArr2[8] = i24 | (i25 << 1);
                iArr2[9] = (i25 >>> 31) | ((iArr2[9] + ((int) (j36 >>> 32))) << 1);
                return;
            }
            i10 = i12;
            i11 = i14;
        }
    }

    public static int s(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = ((iArr[0] & 4294967295L) - (iArr2[0] & 4294967295L)) + 0;
        iArr3[0] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr[1] & 4294967295L) - (iArr2[1] & 4294967295L));
        iArr3[1] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr[2] & 4294967295L) - (iArr2[2] & 4294967295L));
        iArr3[2] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr[3] & 4294967295L) - (iArr2[3] & 4294967295L));
        iArr3[3] = (int) j13;
        long j14 = (j13 >> 32) + ((iArr[4] & 4294967295L) - (iArr2[4] & 4294967295L));
        iArr3[4] = (int) j14;
        return (int) (j14 >> 32);
    }

    public static int t(int[] iArr, int[] iArr2) {
        long j10 = ((iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L)) + 0;
        iArr2[0] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L));
        iArr2[1] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L));
        iArr2[2] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr2[3] & 4294967295L) - (iArr[3] & 4294967295L));
        iArr2[3] = (int) j13;
        long j14 = (j13 >> 32) + ((iArr2[4] & 4294967295L) - (4294967295L & iArr[4]));
        iArr2[4] = (int) j14;
        return (int) (j14 >> 32);
    }

    public static BigInteger u(int[] iArr) {
        byte[] bArr = new byte[20];
        for (int i9 = 0; i9 < 5; i9++) {
            int i10 = iArr[i9];
            if (i10 != 0) {
                org.bouncycastle.util.g.c(i10, bArr, (4 - i9) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }
}
