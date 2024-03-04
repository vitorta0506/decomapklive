package nk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public abstract class g {
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
        long j15 = (j14 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L);
        iArr3[5] = (int) j15;
        long j16 = (j15 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L);
        iArr3[6] = (int) j16;
        return (int) (j16 >>> 32);
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
        long j15 = (j14 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L) + (iArr3[5] & 4294967295L);
        iArr3[5] = (int) j15;
        long j16 = (j15 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L) + (iArr3[6] & 4294967295L);
        iArr3[6] = (int) j16;
        return (int) (j16 >>> 32);
    }

    public static void c(int[] iArr, int i9, int[] iArr2, int i10) {
        iArr2[i10 + 0] = iArr[i9 + 0];
        iArr2[i10 + 1] = iArr[i9 + 1];
        iArr2[i10 + 2] = iArr[i9 + 2];
        iArr2[i10 + 3] = iArr[i9 + 3];
        iArr2[i10 + 4] = iArr[i9 + 4];
        iArr2[i10 + 5] = iArr[i9 + 5];
        iArr2[i10 + 6] = iArr[i9 + 6];
    }

    public static void d(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
        iArr2[6] = iArr[6];
    }

    public static int[] e() {
        return new int[7];
    }

    public static int[] f() {
        return new int[14];
    }

    public static boolean g(int[] iArr, int[] iArr2) {
        for (int i9 = 6; i9 >= 0; i9--) {
            if (iArr[i9] != iArr2[i9]) {
                return false;
            }
        }
        return true;
    }

    public static int[] h(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 224) {
            throw new IllegalArgumentException();
        }
        int[] e10 = e();
        for (int i9 = 0; i9 < 7; i9++) {
            e10[i9] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return e10;
    }

    public static int i(int[] iArr, int i9) {
        int i10;
        if (i9 == 0) {
            i10 = iArr[0];
        } else {
            int i11 = i9 >> 5;
            if (i11 < 0 || i11 >= 7) {
                return 0;
            }
            i10 = iArr[i11] >>> (i9 & 31);
        }
        return i10 & 1;
    }

    public static boolean j(int[] iArr, int[] iArr2) {
        for (int i9 = 6; i9 >= 0; i9--) {
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

    public static boolean k(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i9 = 1; i9 < 7; i9++) {
            if (iArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean l(int[] iArr) {
        for (int i9 = 0; i9 < 7; i9++) {
            if (iArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void m(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = iArr2[0] & 4294967295L;
        long j11 = iArr2[1] & 4294967295L;
        long j12 = iArr2[2] & 4294967295L;
        long j13 = iArr2[3] & 4294967295L;
        long j14 = iArr2[4] & 4294967295L;
        long j15 = iArr2[5] & 4294967295L;
        long j16 = iArr2[6] & 4294967295L;
        long j17 = iArr[0] & 4294967295L;
        long j18 = (j17 * j10) + 0;
        iArr3[0] = (int) j18;
        long j19 = (j18 >>> 32) + (j17 * j11);
        iArr3[1] = (int) j19;
        long j20 = (j19 >>> 32) + (j17 * j12);
        iArr3[2] = (int) j20;
        long j21 = (j20 >>> 32) + (j17 * j13);
        iArr3[3] = (int) j21;
        long j22 = (j21 >>> 32) + (j17 * j14);
        iArr3[4] = (int) j22;
        long j23 = (j22 >>> 32) + (j17 * j15);
        iArr3[5] = (int) j23;
        long j24 = (j23 >>> 32) + (j17 * j16);
        iArr3[6] = (int) j24;
        int i9 = (int) (j24 >>> 32);
        iArr3[7] = i9;
        int i10 = 1;
        for (int i11 = 7; i10 < i11; i11 = 7) {
            long j25 = iArr[i10] & 4294967295L;
            int i12 = i10 + 0;
            long j26 = (j25 * j10) + (iArr3[i12] & 4294967295L) + 0;
            iArr3[i12] = (int) j26;
            int i13 = i10 + 1;
            long j27 = j11;
            long j28 = (j26 >>> 32) + (j25 * j11) + (iArr3[i13] & 4294967295L);
            iArr3[i13] = (int) j28;
            int i14 = i10 + 2;
            long j29 = j15;
            long j30 = (j28 >>> 32) + (j25 * j12) + (iArr3[i14] & 4294967295L);
            iArr3[i14] = (int) j30;
            int i15 = i10 + 3;
            long j31 = (j30 >>> 32) + (j25 * j13) + (iArr3[i15] & 4294967295L);
            iArr3[i15] = (int) j31;
            int i16 = i10 + 4;
            long j32 = (j31 >>> 32) + (j25 * j14) + (iArr3[i16] & 4294967295L);
            iArr3[i16] = (int) j32;
            int i17 = i10 + 5;
            long j33 = (j32 >>> 32) + (j25 * j29) + (iArr3[i17] & 4294967295L);
            iArr3[i17] = (int) j33;
            int i18 = i10 + 6;
            long j34 = (j33 >>> 32) + (j25 * j16) + (iArr3[i18] & 4294967295L);
            iArr3[i18] = (int) j34;
            iArr3[i10 + 7] = (int) (j34 >>> 32);
            i10 = i13;
            j10 = j10;
            j11 = j27;
            j15 = j29;
        }
    }

    public static long n(int i9, int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
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
        long j21 = (j19 >>> 32) + (j10 * j20) + j18 + (iArr2[i11 + 4] & 4294967295L);
        iArr3[i12 + 4] = (int) j21;
        long j22 = iArr[i10 + 5] & 4294967295L;
        long j23 = (j21 >>> 32) + (j10 * j22) + j20 + (iArr2[i11 + 5] & 4294967295L);
        iArr3[i12 + 5] = (int) j23;
        long j24 = iArr[i10 + 6] & 4294967295L;
        long j25 = (j23 >>> 32) + (j10 * j24) + j22 + (4294967295L & iArr2[i11 + 6]);
        iArr3[i12 + 6] = (int) j25;
        return (j25 >>> 32) + j24;
    }

    public static int o(int i9, long j10, int[] iArr, int i10) {
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
        return n.y(7, iArr, i10, 4);
    }

    public static int p(int i9, int i10, int[] iArr, int i11) {
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
        return n.y(7, iArr, i11, 3);
    }

    public static int q(int[] iArr, int[] iArr2, int[] iArr3) {
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        long j10 = iArr2[0] & 4294967295L;
        long j11 = iArr2[1] & 4294967295L;
        long j12 = iArr2[2] & 4294967295L;
        long j13 = iArr2[3] & 4294967295L;
        long j14 = iArr2[4] & 4294967295L;
        long j15 = iArr2[5] & 4294967295L;
        long j16 = iArr2[6] & 4294967295L;
        long j17 = 0;
        int i16 = 0;
        while (i16 < 7) {
            long j18 = j16;
            long j19 = iArr[i16] & 4294967295L;
            long j20 = j15;
            long j21 = (j19 * j10) + (iArr3[i9] & 4294967295L) + 0;
            iArr3[i16 + 0] = (int) j21;
            int i17 = i16 + 1;
            long j22 = j11;
            long j23 = (j21 >>> 32) + (j19 * j11) + (iArr3[i17] & 4294967295L);
            iArr3[i17] = (int) j23;
            long j24 = (j23 >>> 32) + (j19 * j12) + (iArr3[i10] & 4294967295L);
            iArr3[i16 + 2] = (int) j24;
            long j25 = (j24 >>> 32) + (j19 * j13) + (iArr3[i11] & 4294967295L);
            iArr3[i16 + 3] = (int) j25;
            long j26 = (j25 >>> 32) + (j19 * j14) + (iArr3[i12] & 4294967295L);
            iArr3[i16 + 4] = (int) j26;
            long j27 = (j26 >>> 32) + (j19 * j20) + (iArr3[i13] & 4294967295L);
            iArr3[i16 + 5] = (int) j27;
            long j28 = (j27 >>> 32) + (j19 * j18) + (iArr3[i14] & 4294967295L);
            iArr3[i16 + 6] = (int) j28;
            long j29 = (j28 >>> 32) + (iArr3[i15] & 4294967295L) + j17;
            iArr3[i16 + 7] = (int) j29;
            j17 = j29 >>> 32;
            i16 = i17;
            j16 = j18;
            j15 = j20;
            j11 = j22;
        }
        return (int) j17;
    }

    public static void r(int[] iArr, int[] iArr2) {
        long j10 = iArr[0] & 4294967295L;
        int i9 = 14;
        int i10 = 6;
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
                long j23 = j20 & 4294967295L;
                long j24 = (iArr2[6] & 4294967295L) + (j22 >>> 32);
                long j25 = (j19 & 4294967295L) + (j21 * j10);
                int i18 = (int) j25;
                iArr2[3] = (i17 >>> 31) | (i18 << 1);
                int i19 = i18 >>> 31;
                long j26 = j23 + (j25 >>> 32) + (j21 * j14);
                long j27 = (j22 & 4294967295L) + (j26 >>> 32) + (j21 * j17);
                long j28 = j24 + (j27 >>> 32);
                long j29 = iArr[4] & 4294967295L;
                long j30 = (iArr2[7] & 4294967295L) + (j28 >>> 32);
                long j31 = j28 & 4294967295L;
                long j32 = (iArr2[8] & 4294967295L) + (j30 >>> 32);
                long j33 = (j26 & 4294967295L) + (j29 * j10);
                int i20 = (int) j33;
                iArr2[4] = (i20 << 1) | i19;
                long j34 = (j27 & 4294967295L) + (j33 >>> 32) + (j29 * j14);
                long j35 = j31 + (j34 >>> 32) + (j29 * j17);
                long j36 = (j30 & 4294967295L) + (j35 >>> 32) + (j29 * j21);
                long j37 = j32 + (j36 >>> 32);
                long j38 = j36 & 4294967295L;
                long j39 = iArr[5] & 4294967295L;
                long j40 = (iArr2[9] & 4294967295L) + (j37 >>> 32);
                long j41 = j37 & 4294967295L;
                long j42 = (iArr2[10] & 4294967295L) + (j40 >>> 32);
                long j43 = (j34 & 4294967295L) + (j39 * j10);
                int i21 = (int) j43;
                iArr2[5] = (i21 << 1) | (i20 >>> 31);
                long j44 = (j35 & 4294967295L) + (j43 >>> 32) + (j39 * j14);
                long j45 = j38 + (j44 >>> 32) + (j39 * j17);
                long j46 = j41 + (j45 >>> 32) + (j39 * j21);
                long j47 = (j40 & 4294967295L) + (j46 >>> 32) + (j39 * j29);
                long j48 = j42 + (j47 >>> 32);
                long j49 = j47 & 4294967295L;
                long j50 = iArr[6] & 4294967295L;
                long j51 = (iArr2[11] & 4294967295L) + (j48 >>> 32);
                long j52 = 4294967295L & j51;
                long j53 = (j44 & 4294967295L) + (j10 * j50);
                int i22 = (int) j53;
                iArr2[6] = (i21 >>> 31) | (i22 << 1);
                int i23 = i22 >>> 31;
                long j54 = (j45 & 4294967295L) + (j53 >>> 32) + (j50 * j14);
                long j55 = (j46 & 4294967295L) + (j54 >>> 32) + (j50 * j17);
                long j56 = j49 + (j55 >>> 32) + (j50 * j21);
                long j57 = (j48 & 4294967295L) + (j56 >>> 32) + (j50 * j29);
                long j58 = j52 + (j57 >>> 32) + (j50 * j39);
                long j59 = (iArr2[12] & 4294967295L) + (j51 >>> 32) + (j58 >>> 32);
                int i24 = (int) j54;
                iArr2[7] = i23 | (i24 << 1);
                int i25 = (int) j55;
                iArr2[8] = (i24 >>> 31) | (i25 << 1);
                int i26 = (int) j56;
                iArr2[9] = (i25 >>> 31) | (i26 << 1);
                int i27 = i26 >>> 31;
                int i28 = (int) j57;
                iArr2[10] = i27 | (i28 << 1);
                int i29 = i28 >>> 31;
                int i30 = (int) j58;
                iArr2[11] = i29 | (i30 << 1);
                int i31 = i30 >>> 31;
                int i32 = (int) j59;
                iArr2[12] = i31 | (i32 << 1);
                iArr2[13] = (i32 >>> 31) | ((iArr2[13] + ((int) (j59 >>> 32))) << 1);
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
        long j15 = (j14 >> 32) + ((iArr[5] & 4294967295L) - (iArr2[5] & 4294967295L));
        iArr3[5] = (int) j15;
        long j16 = (j15 >> 32) + ((iArr[6] & 4294967295L) - (iArr2[6] & 4294967295L));
        iArr3[6] = (int) j16;
        return (int) (j16 >> 32);
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
        long j14 = (j13 >> 32) + ((iArr2[4] & 4294967295L) - (iArr[4] & 4294967295L));
        iArr2[4] = (int) j14;
        long j15 = (j14 >> 32) + ((iArr2[5] & 4294967295L) - (iArr[5] & 4294967295L));
        iArr2[5] = (int) j15;
        long j16 = (j15 >> 32) + ((iArr2[6] & 4294967295L) - (4294967295L & iArr[6]));
        iArr2[6] = (int) j16;
        return (int) (j16 >> 32);
    }

    public static BigInteger u(int[] iArr) {
        byte[] bArr = new byte[28];
        for (int i9 = 0; i9 < 7; i9++) {
            int i10 = iArr[i9];
            if (i10 != 0) {
                org.bouncycastle.util.g.c(i10, bArr, (6 - i9) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }
}
