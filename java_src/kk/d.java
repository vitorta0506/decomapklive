package kk;
/* loaded from: classes7.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f54022a = {-1, -1, -1, -1, -1, -1, -1, -2, -1, -1, -1, -1, -1, -1};

    public static void A(int[] iArr) {
        for (int i9 = 0; i9 < 16; i9++) {
            iArr[i9] = 0;
        }
    }

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i9 = 0; i9 < 16; i9++) {
            iArr3[i9] = iArr[i9] + iArr2[i9];
        }
    }

    public static void b(int[] iArr) {
        int i9 = iArr[0];
        int i10 = iArr[1];
        int i11 = iArr[2];
        int i12 = iArr[3];
        int i13 = iArr[4];
        int i14 = iArr[5];
        int i15 = iArr[6];
        int i16 = iArr[7];
        int i17 = iArr[8];
        int i18 = iArr[9];
        int i19 = iArr[10];
        int i20 = iArr[11];
        int i21 = iArr[12];
        int i22 = iArr[13];
        int i23 = i10 + (i9 >>> 28);
        int i24 = i14 + (i13 >>> 28);
        int i25 = i18 + (i17 >>> 28);
        int i26 = i22 + (i21 >>> 28);
        int i27 = i11 + (i23 >>> 28);
        int i28 = i15 + (i24 >>> 28);
        int i29 = i19 + (i25 >>> 28);
        int i30 = iArr[14] + (i26 >>> 28);
        int i31 = i12 + (i27 >>> 28);
        int i32 = i16 + (i28 >>> 28);
        int i33 = i20 + (i29 >>> 28);
        int i34 = iArr[15] + (i30 >>> 28);
        int i35 = i34 >>> 28;
        int i36 = (i9 & 268435455) + i35;
        int i37 = (i13 & 268435455) + (i31 >>> 28);
        int i38 = (i17 & 268435455) + i35 + (i32 >>> 28);
        int i39 = (i21 & 268435455) + (i33 >>> 28);
        iArr[0] = i36 & 268435455;
        iArr[1] = (i23 & 268435455) + (i36 >>> 28);
        iArr[2] = i27 & 268435455;
        iArr[3] = i31 & 268435455;
        iArr[4] = i37 & 268435455;
        iArr[5] = (i24 & 268435455) + (i37 >>> 28);
        iArr[6] = i28 & 268435455;
        iArr[7] = i32 & 268435455;
        iArr[8] = i38 & 268435455;
        iArr[9] = (i25 & 268435455) + (i38 >>> 28);
        iArr[10] = i29 & 268435455;
        iArr[11] = i33 & 268435455;
        iArr[12] = i39 & 268435455;
        iArr[13] = (i26 & 268435455) + (i39 >>> 28);
        iArr[14] = i30 & 268435455;
        iArr[15] = i34 & 268435455;
    }

    public static void c(int i9, int[] iArr, int i10, int[] iArr2, int i11) {
        for (int i12 = 0; i12 < 16; i12++) {
            int i13 = i11 + i12;
            int i14 = iArr2[i13];
            iArr2[i13] = i14 ^ ((iArr[i10 + i12] ^ i14) & i9);
        }
    }

    public static void d(int i9, int[] iArr) {
        int[] f10 = f();
        y(f10, iArr, f10);
        c(-i9, f10, 0, iArr, 0);
    }

    public static void e(int[] iArr, int i9, int[] iArr2, int i10) {
        for (int i11 = 0; i11 < 16; i11++) {
            iArr2[i10 + i11] = iArr[i9 + i11];
        }
    }

    public static int[] f() {
        return new int[16];
    }

    public static int[] g(int i9) {
        return new int[i9 * 16];
    }

    public static void h(int[] iArr, int i9, int[] iArr2) {
        i(iArr, i9, iArr2, 0);
        i(iArr, i9 + 7, iArr2, 8);
    }

    private static void i(int[] iArr, int i9, int[] iArr2, int i10) {
        int i11 = iArr[i9 + 0];
        int i12 = iArr[i9 + 1];
        int i13 = iArr[i9 + 2];
        int i14 = iArr[i9 + 3];
        int i15 = iArr[i9 + 4];
        int i16 = iArr[i9 + 5];
        int i17 = iArr[i9 + 6];
        iArr2[i10 + 0] = i11 & 268435455;
        iArr2[i10 + 1] = ((i11 >>> 28) | (i12 << 4)) & 268435455;
        iArr2[i10 + 2] = ((i12 >>> 24) | (i13 << 8)) & 268435455;
        iArr2[i10 + 3] = ((i13 >>> 20) | (i14 << 12)) & 268435455;
        iArr2[i10 + 4] = ((i14 >>> 16) | (i15 << 16)) & 268435455;
        iArr2[i10 + 5] = ((i15 >>> 12) | (i16 << 20)) & 268435455;
        iArr2[i10 + 6] = ((i16 >>> 8) | (i17 << 24)) & 268435455;
        iArr2[i10 + 7] = i17 >>> 4;
    }

    public static void j(int[] iArr, byte[] bArr, int i9) {
        o(iArr, 0, bArr, i9);
        o(iArr, 2, bArr, i9 + 7);
        o(iArr, 4, bArr, i9 + 14);
        o(iArr, 6, bArr, i9 + 21);
        o(iArr, 8, bArr, i9 + 28);
        o(iArr, 10, bArr, i9 + 35);
        o(iArr, 12, bArr, i9 + 42);
        o(iArr, 14, bArr, i9 + 49);
    }

    public static void k(int[] iArr, int[] iArr2, int i9) {
        l(iArr, 0, iArr2, i9);
        l(iArr, 8, iArr2, i9 + 7);
    }

    private static void l(int[] iArr, int i9, int[] iArr2, int i10) {
        int i11 = iArr[i9 + 0];
        int i12 = iArr[i9 + 1];
        int i13 = iArr[i9 + 2];
        int i14 = iArr[i9 + 3];
        int i15 = iArr[i9 + 4];
        int i16 = iArr[i9 + 5];
        int i17 = iArr[i9 + 6];
        int i18 = iArr[i9 + 7];
        iArr2[i10 + 0] = i11 | (i12 << 28);
        iArr2[i10 + 1] = (i12 >>> 4) | (i13 << 24);
        iArr2[i10 + 2] = (i13 >>> 8) | (i14 << 20);
        iArr2[i10 + 3] = (i14 >>> 12) | (i15 << 16);
        iArr2[i10 + 4] = (i15 >>> 16) | (i16 << 12);
        iArr2[i10 + 5] = (i16 >>> 20) | (i17 << 8);
        iArr2[i10 + 6] = (i18 << 4) | (i17 >>> 24);
    }

    private static void m(int i9, byte[] bArr, int i10) {
        bArr[i10] = (byte) i9;
        int i11 = i10 + 1;
        bArr[i11] = (byte) (i9 >>> 8);
        bArr[i11 + 1] = (byte) (i9 >>> 16);
    }

    private static void n(int i9, byte[] bArr, int i10) {
        bArr[i10] = (byte) i9;
        int i11 = i10 + 1;
        bArr[i11] = (byte) (i9 >>> 8);
        int i12 = i11 + 1;
        bArr[i12] = (byte) (i9 >>> 16);
        bArr[i12 + 1] = (byte) (i9 >>> 24);
    }

    private static void o(int[] iArr, int i9, byte[] bArr, int i10) {
        int i11 = iArr[i9];
        int i12 = iArr[i9 + 1];
        n((i12 << 28) | i11, bArr, i10);
        m(i12 >>> 4, bArr, i10 + 4);
    }

    public static void p(int[] iArr, int[] iArr2) {
        int[] f10 = f();
        int[] iArr3 = new int[14];
        e(iArr, 0, f10, 0);
        u(f10);
        k(f10, iArr3, 0);
        nk.c.l(f54022a, iArr3, iArr3);
        h(iArr3, 0, iArr2);
    }

    public static void q(int[] iArr, int[] iArr2) {
        int[] f10 = f();
        int[] iArr3 = new int[14];
        e(iArr, 0, f10, 0);
        u(f10);
        k(f10, iArr3, 0);
        nk.c.m(f54022a, iArr3, iArr3);
        h(iArr3, 0, iArr2);
    }

    public static int r(int[] iArr) {
        int i9 = 0;
        for (int i10 = 0; i10 < 16; i10++) {
            i9 |= iArr[i10];
        }
        return (((i9 >>> 1) | (i9 & 1)) - 1) >> 31;
    }

    public static void s(int[] iArr, int i9, int[] iArr2) {
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = iArr[2];
        int i13 = iArr[3];
        int i14 = iArr[4];
        int i15 = iArr[5];
        int i16 = iArr[6];
        int i17 = iArr[7];
        int i18 = iArr[8];
        int i19 = iArr[9];
        int i20 = iArr[10];
        int i21 = iArr[11];
        int i22 = iArr[12];
        int i23 = iArr[13];
        int i24 = iArr[14];
        int i25 = iArr[15];
        long j10 = i11;
        long j11 = i9;
        long j12 = j10 * j11;
        int i26 = ((int) j12) & 268435455;
        long j13 = i15 * j11;
        int i27 = ((int) j13) & 268435455;
        long j14 = i19 * j11;
        int i28 = ((int) j14) & 268435455;
        long j15 = i23 * j11;
        long j16 = (j12 >>> 28) + (i12 * j11);
        iArr2[2] = ((int) j16) & 268435455;
        long j17 = (j13 >>> 28) + (i16 * j11);
        iArr2[6] = ((int) j17) & 268435455;
        long j18 = (j14 >>> 28) + (i20 * j11);
        iArr2[10] = ((int) j18) & 268435455;
        long j19 = (j15 >>> 28) + (i24 * j11);
        iArr2[14] = ((int) j19) & 268435455;
        long j20 = (j16 >>> 28) + (i13 * j11);
        iArr2[3] = ((int) j20) & 268435455;
        long j21 = (j17 >>> 28) + (i17 * j11);
        iArr2[7] = ((int) j21) & 268435455;
        long j22 = (j18 >>> 28) + (i21 * j11);
        iArr2[11] = ((int) j22) & 268435455;
        long j23 = (j19 >>> 28) + (i25 * j11);
        iArr2[15] = ((int) j23) & 268435455;
        long j24 = j23 >>> 28;
        long j25 = (j20 >>> 28) + (i14 * j11);
        iArr2[4] = ((int) j25) & 268435455;
        long j26 = (j21 >>> 28) + j24 + (i18 * j11);
        iArr2[8] = ((int) j26) & 268435455;
        long j27 = (j22 >>> 28) + (i22 * j11);
        iArr2[12] = ((int) j27) & 268435455;
        long j28 = j24 + (i10 * j11);
        iArr2[0] = ((int) j28) & 268435455;
        iArr2[1] = i26 + ((int) (j28 >>> 28));
        iArr2[5] = i27 + ((int) (j25 >>> 28));
        iArr2[9] = i28 + ((int) (j26 >>> 28));
        iArr2[13] = (((int) j15) & 268435455) + ((int) (j27 >>> 28));
    }

    public static void t(int[] iArr, int[] iArr2, int[] iArr3) {
        int i9 = iArr[0];
        int i10 = iArr[1];
        int i11 = iArr[2];
        int i12 = iArr[3];
        int i13 = iArr[4];
        int i14 = iArr[5];
        int i15 = iArr[6];
        int i16 = iArr[7];
        int i17 = iArr[8];
        int i18 = iArr[9];
        int i19 = iArr[10];
        int i20 = iArr[11];
        int i21 = iArr[12];
        int i22 = iArr[13];
        int i23 = iArr[14];
        int i24 = iArr[15];
        int i25 = iArr2[0];
        int i26 = iArr2[1];
        int i27 = iArr2[2];
        int i28 = iArr2[3];
        int i29 = iArr2[4];
        int i30 = iArr2[5];
        int i31 = iArr2[6];
        int i32 = iArr2[7];
        int i33 = iArr2[8];
        int i34 = iArr2[9];
        int i35 = iArr2[10];
        int i36 = iArr2[11];
        int i37 = iArr2[12];
        int i38 = iArr2[13];
        int i39 = iArr2[14];
        int i40 = iArr2[15];
        int i41 = i9 + i17;
        int i42 = i11 + i19;
        int i43 = i12 + i20;
        int i44 = i13 + i21;
        int i45 = i14 + i22;
        int i46 = i15 + i23;
        int i47 = i25 + i33;
        int i48 = i26 + i34;
        int i49 = i27 + i35;
        int i50 = i28 + i36;
        int i51 = i29 + i37;
        int i52 = i30 + i38;
        int i53 = i31 + i39;
        int i54 = i32 + i40;
        long j10 = i9;
        long j11 = i25;
        long j12 = j10 * j11;
        long j13 = i16;
        long j14 = i26;
        long j15 = j13 * j14;
        long j16 = i15;
        long j17 = i27;
        long j18 = i14;
        long j19 = i28;
        long j20 = i13;
        long j21 = i29;
        long j22 = i12;
        long j23 = i30;
        long j24 = i11;
        long j25 = i31;
        long j26 = i10;
        long j27 = i32;
        long j28 = i17;
        long j29 = i33;
        long j30 = j28 * j29;
        long j31 = i24;
        long j32 = i34;
        long j33 = j31 * j32;
        long j34 = i23;
        long j35 = i35;
        long j36 = i22;
        long j37 = i36;
        long j38 = i21;
        long j39 = i37;
        long j40 = i20;
        long j41 = i38;
        long j42 = i19;
        long j43 = i39;
        long j44 = i18;
        long j45 = i40;
        long j46 = i41;
        long j47 = i47;
        long j48 = j46 * j47;
        long j49 = i16 + i24;
        long j50 = i48;
        long j51 = j49 * j50;
        long j52 = i46;
        long j53 = i49;
        long j54 = i45;
        long j55 = i50;
        long j56 = i44;
        long j57 = i51;
        long j58 = i43;
        long j59 = i52;
        long j60 = i42;
        long j61 = i53;
        long j62 = i10 + i18;
        long j63 = i54;
        long j64 = j51 + (j52 * j53) + (j54 * j55) + (j56 * j57) + (j58 * j59) + (j60 * j61) + (j62 * j63);
        long j65 = ((j12 + j30) + j64) - ((((((j15 + (j16 * j17)) + (j18 * j19)) + (j20 * j21)) + (j22 * j23)) + (j24 * j25)) + (j26 * j27));
        int i55 = ((int) j65) & 268435455;
        long j66 = j65 >>> 28;
        long j67 = ((((((((j33 + (j34 * j35)) + (j36 * j37)) + (j38 * j39)) + (j40 * j41)) + (j42 * j43)) + (j44 * j45)) + j48) - j12) + j64;
        int i56 = ((int) j67) & 268435455;
        long j68 = (j26 * j11) + (j10 * j14);
        long j69 = (j31 * j35) + (j34 * j37) + (j36 * j39) + (j38 * j41) + (j40 * j43) + (j42 * j45);
        long j70 = (j62 * j47) + (j46 * j50);
        long j71 = (j49 * j53) + (j52 * j55) + (j54 * j57) + (j56 * j59) + (j58 * j61) + (j60 * j63);
        long j72 = j66 + (((j68 + ((j44 * j29) + (j28 * j32))) + j71) - ((((((j13 * j17) + (j16 * j19)) + (j18 * j21)) + (j20 * j23)) + (j22 * j25)) + (j24 * j27)));
        int i57 = ((int) j72) & 268435455;
        long j73 = (j67 >>> 28) + ((j69 + j70) - j68) + j71;
        int i58 = ((int) j73) & 268435455;
        long j74 = (j24 * j11) + (j26 * j14) + (j10 * j17);
        long j75 = (j31 * j37) + (j34 * j39) + (j36 * j41) + (j38 * j43) + (j40 * j45);
        long j76 = (j60 * j47) + (j62 * j50) + (j46 * j53);
        long j77 = (j49 * j55) + (j52 * j57) + (j54 * j59) + (j56 * j61) + (j58 * j63);
        long j78 = (j72 >>> 28) + (((j74 + (((j42 * j29) + (j44 * j32)) + (j28 * j35))) + j77) - (((((j13 * j19) + (j16 * j21)) + (j18 * j23)) + (j20 * j25)) + (j22 * j27)));
        int i59 = ((int) j78) & 268435455;
        long j79 = (j73 >>> 28) + ((j75 + j76) - j74) + j77;
        int i60 = ((int) j79) & 268435455;
        long j80 = (j22 * j11) + (j24 * j14) + (j26 * j17) + (j10 * j19);
        long j81 = (j31 * j39) + (j34 * j41) + (j36 * j43) + (j38 * j45);
        long j82 = (j58 * j47) + (j60 * j50) + (j62 * j53) + (j46 * j55);
        long j83 = (j49 * j57) + (j52 * j59) + (j54 * j61) + (j56 * j63);
        long j84 = (j78 >>> 28) + (((j80 + ((((j40 * j29) + (j42 * j32)) + (j44 * j35)) + (j28 * j37))) + j83) - ((((j13 * j21) + (j16 * j23)) + (j18 * j25)) + (j20 * j27)));
        int i61 = ((int) j84) & 268435455;
        long j85 = (j79 >>> 28) + ((j81 + j82) - j80) + j83;
        int i62 = ((int) j85) & 268435455;
        long j86 = (j20 * j11) + (j22 * j14) + (j24 * j17) + (j26 * j19) + (j10 * j21);
        long j87 = (j31 * j41) + (j34 * j43) + (j36 * j45);
        long j88 = (j56 * j47) + (j58 * j50) + (j60 * j53) + (j62 * j55) + (j46 * j57);
        long j89 = (j49 * j59) + (j52 * j61) + (j54 * j63);
        long j90 = (j84 >>> 28) + (((j86 + (((((j38 * j29) + (j40 * j32)) + (j42 * j35)) + (j44 * j37)) + (j28 * j39))) + j89) - (((j13 * j23) + (j16 * j25)) + (j18 * j27)));
        int i63 = ((int) j90) & 268435455;
        long j91 = (j85 >>> 28) + ((j87 + j88) - j86) + j89;
        int i64 = ((int) j91) & 268435455;
        long j92 = (j18 * j11) + (j20 * j14) + (j22 * j17) + (j24 * j19) + (j26 * j21) + (j10 * j23);
        long j93 = (j31 * j43) + (j34 * j45);
        long j94 = (j54 * j47) + (j56 * j50) + (j58 * j53) + (j60 * j55) + (j62 * j57) + (j46 * j59);
        long j95 = (j49 * j61) + (j52 * j63);
        long j96 = (j90 >>> 28) + (((j92 + ((((((j36 * j29) + (j38 * j32)) + (j40 * j35)) + (j42 * j37)) + (j44 * j39)) + (j28 * j41))) + j95) - ((j13 * j25) + (j16 * j27)));
        int i65 = ((int) j96) & 268435455;
        long j97 = (j91 >>> 28) + ((j93 + j94) - j92) + j95;
        int i66 = ((int) j97) & 268435455;
        long j98 = (j16 * j11) + (j18 * j14) + (j20 * j17) + (j22 * j19) + (j24 * j21) + (j26 * j23) + (j10 * j25);
        long j99 = j31 * j45;
        long j100 = (j52 * j47) + (j54 * j50) + (j56 * j53) + (j58 * j55) + (j60 * j57) + (j62 * j59) + (j46 * j61);
        long j101 = j49 * j63;
        long j102 = (j96 >>> 28) + (((j98 + (((((((j34 * j29) + (j36 * j32)) + (j38 * j35)) + (j40 * j37)) + (j42 * j39)) + (j44 * j41)) + (j28 * j43))) + j101) - (j13 * j27));
        int i67 = ((int) j102) & 268435455;
        long j103 = (j97 >>> 28) + ((j99 + j100) - j98) + j101;
        long j104 = (j11 * j13) + (j14 * j16) + (j18 * j17) + (j20 * j19) + (j22 * j21) + (j24 * j23) + (j26 * j25) + (j10 * j27);
        long j105 = (j49 * j47) + (j52 * j50) + (j54 * j53) + (j56 * j55) + (j58 * j57) + (j60 * j59) + (j62 * j61) + (j46 * j63);
        long j106 = (j102 >>> 28) + j104 + (j31 * j29) + (j32 * j34) + (j36 * j35) + (j38 * j37) + (j40 * j39) + (j42 * j41) + (j44 * j43) + (j28 * j45);
        long j107 = (j103 >>> 28) + (j105 - j104);
        long j108 = j107 >>> 28;
        long j109 = (j106 >>> 28) + j108 + i56;
        long j110 = j108 + i55;
        iArr3[0] = ((int) j110) & 268435455;
        iArr3[1] = i57 + ((int) (j110 >>> 28));
        iArr3[2] = i59;
        iArr3[3] = i61;
        iArr3[4] = i63;
        iArr3[5] = i65;
        iArr3[6] = i67;
        iArr3[7] = ((int) j106) & 268435455;
        iArr3[8] = ((int) j109) & 268435455;
        iArr3[9] = i58 + ((int) (j109 >>> 28));
        iArr3[10] = i60;
        iArr3[11] = i62;
        iArr3[12] = i64;
        iArr3[13] = i66;
        iArr3[14] = ((int) j103) & 268435455;
        iArr3[15] = ((int) j107) & 268435455;
    }

    public static void u(int[] iArr) {
        w(iArr, 1);
        w(iArr, -1);
    }

    public static void v(int[] iArr) {
        iArr[0] = 1;
        for (int i9 = 1; i9 < 16; i9++) {
            iArr[i9] = 0;
        }
    }

    private static void w(int[] iArr, int i9) {
        int i10;
        int i11 = iArr[15];
        int i12 = i11 & 268435455;
        long j10 = (i11 >>> 28) + i9;
        int i13 = 0;
        long j11 = j10;
        while (true) {
            if (i13 >= 8) {
                break;
            }
            long j12 = j11 + (4294967295L & iArr[i13]);
            iArr[i13] = ((int) j12) & 268435455;
            j11 = j12 >> 28;
            i13++;
        }
        long j13 = j11 + j10;
        for (i10 = 8; i10 < 15; i10++) {
            long j14 = j13 + (iArr[i10] & 4294967295L);
            iArr[i10] = ((int) j14) & 268435455;
            j13 = j14 >> 28;
        }
        iArr[15] = i12 + ((int) j13);
    }

    public static void x(int[] iArr, int[] iArr2) {
        int i9 = iArr[0];
        int i10 = iArr[1];
        int i11 = iArr[2];
        int i12 = iArr[3];
        int i13 = iArr[4];
        int i14 = iArr[5];
        int i15 = iArr[6];
        int i16 = iArr[7];
        int i17 = iArr[8];
        int i18 = iArr[9];
        int i19 = iArr[10];
        int i20 = iArr[11];
        int i21 = iArr[12];
        int i22 = iArr[13];
        int i23 = iArr[14];
        int i24 = iArr[15];
        int i25 = i9 * 2;
        int i26 = i10 * 2;
        int i27 = i11 * 2;
        int i28 = i12 * 2;
        int i29 = i13 * 2;
        int i30 = i14 * 2;
        int i31 = i15 * 2;
        int i32 = i17 * 2;
        int i33 = i18 * 2;
        int i34 = i19 * 2;
        int i35 = i20 * 2;
        int i36 = i21 * 2;
        int i37 = i22 * 2;
        int i38 = i23 * 2;
        int i39 = i9 + i17;
        int i40 = i10 + i18;
        int i41 = i11 + i19;
        int i42 = i12 + i20;
        int i43 = i13 + i21;
        int i44 = i14 + i22;
        int i45 = i15 + i23;
        int i46 = i16 + i24;
        int i47 = i39 * 2;
        int i48 = i40 * 2;
        int i49 = i41 * 2;
        int i50 = i42 * 2;
        int i51 = i44 * 2;
        long j10 = i9;
        long j11 = j10 * j10;
        long j12 = i16;
        long j13 = i26;
        long j14 = j12 * j13;
        long j15 = i15;
        long j16 = i27;
        long j17 = i14;
        long j18 = i28;
        long j19 = i13;
        long j20 = i17;
        long j21 = i24;
        long j22 = i33;
        long j23 = j21 * j22;
        long j24 = i23;
        long j25 = i34;
        long j26 = i22;
        long j27 = i35;
        long j28 = i21;
        long j29 = i39;
        long j30 = i46;
        long j31 = i48 & 4294967295L;
        long j32 = j30 * j31;
        long j33 = i45;
        long j34 = i49 & 4294967295L;
        long j35 = i44;
        long j36 = i50 & 4294967295L;
        long j37 = i43;
        long j38 = j32 + (j33 * j34) + (j35 * j36) + (j37 * j37);
        long j39 = ((j11 + (j20 * j20)) + j38) - (((j14 + (j15 * j16)) + (j17 * j18)) + (j19 * j19));
        int i52 = ((int) j39) & 268435455;
        long j40 = (((((j23 + (j24 * j25)) + (j26 * j27)) + (j28 * j28)) + (j29 * j29)) - j11) + j38;
        int i53 = ((int) j40) & 268435455;
        long j41 = j40 >>> 28;
        long j42 = i10;
        long j43 = i25;
        long j44 = j42 * j43;
        long j45 = i29;
        long j46 = i18;
        long j47 = i32;
        long j48 = j46 * j47;
        long j49 = i36;
        long j50 = i40;
        long j51 = i47 & 4294967295L;
        long j52 = (i43 * 2) & 4294967295L;
        long j53 = (j30 * j34) + (j33 * j36) + (j35 * j52);
        long j54 = (j39 >>> 28) + (((j44 + j48) + j53) - (((j12 * j16) + (j15 * j18)) + (j17 * j45)));
        int i54 = ((int) j54) & 268435455;
        long j55 = j41 + (((((j21 * j25) + (j24 * j27)) + (j26 * j49)) + (j50 * j51)) - j44) + j53;
        int i55 = ((int) j55) & 268435455;
        long j56 = j55 >>> 28;
        long j57 = i11;
        long j58 = (j57 * j43) + (j42 * j42);
        long j59 = (j12 * j18) + (j15 * j45) + (j17 * j17);
        long j60 = i19;
        long j61 = (j60 * j47) + (j46 * j46);
        long j62 = i41;
        long j63 = (j62 * j51) + (j50 * j50);
        long j64 = (j30 * j36) + (j33 * j52) + (j35 * j35);
        long j65 = (j54 >>> 28) + (((j58 + j61) + j64) - j59);
        int i56 = ((int) j65) & 268435455;
        long j66 = j56 + (((((j21 * j27) + (j24 * j49)) + (j26 * j26)) + j63) - j58) + j64;
        int i57 = ((int) j66) & 268435455;
        long j67 = i12;
        long j68 = (j67 * j43) + (j57 * j13);
        long j69 = i30;
        long j70 = i20;
        long j71 = (j70 * j47) + (j60 * j22);
        long j72 = i37;
        long j73 = i42;
        long j74 = j52 * j30;
        long j75 = i51 & 4294967295L;
        long j76 = j74 + (j33 * j75);
        long j77 = (j65 >>> 28) + (((j68 + j71) + j76) - ((j12 * j45) + (j15 * j69)));
        int i58 = ((int) j77) & 268435455;
        long j78 = (j66 >>> 28) + ((((j21 * j49) + (j24 * j72)) + ((j73 * j51) + (j62 * j31))) - j68) + j76;
        int i59 = ((int) j78) & 268435455;
        long j79 = (j19 * j43) + (j67 * j13) + (j57 * j57);
        long j80 = (j28 * j47) + (j70 * j22) + (j60 * j60);
        long j81 = (j37 * j51) + (j73 * j31) + (j62 * j62);
        long j82 = (j30 * j75) + (j33 * j33);
        long j83 = (j77 >>> 28) + (((j79 + j80) + j82) - ((j12 * j69) + (j15 * j15)));
        int i60 = ((int) j83) & 268435455;
        long j84 = (j78 >>> 28) + ((((j21 * j72) + (j24 * j24)) + j81) - j79) + j82;
        int i61 = ((int) j84) & 268435455;
        long j85 = (j17 * j43) + (j19 * j13) + (j67 * j16);
        long j86 = (j26 * j47) + (j28 * j22) + (j70 * j25);
        long j87 = ((i45 * 2) & 4294967295L) * j30;
        long j88 = (j83 >>> 28) + (((j85 + j86) + j87) - (i31 * j12));
        long j89 = (j84 >>> 28) + (((i38 * j21) + (((j35 * j51) + (j37 * j31)) + (j73 * j34))) - j85) + j87;
        long j90 = (j15 * j43) + (j17 * j13) + (j19 * j16) + (j67 * j67);
        long j91 = j30 * j30;
        long j92 = (j88 >>> 28) + (((j90 + ((((j24 * j47) + (j26 * j22)) + (j28 * j25)) + (j70 * j70))) + j91) - (j12 * j12));
        long j93 = (j89 >>> 28) + (((j21 * j21) + ((((j33 * j51) + (j35 * j31)) + (j37 * j34)) + (j73 * j73))) - j90) + j91;
        long j94 = (j12 * j43) + (j15 * j13) + (j17 * j16) + (j19 * j18);
        long j95 = (j92 >>> 28) + (j47 * j21) + (j24 * j22) + (j26 * j25) + (j28 * j27) + j94;
        long j96 = (j93 >>> 28) + (((((j51 * j30) + (j33 * j31)) + (j35 * j34)) + (j37 * j36)) - j94);
        long j97 = j96 >>> 28;
        long j98 = (j95 >>> 28) + j97 + i53;
        long j99 = j97 + i52;
        iArr2[0] = ((int) j99) & 268435455;
        iArr2[1] = i54 + ((int) (j99 >>> 28));
        iArr2[2] = i56;
        iArr2[3] = i58;
        iArr2[4] = i60;
        iArr2[5] = ((int) j88) & 268435455;
        iArr2[6] = ((int) j92) & 268435455;
        iArr2[7] = ((int) j95) & 268435455;
        iArr2[8] = ((int) j98) & 268435455;
        iArr2[9] = i55 + ((int) (j98 >>> 28));
        iArr2[10] = i57;
        iArr2[11] = i59;
        iArr2[12] = i61;
        iArr2[13] = ((int) j89) & 268435455;
        iArr2[14] = ((int) j93) & 268435455;
        iArr2[15] = ((int) j96) & 268435455;
    }

    public static void y(int[] iArr, int[] iArr2, int[] iArr3) {
        int i9 = iArr[0];
        int i10 = iArr[1];
        int i11 = iArr[2];
        int i12 = iArr[3];
        int i13 = iArr[4];
        int i14 = iArr[5];
        int i15 = iArr[6];
        int i16 = iArr[7];
        int i17 = iArr[8];
        int i18 = iArr[9];
        int i19 = iArr[10];
        int i20 = iArr[11];
        int i21 = iArr[12];
        int i22 = iArr[13];
        int i23 = iArr[14];
        int i24 = iArr[15];
        int i25 = iArr2[0];
        int i26 = iArr2[1];
        int i27 = iArr2[2];
        int i28 = iArr2[3];
        int i29 = iArr2[4];
        int i30 = iArr2[5];
        int i31 = iArr2[6];
        int i32 = iArr2[7];
        int i33 = iArr2[8];
        int i34 = iArr2[9];
        int i35 = iArr2[10];
        int i36 = iArr2[11];
        int i37 = iArr2[12];
        int i38 = iArr2[13];
        int i39 = (i10 + 536870910) - i26;
        int i40 = (i14 + 536870910) - i30;
        int i41 = (i18 + 536870910) - i34;
        int i42 = (i22 + 536870910) - i38;
        int i43 = ((i11 + 536870910) - i27) + (i39 >>> 28);
        int i44 = ((i15 + 536870910) - i31) + (i40 >>> 28);
        int i45 = ((i19 + 536870910) - i35) + (i41 >>> 28);
        int i46 = ((i23 + 536870910) - iArr2[14]) + (i42 >>> 28);
        int i47 = ((i12 + 536870910) - i28) + (i43 >>> 28);
        int i48 = ((i16 + 536870910) - i32) + (i44 >>> 28);
        int i49 = ((i20 + 536870910) - i36) + (i45 >>> 28);
        int i50 = ((i24 + 536870910) - iArr2[15]) + (i46 >>> 28);
        int i51 = i50 >>> 28;
        int i52 = ((i9 + 536870910) - i25) + i51;
        int i53 = ((i13 + 536870910) - i29) + (i47 >>> 28);
        int i54 = ((i17 + 536870908) - i33) + i51 + (i48 >>> 28);
        int i55 = ((i21 + 536870910) - i37) + (i49 >>> 28);
        iArr3[0] = i52 & 268435455;
        iArr3[1] = (i39 & 268435455) + (i52 >>> 28);
        iArr3[2] = i43 & 268435455;
        iArr3[3] = i47 & 268435455;
        iArr3[4] = i53 & 268435455;
        iArr3[5] = (i40 & 268435455) + (i53 >>> 28);
        iArr3[6] = i44 & 268435455;
        iArr3[7] = i48 & 268435455;
        iArr3[8] = i54 & 268435455;
        iArr3[9] = (i41 & 268435455) + (i54 >>> 28);
        iArr3[10] = i45 & 268435455;
        iArr3[11] = i49 & 268435455;
        iArr3[12] = i55 & 268435455;
        iArr3[13] = (i42 & 268435455) + (i55 >>> 28);
        iArr3[14] = i46 & 268435455;
        iArr3[15] = i50 & 268435455;
    }

    public static void z(int[] iArr) {
        int[] f10 = f();
        f10[0] = 1;
        y(iArr, f10, iArr);
    }
}
