package nk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public abstract class h {
    public static int A(int i9, long j10, int[] iArr, int i10) {
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
        return n.y(8, iArr, i10, 4);
    }

    public static int B(int i9, int i10, int[] iArr, int i11) {
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
        return n.y(8, iArr, i11, 3);
    }

    public static int C(int[] iArr, int[] iArr2, int[] iArr3) {
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        long j10 = iArr2[0] & 4294967295L;
        long j11 = iArr2[1] & 4294967295L;
        long j12 = iArr2[2] & 4294967295L;
        long j13 = iArr2[3] & 4294967295L;
        long j14 = iArr2[4] & 4294967295L;
        long j15 = iArr2[5] & 4294967295L;
        long j16 = iArr2[6] & 4294967295L;
        long j17 = iArr2[7] & 4294967295L;
        long j18 = 0;
        int i17 = 0;
        while (i17 < 8) {
            long j19 = j17;
            long j20 = iArr[i17] & 4294967295L;
            long j21 = j15;
            long j22 = (j20 * j10) + (iArr3[i9] & 4294967295L) + 0;
            iArr3[i17 + 0] = (int) j22;
            int i18 = i17 + 1;
            long j23 = j11;
            long j24 = (j22 >>> 32) + (j20 * j11) + (iArr3[i18] & 4294967295L);
            iArr3[i18] = (int) j24;
            long j25 = (j24 >>> 32) + (j20 * j12) + (iArr3[i10] & 4294967295L);
            iArr3[i17 + 2] = (int) j25;
            long j26 = (j25 >>> 32) + (j20 * j13) + (iArr3[i11] & 4294967295L);
            iArr3[i17 + 3] = (int) j26;
            long j27 = (j26 >>> 32) + (j20 * j14) + (iArr3[i12] & 4294967295L);
            iArr3[i17 + 4] = (int) j27;
            long j28 = (j27 >>> 32) + (j20 * j21) + (iArr3[i13] & 4294967295L);
            iArr3[i17 + 5] = (int) j28;
            long j29 = (j28 >>> 32) + (j20 * j16) + (iArr3[i14] & 4294967295L);
            iArr3[i17 + 6] = (int) j29;
            long j30 = (j29 >>> 32) + (j20 * j19) + (iArr3[i15] & 4294967295L);
            iArr3[i17 + 7] = (int) j30;
            long j31 = (j30 >>> 32) + (iArr3[i16] & 4294967295L) + j18;
            iArr3[i17 + 8] = (int) j31;
            j18 = j31 >>> 32;
            i17 = i18;
            j17 = j19;
            j15 = j21;
            j11 = j23;
        }
        return (int) j18;
    }

    public static int D(int i9, int[] iArr, int[] iArr2) {
        long j10 = i9 & 4294967295L;
        long j11 = ((iArr2[0] & 4294967295L) * j10) + (iArr[0] & 4294967295L) + 0;
        iArr2[0] = (int) j11;
        long j12 = (j11 >>> 32) + ((iArr2[1] & 4294967295L) * j10) + (iArr[1] & 4294967295L);
        iArr2[1] = (int) j12;
        long j13 = (j12 >>> 32) + ((iArr2[2] & 4294967295L) * j10) + (iArr[2] & 4294967295L);
        iArr2[2] = (int) j13;
        long j14 = (j13 >>> 32) + ((iArr2[3] & 4294967295L) * j10) + (iArr[3] & 4294967295L);
        iArr2[3] = (int) j14;
        long j15 = (j14 >>> 32) + ((iArr2[4] & 4294967295L) * j10) + (iArr[4] & 4294967295L);
        iArr2[4] = (int) j15;
        long j16 = (j15 >>> 32) + ((iArr2[5] & 4294967295L) * j10) + (iArr[5] & 4294967295L);
        iArr2[5] = (int) j16;
        long j17 = (j16 >>> 32) + ((iArr2[6] & 4294967295L) * j10) + (iArr[6] & 4294967295L);
        iArr2[6] = (int) j17;
        long j18 = (j17 >>> 32) + (j10 * (iArr2[7] & 4294967295L)) + (4294967295L & iArr[7]);
        iArr2[7] = (int) j18;
        return (int) (j18 >>> 32);
    }

    public static void E(int[] iArr, int i9, int[] iArr2, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        long j10 = iArr[i9 + 0] & 4294967295L;
        int i24 = 0;
        int i25 = 16;
        int i26 = 7;
        while (true) {
            int i27 = i26 - 1;
            long j11 = iArr[i9 + i26] & 4294967295L;
            long j12 = j11 * j11;
            int i28 = i25 - 1;
            iArr2[i10 + i28] = (i24 << 31) | ((int) (j12 >>> 33));
            i25 = i28 - 1;
            iArr2[i10 + i25] = (int) (j12 >>> 1);
            i24 = (int) j12;
            if (i27 <= 0) {
                long j13 = j10 * j10;
                iArr2[i10 + 0] = (int) j13;
                long j14 = iArr[i9 + 1] & 4294967295L;
                long j15 = (((i24 << 31) & 4294967295L) | (j13 >>> 33)) + (j14 * j10);
                int i29 = (int) j15;
                iArr2[i10 + 1] = (i29 << 1) | (((int) (j13 >>> 32)) & 1);
                int i30 = i29 >>> 31;
                long j16 = (iArr2[i11] & 4294967295L) + (j15 >>> 32);
                long j17 = iArr[i9 + 2] & 4294967295L;
                long j18 = j16 + (j17 * j10);
                int i31 = (int) j18;
                iArr2[i10 + 2] = (i31 << 1) | i30;
                int i32 = i31 >>> 31;
                long j19 = (iArr2[i12] & 4294967295L) + (j18 >>> 32) + (j17 * j14);
                long j20 = (iArr2[i13] & 4294967295L) + (j19 >>> 32);
                long j21 = iArr[i9 + 3] & 4294967295L;
                long j22 = (iArr2[i14] & 4294967295L) + (j20 >>> 32);
                long j23 = (iArr2[i15] & 4294967295L) + (j22 >>> 32);
                long j24 = (j19 & 4294967295L) + (j21 * j10);
                int i33 = (int) j24;
                iArr2[i10 + 3] = (i33 << 1) | i32;
                long j25 = (j20 & 4294967295L) + (j24 >>> 32) + (j21 * j14);
                long j26 = (j22 & 4294967295L) + (j25 >>> 32) + (j21 * j17);
                long j27 = j23 + (j26 >>> 32);
                long j28 = j26 & 4294967295L;
                long j29 = iArr[i9 + 4] & 4294967295L;
                long j30 = (iArr2[i16] & 4294967295L) + (j27 >>> 32);
                long j31 = j27 & 4294967295L;
                long j32 = (j25 & 4294967295L) + (j29 * j10);
                int i34 = (int) j32;
                iArr2[i10 + 4] = (i33 >>> 31) | (i34 << 1);
                int i35 = i34 >>> 31;
                long j33 = j28 + (j32 >>> 32) + (j29 * j14);
                long j34 = j31 + (j33 >>> 32) + (j29 * j17);
                long j35 = (j30 & 4294967295L) + (j34 >>> 32) + (j29 * j21);
                long j36 = (iArr2[i17] & 4294967295L) + (j30 >>> 32) + (j35 >>> 32);
                long j37 = j35 & 4294967295L;
                long j38 = iArr[i9 + 5] & 4294967295L;
                long j39 = (iArr2[i18] & 4294967295L) + (j36 >>> 32);
                long j40 = (j33 & 4294967295L) + (j38 * j10);
                int i36 = (int) j40;
                iArr2[i10 + 5] = i35 | (i36 << 1);
                int i37 = i36 >>> 31;
                long j41 = (j34 & 4294967295L) + (j40 >>> 32) + (j38 * j14);
                long j42 = j37 + (j41 >>> 32) + (j38 * j17);
                long j43 = (j36 & 4294967295L) + (j42 >>> 32) + (j38 * j21);
                long j44 = (j39 & 4294967295L) + (j43 >>> 32) + (j38 * j29);
                long j45 = j43 & 4294967295L;
                long j46 = (iArr2[i19] & 4294967295L) + (j39 >>> 32) + (j44 >>> 32);
                long j47 = j44 & 4294967295L;
                long j48 = iArr[i9 + 6] & 4294967295L;
                long j49 = (iArr2[i20] & 4294967295L) + (j46 >>> 32);
                long j50 = j46 & 4294967295L;
                long j51 = (iArr2[i21] & 4294967295L) + (j49 >>> 32);
                long j52 = (j41 & 4294967295L) + (j48 * j10);
                int i38 = (int) j52;
                iArr2[i10 + 6] = i37 | (i38 << 1);
                int i39 = i38 >>> 31;
                long j53 = (j42 & 4294967295L) + (j52 >>> 32) + (j48 * j14);
                long j54 = j45 + (j53 >>> 32) + (j48 * j17);
                long j55 = j47 + (j54 >>> 32) + (j48 * j21);
                long j56 = j54 & 4294967295L;
                long j57 = j50 + (j55 >>> 32) + (j48 * j29);
                long j58 = (j49 & 4294967295L) + (j57 >>> 32) + (j48 * j38);
                long j59 = j51 + (j58 >>> 32);
                long j60 = j58 & 4294967295L;
                long j61 = iArr[i9 + 7] & 4294967295L;
                long j62 = (iArr2[i22] & 4294967295L) + (j59 >>> 32);
                long j63 = (j53 & 4294967295L) + (j10 * j61);
                int i40 = (int) j63;
                iArr2[i10 + 7] = (i40 << 1) | i39;
                long j64 = j56 + (j63 >>> 32) + (j61 * j14);
                long j65 = (j55 & 4294967295L) + (j64 >>> 32) + (j61 * j17);
                long j66 = (j57 & 4294967295L) + (j65 >>> 32) + (j61 * j21);
                long j67 = j60 + (j66 >>> 32) + (j61 * j29);
                long j68 = (j59 & 4294967295L) + (j67 >>> 32) + (j61 * j38);
                long j69 = (j62 & 4294967295L) + (j68 >>> 32) + (j61 * j48);
                long j70 = (iArr2[i23] & 4294967295L) + (j62 >>> 32) + (j69 >>> 32);
                int i41 = (int) j64;
                iArr2[i10 + 8] = (i40 >>> 31) | (i41 << 1);
                int i42 = (int) j65;
                iArr2[i10 + 9] = (i41 >>> 31) | (i42 << 1);
                int i43 = i42 >>> 31;
                int i44 = (int) j66;
                iArr2[i10 + 10] = i43 | (i44 << 1);
                int i45 = (int) j67;
                iArr2[i10 + 11] = (i44 >>> 31) | (i45 << 1);
                int i46 = (int) j68;
                iArr2[i10 + 12] = (i45 >>> 31) | (i46 << 1);
                int i47 = i46 >>> 31;
                int i48 = (int) j69;
                iArr2[i10 + 13] = i47 | (i48 << 1);
                int i49 = i48 >>> 31;
                int i50 = (int) j70;
                iArr2[i10 + 14] = i49 | (i50 << 1);
                int i51 = i50 >>> 31;
                int i52 = i10 + 15;
                iArr2[i52] = i51 | ((iArr2[i52] + ((int) (j70 >>> 32))) << 1);
                return;
            }
            i26 = i27;
        }
    }

    public static void F(int[] iArr, int[] iArr2) {
        long j10 = iArr[0] & 4294967295L;
        int i9 = 16;
        int i10 = 7;
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
                long j52 = j48 & 4294967295L;
                long j53 = (iArr2[12] & 4294967295L) + (j51 >>> 32);
                long j54 = (j44 & 4294967295L) + (j50 * j10);
                int i22 = (int) j54;
                iArr2[6] = (i22 << 1) | (i21 >>> 31);
                long j55 = (j45 & 4294967295L) + (j54 >>> 32) + (j50 * j14);
                long j56 = (j46 & 4294967295L) + (j55 >>> 32) + (j50 * j17);
                long j57 = j55 & 4294967295L;
                long j58 = j49 + (j56 >>> 32) + (j50 * j21);
                long j59 = j52 + (j58 >>> 32) + (j50 * j29);
                long j60 = (j51 & 4294967295L) + (j59 >>> 32) + (j50 * j39);
                long j61 = j53 + (j60 >>> 32);
                long j62 = j60 & 4294967295L;
                long j63 = iArr[7] & 4294967295L;
                long j64 = (iArr2[13] & 4294967295L) + (j61 >>> 32);
                long j65 = 4294967295L & j64;
                long j66 = j57 + (j10 * j63);
                int i23 = (int) j66;
                iArr2[7] = (i22 >>> 31) | (i23 << 1);
                int i24 = i23 >>> 31;
                long j67 = (j56 & 4294967295L) + (j66 >>> 32) + (j63 * j14);
                long j68 = (j58 & 4294967295L) + (j67 >>> 32) + (j63 * j17);
                long j69 = (j59 & 4294967295L) + (j68 >>> 32) + (j63 * j21);
                long j70 = j62 + (j69 >>> 32) + (j63 * j29);
                long j71 = (j61 & 4294967295L) + (j70 >>> 32) + (j63 * j39);
                long j72 = j65 + (j71 >>> 32) + (j63 * j50);
                long j73 = (iArr2[14] & 4294967295L) + (j64 >>> 32) + (j72 >>> 32);
                int i25 = (int) j67;
                iArr2[8] = i24 | (i25 << 1);
                int i26 = (int) j68;
                iArr2[9] = (i25 >>> 31) | (i26 << 1);
                int i27 = i26 >>> 31;
                int i28 = (int) j69;
                iArr2[10] = i27 | (i28 << 1);
                int i29 = (int) j70;
                iArr2[11] = (i28 >>> 31) | (i29 << 1);
                int i30 = (int) j71;
                iArr2[12] = (i29 >>> 31) | (i30 << 1);
                int i31 = i30 >>> 31;
                int i32 = (int) j72;
                iArr2[13] = i31 | (i32 << 1);
                int i33 = i32 >>> 31;
                int i34 = (int) j73;
                iArr2[14] = i33 | (i34 << 1);
                iArr2[15] = (i34 >>> 31) | ((iArr2[15] + ((int) (j73 >>> 32))) << 1);
                return;
            }
            i10 = i12;
            i11 = i14;
        }
    }

    public static int G(int[] iArr, int i9, int[] iArr2, int i10, int[] iArr3, int i11) {
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
        long j16 = (j15 >> 32) + ((iArr[i9 + 6] & 4294967295L) - (iArr2[i10 + 6] & 4294967295L));
        iArr3[i11 + 6] = (int) j16;
        long j17 = (j16 >> 32) + ((iArr[i9 + 7] & 4294967295L) - (iArr2[i10 + 7] & 4294967295L));
        iArr3[i11 + 7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int H(int[] iArr, int[] iArr2, int[] iArr3) {
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
        long j17 = (j16 >> 32) + ((iArr[7] & 4294967295L) - (iArr2[7] & 4294967295L));
        iArr3[7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int I(int[] iArr, int[] iArr2) {
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
        long j16 = (j15 >> 32) + ((iArr2[6] & 4294967295L) - (iArr[6] & 4294967295L));
        iArr2[6] = (int) j16;
        long j17 = (j16 >> 32) + ((iArr2[7] & 4294967295L) - (4294967295L & iArr[7]));
        iArr2[7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static BigInteger J(int[] iArr) {
        byte[] bArr = new byte[32];
        for (int i9 = 0; i9 < 8; i9++) {
            int i10 = iArr[i9];
            if (i10 != 0) {
                org.bouncycastle.util.g.c(i10, bArr, (7 - i9) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger K(long[] jArr) {
        byte[] bArr = new byte[32];
        for (int i9 = 0; i9 < 4; i9++) {
            long j10 = jArr[i9];
            if (j10 != 0) {
                org.bouncycastle.util.g.i(j10, bArr, (3 - i9) << 3);
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
        long j16 = (j15 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L);
        iArr3[6] = (int) j16;
        long j17 = (j16 >>> 32) + (iArr[7] & 4294967295L) + (iArr2[7] & 4294967295L);
        iArr3[7] = (int) j17;
        return (int) (j17 >>> 32);
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
        long j17 = (j16 >>> 32) + (iArr[7] & 4294967295L) + (iArr2[7] & 4294967295L) + (iArr3[7] & 4294967295L);
        iArr3[7] = (int) j17;
        return (int) (j17 >>> 32);
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
        long j15 = (j14 >>> 32) + (iArr[i9 + 5] & 4294967295L) + (iArr2[i17] & 4294967295L);
        iArr2[i17] = (int) j15;
        int i18 = i10 + 6;
        long j16 = (j15 >>> 32) + (iArr[i9 + 6] & 4294967295L) + (iArr2[i18] & 4294967295L);
        iArr2[i18] = (int) j16;
        int i19 = i10 + 7;
        long j17 = (j16 >>> 32) + (iArr[i9 + 7] & 4294967295L) + (4294967295L & iArr2[i19]);
        iArr2[i19] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int d(int[] iArr, int[] iArr2) {
        long j10 = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + 0;
        iArr2[0] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr2[1] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr2[2] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr2[3] = (int) j13;
        long j14 = (j13 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L);
        iArr2[4] = (int) j14;
        long j15 = (j14 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L);
        iArr2[5] = (int) j15;
        long j16 = (j15 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L);
        iArr2[6] = (int) j16;
        long j17 = (j16 >>> 32) + (iArr[7] & 4294967295L) + (4294967295L & iArr2[7]);
        iArr2[7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int e(int[] iArr, int i9, int[] iArr2, int i10) {
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
        long j15 = (j14 >>> 32) + (iArr[i26] & 4294967295L) + (iArr2[i27] & 4294967295L);
        int i28 = (int) j15;
        iArr[i26] = i28;
        iArr2[i27] = i28;
        int i29 = i9 + 6;
        int i30 = i10 + 6;
        long j16 = (j15 >>> 32) + (iArr[i29] & 4294967295L) + (iArr2[i30] & 4294967295L);
        int i31 = (int) j16;
        iArr[i29] = i31;
        iArr2[i30] = i31;
        int i32 = i9 + 7;
        int i33 = i10 + 7;
        long j17 = (j16 >>> 32) + (iArr[i32] & 4294967295L) + (4294967295L & iArr2[i33]);
        int i34 = (int) j17;
        iArr[i32] = i34;
        iArr2[i33] = i34;
        return (int) (j17 >>> 32);
    }

    public static void f(int[] iArr, int i9, int[] iArr2, int i10) {
        iArr2[i10 + 0] = iArr[i9 + 0];
        iArr2[i10 + 1] = iArr[i9 + 1];
        iArr2[i10 + 2] = iArr[i9 + 2];
        iArr2[i10 + 3] = iArr[i9 + 3];
        iArr2[i10 + 4] = iArr[i9 + 4];
        iArr2[i10 + 5] = iArr[i9 + 5];
        iArr2[i10 + 6] = iArr[i9 + 6];
        iArr2[i10 + 7] = iArr[i9 + 7];
    }

    public static void g(long[] jArr, int i9, long[] jArr2, int i10) {
        jArr2[i10 + 0] = jArr[i9 + 0];
        jArr2[i10 + 1] = jArr[i9 + 1];
        jArr2[i10 + 2] = jArr[i9 + 2];
        jArr2[i10 + 3] = jArr[i9 + 3];
    }

    public static void h(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    public static int[] i() {
        return new int[8];
    }

    public static long[] j() {
        return new long[4];
    }

    public static int[] k() {
        return new int[16];
    }

    public static long[] l() {
        return new long[8];
    }

    public static boolean m(int[] iArr, int i9, int[] iArr2, int i10, int[] iArr3, int i11) {
        boolean r10 = r(iArr, i9, iArr2, i10);
        if (r10) {
            G(iArr, i9, iArr2, i10, iArr3, i11);
        } else {
            G(iArr2, i10, iArr, i9, iArr3, i11);
        }
        return r10;
    }

    public static boolean n(int[] iArr, int[] iArr2) {
        for (int i9 = 7; i9 >= 0; i9--) {
            if (iArr[i9] != iArr2[i9]) {
                return false;
            }
        }
        return true;
    }

    public static boolean o(long[] jArr, long[] jArr2) {
        for (int i9 = 3; i9 >= 0; i9--) {
            if (jArr[i9] != jArr2[i9]) {
                return false;
            }
        }
        return true;
    }

    public static int[] p(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            throw new IllegalArgumentException();
        }
        int[] i9 = i();
        for (int i10 = 0; i10 < 8; i10++) {
            i9[i10] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return i9;
    }

    public static int q(int[] iArr, int i9) {
        int i10;
        if (i9 == 0) {
            i10 = iArr[0];
        } else if ((i9 & 255) != i9) {
            return 0;
        } else {
            i10 = iArr[i9 >>> 5] >>> (i9 & 31);
        }
        return i10 & 1;
    }

    public static boolean r(int[] iArr, int i9, int[] iArr2, int i10) {
        for (int i11 = 7; i11 >= 0; i11--) {
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

    public static boolean s(int[] iArr, int[] iArr2) {
        for (int i9 = 7; i9 >= 0; i9--) {
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

    public static boolean t(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i9 = 1; i9 < 8; i9++) {
            if (iArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean u(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i9 = 1; i9 < 4; i9++) {
            if (jArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean v(int[] iArr) {
        for (int i9 = 0; i9 < 8; i9++) {
            if (iArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean w(long[] jArr) {
        for (int i9 = 0; i9 < 4; i9++) {
            if (jArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void x(int[] iArr, int i9, int[] iArr2, int i10, int[] iArr3, int i11) {
        long j10 = iArr2[i10 + 0] & 4294967295L;
        long j11 = iArr2[i10 + 1] & 4294967295L;
        long j12 = iArr2[i10 + 2] & 4294967295L;
        long j13 = iArr2[i10 + 3] & 4294967295L;
        long j14 = iArr2[i10 + 4] & 4294967295L;
        long j15 = iArr2[i10 + 5] & 4294967295L;
        long j16 = iArr2[i10 + 6] & 4294967295L;
        long j17 = iArr2[i10 + 7] & 4294967295L;
        long j18 = iArr[i9 + 0] & 4294967295L;
        long j19 = (j18 * j10) + 0;
        iArr3[i11 + 0] = (int) j19;
        long j20 = (j19 >>> 32) + (j18 * j11);
        iArr3[i11 + 1] = (int) j20;
        long j21 = (j20 >>> 32) + (j18 * j12);
        iArr3[i11 + 2] = (int) j21;
        long j22 = (j21 >>> 32) + (j18 * j13);
        iArr3[i11 + 3] = (int) j22;
        long j23 = (j22 >>> 32) + (j18 * j14);
        iArr3[i11 + 4] = (int) j23;
        long j24 = (j23 >>> 32) + (j18 * j15);
        iArr3[i11 + 5] = (int) j24;
        long j25 = (j24 >>> 32) + (j18 * j16);
        iArr3[i11 + 6] = (int) j25;
        long j26 = j17;
        long j27 = (j25 >>> 32) + (j18 * j26);
        iArr3[i11 + 7] = (int) j27;
        iArr3[i11 + 8] = (int) (j27 >>> 32);
        int i12 = 1;
        int i13 = i11;
        int i14 = 1;
        while (i14 < 8) {
            i13 += i12;
            long j28 = iArr[i9 + i14] & 4294967295L;
            int i15 = i13 + 0;
            long j29 = (j28 * j10) + (iArr3[i15] & 4294967295L) + 0;
            iArr3[i15] = (int) j29;
            int i16 = i13 + 1;
            long j30 = j26;
            long j31 = (j29 >>> 32) + (j28 * j11) + (iArr3[i16] & 4294967295L);
            iArr3[i16] = (int) j31;
            int i17 = i13 + 2;
            long j32 = j12;
            long j33 = (j31 >>> 32) + (j28 * j12) + (iArr3[i17] & 4294967295L);
            iArr3[i17] = (int) j33;
            int i18 = i13 + 3;
            long j34 = (j33 >>> 32) + (j28 * j13) + (iArr3[i18] & 4294967295L);
            iArr3[i18] = (int) j34;
            int i19 = i13 + 4;
            long j35 = (j34 >>> 32) + (j28 * j14) + (iArr3[i19] & 4294967295L);
            iArr3[i19] = (int) j35;
            int i20 = i13 + 5;
            long j36 = (j35 >>> 32) + (j28 * j15) + (iArr3[i20] & 4294967295L);
            iArr3[i20] = (int) j36;
            int i21 = i13 + 6;
            long j37 = (j36 >>> 32) + (j28 * j16) + (iArr3[i21] & 4294967295L);
            iArr3[i21] = (int) j37;
            int i22 = i13 + 7;
            long j38 = (j37 >>> 32) + (j28 * j30) + (iArr3[i22] & 4294967295L);
            iArr3[i22] = (int) j38;
            iArr3[i13 + 8] = (int) (j38 >>> 32);
            i14++;
            j12 = j32;
            j26 = j30;
            j13 = j13;
            i12 = 1;
        }
    }

    public static void y(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = iArr2[0] & 4294967295L;
        long j11 = iArr2[1] & 4294967295L;
        long j12 = iArr2[2] & 4294967295L;
        long j13 = iArr2[3] & 4294967295L;
        long j14 = iArr2[4] & 4294967295L;
        long j15 = iArr2[5] & 4294967295L;
        long j16 = iArr2[6] & 4294967295L;
        long j17 = iArr2[7] & 4294967295L;
        long j18 = iArr[0] & 4294967295L;
        long j19 = (j18 * j10) + 0;
        iArr3[0] = (int) j19;
        long j20 = (j19 >>> 32) + (j18 * j11);
        iArr3[1] = (int) j20;
        long j21 = (j20 >>> 32) + (j18 * j12);
        iArr3[2] = (int) j21;
        long j22 = (j21 >>> 32) + (j18 * j13);
        iArr3[3] = (int) j22;
        long j23 = (j22 >>> 32) + (j18 * j14);
        iArr3[4] = (int) j23;
        long j24 = (j23 >>> 32) + (j18 * j15);
        iArr3[5] = (int) j24;
        long j25 = (j24 >>> 32) + (j18 * j16);
        iArr3[6] = (int) j25;
        long j26 = (j25 >>> 32) + (j18 * j17);
        iArr3[7] = (int) j26;
        int i9 = (int) (j26 >>> 32);
        iArr3[8] = i9;
        int i10 = 1;
        for (int i11 = 8; i10 < i11; i11 = 8) {
            long j27 = iArr[i10] & 4294967295L;
            int i12 = i10 + 0;
            long j28 = (j27 * j10) + (iArr3[i12] & 4294967295L) + 0;
            iArr3[i12] = (int) j28;
            int i13 = i10 + 1;
            long j29 = j11;
            long j30 = (j28 >>> 32) + (j27 * j11) + (iArr3[i13] & 4294967295L);
            iArr3[i13] = (int) j30;
            int i14 = i10 + 2;
            long j31 = j15;
            long j32 = (j30 >>> 32) + (j27 * j12) + (iArr3[i14] & 4294967295L);
            iArr3[i14] = (int) j32;
            int i15 = i10 + 3;
            long j33 = (j32 >>> 32) + (j27 * j13) + (iArr3[i15] & 4294967295L);
            iArr3[i15] = (int) j33;
            int i16 = i10 + 4;
            long j34 = (j33 >>> 32) + (j27 * j14) + (iArr3[i16] & 4294967295L);
            iArr3[i16] = (int) j34;
            int i17 = i10 + 5;
            long j35 = (j34 >>> 32) + (j27 * j31) + (iArr3[i17] & 4294967295L);
            iArr3[i17] = (int) j35;
            int i18 = i10 + 6;
            long j36 = (j35 >>> 32) + (j27 * j16) + (iArr3[i18] & 4294967295L);
            iArr3[i18] = (int) j36;
            int i19 = i10 + 7;
            long j37 = (j36 >>> 32) + (j27 * j17) + (iArr3[i19] & 4294967295L);
            iArr3[i19] = (int) j37;
            iArr3[i10 + 8] = (int) (j37 >>> 32);
            i10 = i13;
            j10 = j10;
            j11 = j29;
            j15 = j31;
        }
    }

    public static long z(int i9, int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
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
        long j25 = (j23 >>> 32) + (j10 * j24) + j22 + (iArr2[i11 + 6] & 4294967295L);
        iArr3[i12 + 6] = (int) j25;
        long j26 = iArr[i10 + 7] & 4294967295L;
        long j27 = (j25 >>> 32) + (j10 * j26) + j24 + (4294967295L & iArr2[i11 + 7]);
        iArr3[i12 + 7] = (int) j27;
        return (j27 >>> 32) + j26;
    }
}
