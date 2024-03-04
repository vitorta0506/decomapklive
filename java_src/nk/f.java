package nk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public abstract class f {
    public static int A(int i9, int i10, int[] iArr, int i11) {
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
        return n.y(6, iArr, i11, 3);
    }

    public static int B(int[] iArr, int[] iArr2, int[] iArr3) {
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15 = 0;
        long j10 = 4294967295L;
        long j11 = iArr2[0] & 4294967295L;
        long j12 = iArr2[1] & 4294967295L;
        long j13 = iArr2[2] & 4294967295L;
        long j14 = iArr2[3] & 4294967295L;
        long j15 = iArr2[4] & 4294967295L;
        long j16 = iArr2[5] & 4294967295L;
        long j17 = 0;
        while (i15 < 6) {
            long j18 = j16;
            long j19 = iArr[i15] & j10;
            long j20 = j11;
            long j21 = (j19 * j11) + (iArr3[i9] & j10) + 0;
            iArr3[i15 + 0] = (int) j21;
            int i16 = i15 + 1;
            long j22 = (j21 >>> 32) + (j19 * j12) + (iArr3[i16] & 4294967295L);
            iArr3[i16] = (int) j22;
            long j23 = (j22 >>> 32) + (j19 * j13) + (iArr3[i10] & 4294967295L);
            iArr3[i15 + 2] = (int) j23;
            long j24 = (j23 >>> 32) + (j19 * j14) + (iArr3[i11] & 4294967295L);
            iArr3[i15 + 3] = (int) j24;
            long j25 = (j24 >>> 32) + (j19 * j15) + (iArr3[i12] & 4294967295L);
            iArr3[i15 + 4] = (int) j25;
            long j26 = (j25 >>> 32) + (j19 * j18) + (iArr3[i13] & 4294967295L);
            iArr3[i15 + 5] = (int) j26;
            long j27 = (j26 >>> 32) + (iArr3[i14] & 4294967295L) + j17;
            iArr3[i15 + 6] = (int) j27;
            j17 = j27 >>> 32;
            i15 = i16;
            j10 = 4294967295L;
            j16 = j18;
            j11 = j20;
            j12 = j12;
            j13 = j13;
        }
        return (int) j17;
    }

    public static void C(int[] iArr, int i9, int[] iArr2, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        long j10 = iArr[i9 + 0] & 4294967295L;
        int i20 = 0;
        int i21 = 12;
        int i22 = 5;
        while (true) {
            int i23 = i22 - 1;
            long j11 = iArr[i9 + i22] & 4294967295L;
            long j12 = j11 * j11;
            int i24 = i21 - 1;
            iArr2[i10 + i24] = (i20 << 31) | ((int) (j12 >>> 33));
            i21 = i24 - 1;
            iArr2[i10 + i21] = (int) (j12 >>> 1);
            i20 = (int) j12;
            if (i23 <= 0) {
                long j13 = j10 * j10;
                iArr2[i10 + 0] = (int) j13;
                long j14 = iArr[i9 + 1] & 4294967295L;
                long j15 = (((i20 << 31) & 4294967295L) | (j13 >>> 33)) + (j14 * j10);
                int i25 = (int) j15;
                iArr2[i10 + 1] = (i25 << 1) | (((int) (j13 >>> 32)) & 1);
                int i26 = i25 >>> 31;
                long j16 = (iArr2[i11] & 4294967295L) + (j15 >>> 32);
                long j17 = iArr[i9 + 2] & 4294967295L;
                long j18 = j16 + (j17 * j10);
                int i27 = (int) j18;
                iArr2[i10 + 2] = (i27 << 1) | i26;
                int i28 = i27 >>> 31;
                long j19 = (iArr2[i12] & 4294967295L) + (j18 >>> 32) + (j17 * j14);
                long j20 = (iArr2[i13] & 4294967295L) + (j19 >>> 32);
                long j21 = iArr[i9 + 3] & 4294967295L;
                long j22 = (iArr2[i14] & 4294967295L) + (j20 >>> 32);
                long j23 = (iArr2[i15] & 4294967295L) + (j22 >>> 32);
                long j24 = (j19 & 4294967295L) + (j21 * j10);
                int i29 = (int) j24;
                iArr2[i10 + 3] = (i29 << 1) | i28;
                long j25 = (j20 & 4294967295L) + (j24 >>> 32) + (j21 * j14);
                long j26 = (j22 & 4294967295L) + (j25 >>> 32) + (j21 * j17);
                long j27 = j23 + (j26 >>> 32);
                long j28 = j26 & 4294967295L;
                long j29 = iArr[i9 + 4] & 4294967295L;
                long j30 = (iArr2[i16] & 4294967295L) + (j27 >>> 32);
                long j31 = j27 & 4294967295L;
                long j32 = (j25 & 4294967295L) + (j29 * j10);
                int i30 = (int) j32;
                iArr2[i10 + 4] = (i29 >>> 31) | (i30 << 1);
                int i31 = i30 >>> 31;
                long j33 = j28 + (j32 >>> 32) + (j29 * j14);
                long j34 = j31 + (j33 >>> 32) + (j29 * j17);
                long j35 = (j30 & 4294967295L) + (j34 >>> 32) + (j29 * j21);
                long j36 = (iArr2[i17] & 4294967295L) + (j30 >>> 32) + (j35 >>> 32);
                long j37 = j35 & 4294967295L;
                long j38 = iArr[i9 + 5] & 4294967295L;
                long j39 = (iArr2[i18] & 4294967295L) + (j36 >>> 32);
                long j40 = (j33 & 4294967295L) + (j10 * j38);
                int i32 = (int) j40;
                iArr2[i10 + 5] = (i32 << 1) | i31;
                long j41 = (j34 & 4294967295L) + (j40 >>> 32) + (j38 * j14);
                long j42 = j37 + (j41 >>> 32) + (j38 * j17);
                long j43 = (j36 & 4294967295L) + (j42 >>> 32) + (j38 * j21);
                long j44 = (j39 & 4294967295L) + (j43 >>> 32) + (j38 * j29);
                long j45 = (iArr2[i19] & 4294967295L) + (j39 >>> 32) + (j44 >>> 32);
                int i33 = (int) j41;
                iArr2[i10 + 6] = (i32 >>> 31) | (i33 << 1);
                int i34 = (int) j42;
                iArr2[i10 + 7] = (i33 >>> 31) | (i34 << 1);
                int i35 = (int) j43;
                iArr2[i10 + 8] = (i34 >>> 31) | (i35 << 1);
                int i36 = i35 >>> 31;
                int i37 = (int) j44;
                iArr2[i10 + 9] = i36 | (i37 << 1);
                int i38 = i37 >>> 31;
                int i39 = (int) j45;
                iArr2[i10 + 10] = i38 | (i39 << 1);
                int i40 = i39 >>> 31;
                int i41 = i10 + 11;
                iArr2[i41] = i40 | ((iArr2[i41] + ((int) (j45 >>> 32))) << 1);
                return;
            }
            i22 = i23;
        }
    }

    public static void D(int[] iArr, int[] iArr2) {
        long j10 = iArr[0] & 4294967295L;
        int i9 = 12;
        int i10 = 5;
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
                iArr2[3] = (i18 << 1) | (i17 >>> 31);
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
                long j41 = 4294967295L & j40;
                long j42 = (j34 & 4294967295L) + (j10 * j39);
                int i21 = (int) j42;
                iArr2[5] = (i21 << 1) | (i20 >>> 31);
                long j43 = (j35 & 4294967295L) + (j42 >>> 32) + (j39 * j14);
                long j44 = j38 + (j43 >>> 32) + (j39 * j17);
                long j45 = (j37 & 4294967295L) + (j44 >>> 32) + (j39 * j21);
                long j46 = j41 + (j45 >>> 32) + (j39 * j29);
                long j47 = (iArr2[10] & 4294967295L) + (j40 >>> 32) + (j46 >>> 32);
                int i22 = (int) j43;
                iArr2[6] = (i21 >>> 31) | (i22 << 1);
                int i23 = (int) j44;
                iArr2[7] = (i22 >>> 31) | (i23 << 1);
                int i24 = (int) j45;
                iArr2[8] = (i23 >>> 31) | (i24 << 1);
                int i25 = (int) j46;
                iArr2[9] = (i24 >>> 31) | (i25 << 1);
                int i26 = i25 >>> 31;
                int i27 = (int) j47;
                iArr2[10] = i26 | (i27 << 1);
                iArr2[11] = (i27 >>> 31) | ((iArr2[11] + ((int) (j47 >>> 32))) << 1);
                return;
            }
            i10 = i12;
            i11 = i14;
        }
    }

    public static int E(int[] iArr, int i9, int[] iArr2, int i10, int[] iArr3, int i11) {
        long j10 = ((iArr[i9 + 0] & 4294967295L) - (iArr2[i10 + 0] & 4294967295L)) + 0;
        iArr3[i11 + 0] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr[i9 + 1] & 4294967295L) - (iArr2[i10 + 1] & 4294967295L));
        iArr3[i11 + 1] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr[i9 + 2] & 4294967295L) - (iArr2[i10 + 2] & 4294967295L));
        iArr3[i11 + 2] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr[i9 + 3] & 4294967295L) - (iArr2[i10 + 3] & 4294967295L));
        iArr3[i11 + 3] = (int) j13;
        long j14 = (j13 >> 32) + ((iArr[i9 + 4] & 4294967295L) - (iArr2[i10 + 4] & 4294967295L));
        iArr3[i11 + 4] = (int) j14;
        long j15 = (j14 >> 32) + ((iArr[i9 + 5] & 4294967295L) - (iArr2[i10 + 5] & 4294967295L));
        iArr3[i11 + 5] = (int) j15;
        return (int) (j15 >> 32);
    }

    public static int F(int[] iArr, int[] iArr2, int[] iArr3) {
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
        return (int) (j15 >> 32);
    }

    public static int G(int[] iArr, int[] iArr2) {
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
        long j15 = (j14 >> 32) + ((iArr2[5] & 4294967295L) - (4294967295L & iArr[5]));
        iArr2[5] = (int) j15;
        return (int) (j15 >> 32);
    }

    public static BigInteger H(int[] iArr) {
        byte[] bArr = new byte[24];
        for (int i9 = 0; i9 < 6; i9++) {
            int i10 = iArr[i9];
            if (i10 != 0) {
                org.bouncycastle.util.g.c(i10, bArr, (5 - i9) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger I(long[] jArr) {
        byte[] bArr = new byte[24];
        for (int i9 = 0; i9 < 3; i9++) {
            long j10 = jArr[i9];
            if (j10 != 0) {
                org.bouncycastle.util.g.i(j10, bArr, (2 - i9) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

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
        return (int) (j15 >>> 32);
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
        return (int) (j15 >>> 32);
    }

    public static int c(int[] iArr, int i9, int[] iArr2, int i10, int i11) {
        int i12 = i10 + 0;
        long j10 = (i11 & 4294967295L) + (iArr[i9 + 0] & 4294967295L) + (iArr2[i12] & 4294967295L);
        iArr2[i12] = (int) j10;
        int i13 = i10 + 1;
        long j11 = (j10 >>> 32) + (iArr[i9 + 1] & 4294967295L) + (iArr2[i13] & 4294967295L);
        iArr2[i13] = (int) j11;
        int i14 = i10 + 2;
        long j12 = (j11 >>> 32) + (iArr[i9 + 2] & 4294967295L) + (iArr2[i14] & 4294967295L);
        iArr2[i14] = (int) j12;
        int i15 = i10 + 3;
        long j13 = (j12 >>> 32) + (iArr[i9 + 3] & 4294967295L) + (iArr2[i15] & 4294967295L);
        iArr2[i15] = (int) j13;
        int i16 = i10 + 4;
        long j14 = (j13 >>> 32) + (iArr[i9 + 4] & 4294967295L) + (iArr2[i16] & 4294967295L);
        iArr2[i16] = (int) j14;
        int i17 = i10 + 5;
        long j15 = (j14 >>> 32) + (iArr[i9 + 5] & 4294967295L) + (4294967295L & iArr2[i17]);
        iArr2[i17] = (int) j15;
        return (int) (j15 >>> 32);
    }

    public static int d(int[] iArr, int i9, int[] iArr2, int i10) {
        int i11 = i9 + 0;
        int i12 = i10 + 0;
        long j10 = (iArr[i11] & 4294967295L) + (iArr2[i12] & 4294967295L) + 0;
        int i13 = (int) j10;
        iArr[i11] = i13;
        iArr2[i12] = i13;
        int i14 = i9 + 1;
        int i15 = i10 + 1;
        long j11 = (j10 >>> 32) + (iArr[i14] & 4294967295L) + (iArr2[i15] & 4294967295L);
        int i16 = (int) j11;
        iArr[i14] = i16;
        iArr2[i15] = i16;
        int i17 = i9 + 2;
        int i18 = i10 + 2;
        long j12 = (j11 >>> 32) + (iArr[i17] & 4294967295L) + (iArr2[i18] & 4294967295L);
        int i19 = (int) j12;
        iArr[i17] = i19;
        iArr2[i18] = i19;
        int i20 = i9 + 3;
        int i21 = i10 + 3;
        long j13 = (j12 >>> 32) + (iArr[i20] & 4294967295L) + (iArr2[i21] & 4294967295L);
        int i22 = (int) j13;
        iArr[i20] = i22;
        iArr2[i21] = i22;
        int i23 = i9 + 4;
        int i24 = i10 + 4;
        long j14 = (j13 >>> 32) + (iArr[i23] & 4294967295L) + (iArr2[i24] & 4294967295L);
        int i25 = (int) j14;
        iArr[i23] = i25;
        iArr2[i24] = i25;
        int i26 = i9 + 5;
        int i27 = i10 + 5;
        long j15 = (j14 >>> 32) + (iArr[i26] & 4294967295L) + (4294967295L & iArr2[i27]);
        int i28 = (int) j15;
        iArr[i26] = i28;
        iArr2[i27] = i28;
        return (int) (j15 >>> 32);
    }

    public static void e(int[] iArr, int i9, int[] iArr2, int i10) {
        iArr2[i10 + 0] = iArr[i9 + 0];
        iArr2[i10 + 1] = iArr[i9 + 1];
        iArr2[i10 + 2] = iArr[i9 + 2];
        iArr2[i10 + 3] = iArr[i9 + 3];
        iArr2[i10 + 4] = iArr[i9 + 4];
        iArr2[i10 + 5] = iArr[i9 + 5];
    }

    public static void f(long[] jArr, int i9, long[] jArr2, int i10) {
        jArr2[i10 + 0] = jArr[i9 + 0];
        jArr2[i10 + 1] = jArr[i9 + 1];
        jArr2[i10 + 2] = jArr[i9 + 2];
    }

    public static void g(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
    }

    public static int[] h() {
        return new int[6];
    }

    public static long[] i() {
        return new long[3];
    }

    public static int[] j() {
        return new int[12];
    }

    public static long[] k() {
        return new long[6];
    }

    public static boolean l(int[] iArr, int i9, int[] iArr2, int i10, int[] iArr3, int i11) {
        boolean q10 = q(iArr, i9, iArr2, i10);
        if (q10) {
            E(iArr, i9, iArr2, i10, iArr3, i11);
        } else {
            E(iArr2, i10, iArr, i9, iArr3, i11);
        }
        return q10;
    }

    public static boolean m(int[] iArr, int[] iArr2) {
        for (int i9 = 5; i9 >= 0; i9--) {
            if (iArr[i9] != iArr2[i9]) {
                return false;
            }
        }
        return true;
    }

    public static boolean n(long[] jArr, long[] jArr2) {
        for (int i9 = 2; i9 >= 0; i9--) {
            if (jArr[i9] != jArr2[i9]) {
                return false;
            }
        }
        return true;
    }

    public static int[] o(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 192) {
            throw new IllegalArgumentException();
        }
        int[] h10 = h();
        for (int i9 = 0; i9 < 6; i9++) {
            h10[i9] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return h10;
    }

    public static int p(int[] iArr, int i9) {
        int i10;
        if (i9 == 0) {
            i10 = iArr[0];
        } else {
            int i11 = i9 >> 5;
            if (i11 < 0 || i11 >= 6) {
                return 0;
            }
            i10 = iArr[i11] >>> (i9 & 31);
        }
        return i10 & 1;
    }

    public static boolean q(int[] iArr, int i9, int[] iArr2, int i10) {
        for (int i11 = 5; i11 >= 0; i11--) {
            int i12 = iArr[i9 + i11] ^ Integer.MIN_VALUE;
            int i13 = Integer.MIN_VALUE ^ iArr2[i10 + i11];
            if (i12 < i13) {
                return false;
            }
            if (i12 > i13) {
                return true;
            }
        }
        return true;
    }

    public static boolean r(int[] iArr, int[] iArr2) {
        for (int i9 = 5; i9 >= 0; i9--) {
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

    public static boolean s(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i9 = 1; i9 < 6; i9++) {
            if (iArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean t(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i9 = 1; i9 < 3; i9++) {
            if (jArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean u(int[] iArr) {
        for (int i9 = 0; i9 < 6; i9++) {
            if (iArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean v(long[] jArr) {
        for (int i9 = 0; i9 < 3; i9++) {
            if (jArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void w(int[] iArr, int i9, int[] iArr2, int i10, int[] iArr3, int i11) {
        long j10 = iArr2[i10 + 0] & 4294967295L;
        long j11 = iArr2[i10 + 1] & 4294967295L;
        long j12 = iArr2[i10 + 2] & 4294967295L;
        long j13 = iArr2[i10 + 3] & 4294967295L;
        long j14 = iArr2[i10 + 4] & 4294967295L;
        long j15 = iArr2[i10 + 5] & 4294967295L;
        long j16 = iArr[i9 + 0] & 4294967295L;
        long j17 = (j16 * j10) + 0;
        iArr3[i11 + 0] = (int) j17;
        long j18 = (j17 >>> 32) + (j16 * j11);
        iArr3[i11 + 1] = (int) j18;
        long j19 = (j18 >>> 32) + (j16 * j12);
        iArr3[i11 + 2] = (int) j19;
        long j20 = (j19 >>> 32) + (j16 * j13);
        iArr3[i11 + 3] = (int) j20;
        long j21 = (j20 >>> 32) + (j16 * j14);
        iArr3[i11 + 4] = (int) j21;
        long j22 = (j21 >>> 32) + (j16 * j15);
        iArr3[i11 + 5] = (int) j22;
        iArr3[i11 + 6] = (int) (j22 >>> 32);
        int i12 = 1;
        int i13 = i11;
        int i14 = 1;
        while (i14 < 6) {
            i13 += i12;
            long j23 = iArr[i9 + i14] & 4294967295L;
            int i15 = i13 + 0;
            long j24 = (j23 * j10) + (iArr3[i15] & 4294967295L) + 0;
            iArr3[i15] = (int) j24;
            int i16 = i13 + 1;
            long j25 = j15;
            long j26 = (j24 >>> 32) + (j23 * j11) + (iArr3[i16] & 4294967295L);
            iArr3[i16] = (int) j26;
            int i17 = i13 + 2;
            long j27 = (j26 >>> 32) + (j23 * j12) + (iArr3[i17] & 4294967295L);
            iArr3[i17] = (int) j27;
            int i18 = i13 + 3;
            long j28 = (j27 >>> 32) + (j23 * j13) + (iArr3[i18] & 4294967295L);
            iArr3[i18] = (int) j28;
            int i19 = i13 + 4;
            long j29 = (j28 >>> 32) + (j23 * j14) + (iArr3[i19] & 4294967295L);
            iArr3[i19] = (int) j29;
            int i20 = i13 + 5;
            long j30 = (j29 >>> 32) + (j23 * j25) + (iArr3[i20] & 4294967295L);
            iArr3[i20] = (int) j30;
            iArr3[i13 + 6] = (int) (j30 >>> 32);
            i14++;
            j12 = j12;
            j15 = j25;
            i12 = 1;
        }
    }

    public static void x(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = iArr2[0] & 4294967295L;
        long j11 = iArr2[1] & 4294967295L;
        long j12 = iArr2[2] & 4294967295L;
        long j13 = iArr2[3] & 4294967295L;
        long j14 = iArr2[4] & 4294967295L;
        long j15 = iArr2[5] & 4294967295L;
        long j16 = iArr[0] & 4294967295L;
        long j17 = (j16 * j10) + 0;
        iArr3[0] = (int) j17;
        long j18 = (j17 >>> 32) + (j16 * j11);
        iArr3[1] = (int) j18;
        long j19 = (j18 >>> 32) + (j16 * j12);
        iArr3[2] = (int) j19;
        long j20 = (j19 >>> 32) + (j16 * j13);
        iArr3[3] = (int) j20;
        long j21 = (j20 >>> 32) + (j16 * j14);
        iArr3[4] = (int) j21;
        long j22 = (j21 >>> 32) + (j16 * j15);
        iArr3[5] = (int) j22;
        int i9 = (int) (j22 >>> 32);
        iArr3[6] = i9;
        int i10 = 1;
        for (int i11 = 6; i10 < i11; i11 = 6) {
            long j23 = iArr[i10] & 4294967295L;
            int i12 = i10 + 0;
            long j24 = (j23 * j10) + (iArr3[i12] & 4294967295L) + 0;
            iArr3[i12] = (int) j24;
            int i13 = i10 + 1;
            long j25 = j11;
            long j26 = (j24 >>> 32) + (j23 * j11) + (iArr3[i13] & 4294967295L);
            iArr3[i13] = (int) j26;
            int i14 = i10 + 2;
            long j27 = j15;
            long j28 = (j26 >>> 32) + (j23 * j12) + (iArr3[i14] & 4294967295L);
            iArr3[i14] = (int) j28;
            int i15 = i10 + 3;
            long j29 = (j28 >>> 32) + (j23 * j13) + (iArr3[i15] & 4294967295L);
            iArr3[i15] = (int) j29;
            int i16 = i10 + 4;
            long j30 = (j29 >>> 32) + (j23 * j14) + (iArr3[i16] & 4294967295L);
            iArr3[i16] = (int) j30;
            int i17 = i10 + 5;
            long j31 = (j30 >>> 32) + (j23 * j27) + (iArr3[i17] & 4294967295L);
            iArr3[i17] = (int) j31;
            iArr3[i10 + 6] = (int) (j31 >>> 32);
            i10 = i13;
            j10 = j10;
            j11 = j25;
            j15 = j27;
        }
    }

    public static long y(int i9, int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
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
        long j23 = (j21 >>> 32) + (j10 * j22) + j20 + (4294967295L & iArr2[i11 + 5]);
        iArr3[i12 + 5] = (int) j23;
        return (j23 >>> 32) + j22;
    }

    public static int z(int i9, long j10, int[] iArr, int i10) {
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
        return n.y(6, iArr, i10, 4);
    }
}
