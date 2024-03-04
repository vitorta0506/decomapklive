package kk;

import androidx.core.view.ViewCompat;
/* loaded from: classes7.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f54019a = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f54020b = {34513072, 59165138, 4688974, 3500415, 6194736, 33281959, 54535759, 32551604, 163342, 5703241};

    public static void A(int[] iArr) {
        for (int i9 = 0; i9 < 10; i9++) {
            iArr[i9] = 0;
        }
    }

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i9 = 0; i9 < 10; i9++) {
            iArr3[i9] = iArr[i9] + iArr2[i9];
        }
    }

    public static void b(int[] iArr) {
        iArr[0] = iArr[0] + 1;
    }

    public static void c(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        for (int i9 = 0; i9 < 10; i9++) {
            int i10 = iArr[i9];
            int i11 = iArr2[i9];
            iArr3[i9] = i10 + i11;
            iArr4[i9] = i10 - i11;
        }
    }

    public static void d(int[] iArr) {
        int i9 = iArr[0];
        int i10 = iArr[1];
        int i11 = iArr[2];
        int i12 = iArr[3];
        int i13 = iArr[4];
        int i14 = iArr[5];
        int i15 = iArr[6];
        int i16 = iArr[7];
        int i17 = iArr[8];
        int i18 = i11 + (i10 >> 26);
        int i19 = i13 + (i12 >> 26);
        int i20 = i16 + (i15 >> 26);
        int i21 = iArr[9] + (i17 >> 26);
        int i22 = (i12 & 67108863) + (i18 >> 25);
        int i23 = i14 + (i19 >> 25);
        int i24 = (i17 & 67108863) + (i20 >> 25);
        int i25 = i9 + ((i21 >> 25) * 38);
        int i26 = (i10 & 67108863) + (i25 >> 26);
        int i27 = (i15 & 67108863) + (i23 >> 26);
        iArr[0] = i25 & 67108863;
        iArr[1] = i26 & 67108863;
        iArr[2] = (i18 & 33554431) + (i26 >> 26);
        iArr[3] = i22 & 67108863;
        iArr[4] = (i19 & 33554431) + (i22 >> 26);
        iArr[5] = i23 & 67108863;
        iArr[6] = i27 & 67108863;
        iArr[7] = (i20 & 33554431) + (i27 >> 26);
        iArr[8] = i24 & 67108863;
        iArr[9] = (i21 & 33554431) + (i24 >> 26);
    }

    public static void e(int i9, int[] iArr, int i10, int[] iArr2, int i11) {
        for (int i12 = 0; i12 < 10; i12++) {
            int i13 = i11 + i12;
            int i14 = iArr2[i13];
            iArr2[i13] = i14 ^ ((iArr[i10 + i12] ^ i14) & i9);
        }
    }

    public static void f(int i9, int[] iArr) {
        int i10 = 0 - i9;
        for (int i11 = 0; i11 < 10; i11++) {
            iArr[i11] = (iArr[i11] ^ i10) - i10;
        }
    }

    public static void g(int[] iArr, int i9, int[] iArr2, int i10) {
        for (int i11 = 0; i11 < 10; i11++) {
            iArr2[i10 + i11] = iArr[i9 + i11];
        }
    }

    public static int[] h() {
        return new int[10];
    }

    public static int[] i(int i9) {
        return new int[i9 * 10];
    }

    public static void j(int i9, int[] iArr, int[] iArr2) {
        int i10 = 0 - i9;
        for (int i11 = 0; i11 < 10; i11++) {
            int i12 = iArr[i11];
            int i13 = iArr2[i11];
            int i14 = (i12 ^ i13) & i10;
            iArr[i11] = i12 ^ i14;
            iArr2[i11] = i13 ^ i14;
        }
    }

    public static void k(int[] iArr, int i9, int[] iArr2) {
        l(iArr, i9, iArr2, 0);
        l(iArr, i9 + 4, iArr2, 5);
        iArr2[9] = iArr2[9] & ViewCompat.MEASURED_SIZE_MASK;
    }

    private static void l(int[] iArr, int i9, int[] iArr2, int i10) {
        int i11 = iArr[i9 + 0];
        int i12 = iArr[i9 + 1];
        int i13 = iArr[i9 + 2];
        int i14 = iArr[i9 + 3];
        iArr2[i10 + 0] = i11 & 67108863;
        iArr2[i10 + 1] = ((i11 >>> 26) | (i12 << 6)) & 67108863;
        iArr2[i10 + 2] = ((i13 << 12) | (i12 >>> 20)) & 33554431;
        iArr2[i10 + 3] = ((i14 << 19) | (i13 >>> 13)) & 67108863;
        iArr2[i10 + 4] = i14 >>> 7;
    }

    public static void m(int[] iArr, byte[] bArr, int i9) {
        o(iArr, 0, bArr, i9);
        o(iArr, 5, bArr, i9 + 16);
    }

    public static void n(int[] iArr, int[] iArr2, int i9) {
        p(iArr, 0, iArr2, i9);
        p(iArr, 5, iArr2, i9 + 4);
    }

    private static void o(int[] iArr, int i9, byte[] bArr, int i10) {
        int i11 = iArr[i9 + 0];
        int i12 = iArr[i9 + 1];
        int i13 = iArr[i9 + 2];
        int i14 = iArr[i9 + 3];
        int i15 = iArr[i9 + 4];
        q((i12 << 26) | i11, bArr, i10 + 0);
        q((i12 >>> 6) | (i13 << 20), bArr, i10 + 4);
        q((i13 >>> 12) | (i14 << 13), bArr, i10 + 8);
        q((i15 << 7) | (i14 >>> 19), bArr, i10 + 12);
    }

    private static void p(int[] iArr, int i9, int[] iArr2, int i10) {
        int i11 = iArr[i9 + 0];
        int i12 = iArr[i9 + 1];
        int i13 = iArr[i9 + 2];
        int i14 = iArr[i9 + 3];
        int i15 = iArr[i9 + 4];
        iArr2[i10 + 0] = i11 | (i12 << 26);
        iArr2[i10 + 1] = (i12 >>> 6) | (i13 << 20);
        iArr2[i10 + 2] = (i13 >>> 12) | (i14 << 13);
        iArr2[i10 + 3] = (i15 << 7) | (i14 >>> 19);
    }

    private static void q(int i9, byte[] bArr, int i10) {
        bArr[i10] = (byte) i9;
        int i11 = i10 + 1;
        bArr[i11] = (byte) (i9 >>> 8);
        int i12 = i11 + 1;
        bArr[i12] = (byte) (i9 >>> 16);
        bArr[i12 + 1] = (byte) (i9 >>> 24);
    }

    public static void r(int[] iArr, int[] iArr2) {
        int[] h10 = h();
        int[] iArr3 = new int[8];
        g(iArr, 0, h10, 0);
        v(h10);
        n(h10, iArr3, 0);
        nk.c.l(f54019a, iArr3, iArr3);
        k(iArr3, 0, iArr2);
    }

    public static void s(int[] iArr, int[] iArr2) {
        int[] h10 = h();
        int[] iArr3 = new int[8];
        g(iArr, 0, h10, 0);
        v(h10);
        n(h10, iArr3, 0);
        nk.c.m(f54019a, iArr3, iArr3);
        k(iArr3, 0, iArr2);
    }

    public static int t(int[] iArr) {
        int i9 = 0;
        for (int i10 = 0; i10 < 10; i10++) {
            i9 |= iArr[i10];
        }
        return (((i9 >>> 1) | (i9 & 1)) - 1) >> 31;
    }

    public static void u(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10;
        int i9 = iArr[0];
        int i10 = iArr2[0];
        int i11 = iArr[1];
        int i12 = iArr2[1];
        int i13 = iArr[2];
        int i14 = iArr2[2];
        int i15 = iArr[3];
        int i16 = iArr2[3];
        int i17 = iArr[4];
        int i18 = iArr2[4];
        int i19 = iArr[5];
        int i20 = iArr2[5];
        int i21 = iArr[6];
        int i22 = iArr2[6];
        int i23 = iArr[7];
        int i24 = iArr2[7];
        int i25 = iArr[8];
        int i26 = iArr2[8];
        int i27 = iArr[9];
        int i28 = iArr2[9];
        long j11 = i9;
        long j12 = i10;
        long j13 = j11 * j12;
        long j14 = i12;
        long j15 = i11;
        long j16 = i14;
        long j17 = i13;
        long j18 = (j11 * j16) + (j15 * j14) + (j17 * j12);
        long j19 = i16;
        long j20 = j11 * j19;
        long j21 = i15;
        long j22 = (((j15 * j16) + (j17 * j14)) << 1) + j20 + (j21 * j12);
        long j23 = i18;
        long j24 = i17;
        long j25 = ((j17 * j16) << 1) + (j11 * j23) + (j15 * j19) + (j21 * j14) + (j12 * j24);
        long j26 = ((((j15 * j23) + (j17 * j19)) + (j21 * j16)) + (j24 * j14)) << 1;
        long j27 = (((j17 * j23) + (j24 * j16)) << 1) + (j21 * j19);
        long j28 = (j21 * j23) + (j24 * j19);
        long j29 = (j24 * j23) << 1;
        long j30 = i19;
        long j31 = i20;
        long j32 = i22;
        long j33 = i21;
        long j34 = i24;
        long j35 = i23;
        long j36 = (j30 * j34) + (j33 * j32) + (j35 * j31);
        long j37 = i26;
        long j38 = i25;
        long j39 = (((j33 * j34) + (j35 * j32)) << 1) + (j30 * j37) + (j38 * j31);
        long j40 = i28;
        long j41 = i27;
        long j42 = ((j35 * j34) << 1) + (j30 * j40) + (j33 * j37) + (j38 * j32) + (j31 * j41);
        long j43 = j13 - (((((j33 * j40) + (j35 * j37)) + (j38 * j34)) + (j41 * j32)) * 76);
        long j44 = ((j11 * j14) + (j15 * j12)) - (((((j35 * j40) + (j41 * j34)) << 1) + (j38 * j37)) * 38);
        long j45 = j18 - (((j38 * j40) + (j37 * j41)) * 38);
        long j46 = j22 - ((j41 * j40) * 76);
        long j47 = j26 - (j30 * j31);
        long j48 = j27 - ((j30 * j32) + (j33 * j31));
        long j49 = j28 - j36;
        long j50 = j29 - j39;
        int i29 = i9 + i19;
        int i30 = i11 + i21;
        int i31 = i13 + i23;
        int i32 = i14 + i24;
        int i33 = i15 + i25;
        int i34 = i17 + i27;
        long j51 = i29;
        long j52 = i10 + i20;
        long j53 = i12 + i22;
        long j54 = i30;
        long j55 = (j51 * j53) + (j54 * j52);
        long j56 = i32;
        long j57 = i31;
        long j58 = (j51 * j56) + (j54 * j53) + (j57 * j52);
        long j59 = i16 + i26;
        long j60 = i33;
        long j61 = i18 + i28;
        long j62 = i34;
        long j63 = ((j50 + (((((j54 * j56) + (j57 * j53)) << 1) + ((j51 * j59) + (j60 * j52))) - j46)) >> 26) + (((((j57 * j56) << 1) + ((((j51 * j61) + (j54 * j59)) + (j60 * j53)) + (j52 * j62))) - j25) - j42);
        long j64 = j43 + ((((j63 >> 25) + (((((j54 * j61) + (j57 * j59)) + (j60 * j56)) + (j62 * j53)) << 1)) - j47) * 38);
        iArr3[0] = ((int) j64) & 67108863;
        long j65 = (j64 >> 26) + j44 + ((((((j57 * j61) + (j62 * j56)) << 1) + (j60 * j59)) - j48) * 38);
        iArr3[1] = ((int) j65) & 67108863;
        long j66 = (j65 >> 26) + j45 + ((((j60 * j61) + (j62 * j59)) - j49) * 38);
        iArr3[2] = ((int) j66) & 33554431;
        long j67 = (j66 >> 25) + j46 + ((((j62 * j61) << 1) - j50) * 38);
        iArr3[3] = ((int) j67) & 67108863;
        long j68 = (j67 >> 26) + j25 + (j42 * 38);
        iArr3[4] = ((int) j68) & 33554431;
        long j69 = (j68 >> 25) + j47 + ((j51 * j52) - j43);
        iArr3[5] = ((int) j69) & 67108863;
        long j70 = (j69 >> 26) + j48 + (j55 - j44);
        iArr3[6] = ((int) j70) & 67108863;
        long j71 = (j70 >> 26) + j49 + (j58 - j45);
        iArr3[7] = ((int) j71) & 33554431;
        long j72 = (j71 >> 25) + (((int) j10) & 67108863);
        iArr3[8] = ((int) j72) & 67108863;
        iArr3[9] = (((int) j63) & 33554431) + ((int) (j72 >> 26));
    }

    public static void v(int[] iArr) {
        int i9 = (iArr[9] >>> 23) & 1;
        x(iArr, i9);
        x(iArr, -i9);
    }

    public static void w(int[] iArr) {
        iArr[0] = 1;
        for (int i9 = 1; i9 < 10; i9++) {
            iArr[i9] = 0;
        }
    }

    private static void x(int[] iArr, int i9) {
        int i10 = iArr[9];
        long j10 = (((i10 >> 24) + i9) * 19) + iArr[0];
        iArr[0] = ((int) j10) & 67108863;
        long j11 = (j10 >> 26) + iArr[1];
        iArr[1] = ((int) j11) & 67108863;
        long j12 = (j11 >> 26) + iArr[2];
        iArr[2] = ((int) j12) & 33554431;
        long j13 = (j12 >> 25) + iArr[3];
        iArr[3] = ((int) j13) & 67108863;
        long j14 = (j13 >> 26) + iArr[4];
        iArr[4] = ((int) j14) & 33554431;
        long j15 = (j14 >> 25) + iArr[5];
        iArr[5] = ((int) j15) & 67108863;
        long j16 = (j15 >> 26) + iArr[6];
        iArr[6] = ((int) j16) & 67108863;
        long j17 = (j16 >> 26) + iArr[7];
        iArr[7] = 33554431 & ((int) j17);
        long j18 = (j17 >> 25) + iArr[8];
        iArr[8] = 67108863 & ((int) j18);
        iArr[9] = (16777215 & i10) + ((int) (j18 >> 26));
    }

    public static void y(int[] iArr, int[] iArr2) {
        long j10;
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
        long j11 = i9;
        long j12 = j11 * j11;
        long j13 = i10 * 2;
        long j14 = j11 * j13;
        long j15 = i11 * 2;
        long j16 = i10;
        long j17 = (j11 * j15) + (j16 * j16);
        long j18 = i12 * 2;
        long j19 = i13 * 2;
        long j20 = (i11 * j15) + (j11 * j19) + (j16 * j18);
        long j21 = (j13 * j19) + (j18 * j15);
        long j22 = i12;
        long j23 = (j15 * j19) + (j22 * j22);
        long j24 = j22 * j19;
        long j25 = i13 * j19;
        int i19 = i18 * 2;
        long j26 = i14;
        long j27 = j26 * j26;
        long j28 = i15 * 2;
        long j29 = j26 * j28;
        long j30 = i16 * 2;
        long j31 = i15;
        long j32 = (j26 * j30) + (j31 * j31);
        long j33 = i17 * 2;
        long j34 = i19;
        long j35 = (i16 * j30) + (j26 * j34) + (j31 * j33);
        long j36 = i17;
        long j37 = j12 - (((j28 * j34) + (j33 * j30)) * 38);
        long j38 = j14 - (((j30 * j34) + (j36 * j36)) * 38);
        long j39 = j17 - ((j36 * j34) * 38);
        long j40 = ((j13 * j15) + (j11 * j18)) - ((i18 * j34) * 38);
        long j41 = j21 - j27;
        long j42 = j23 - j29;
        long j43 = j24 - j32;
        long j44 = j25 - ((j28 * j30) + (j26 * j33));
        int i20 = i10 + i15;
        int i21 = i11 + i16;
        int i22 = i12 + i17;
        int i23 = i13 + i18;
        long j45 = i9 + i14;
        long j46 = j45 * j45;
        long j47 = i20 * 2;
        long j48 = j45 * j47;
        long j49 = i21 * 2;
        long j50 = i20;
        long j51 = (j45 * j49) + (j50 * j50);
        long j52 = i22 * 2;
        long j53 = i23 * 2;
        long j54 = (j47 * j53) + (j52 * j49);
        long j55 = i22;
        long j56 = (j49 * j53) + (j55 * j55);
        long j57 = j55 * j53;
        long j58 = i23 * j53;
        long j59 = ((j44 + (((j47 * j49) + (j45 * j52)) - j40)) >> 26) + (((((i21 * j49) + (j45 * j53)) + (j50 * j52)) - j20) - j35);
        long j60 = j37 + ((((j59 >> 25) + j54) - j41) * 38);
        iArr2[0] = ((int) j60) & 67108863;
        long j61 = (j60 >> 26) + j38 + ((j56 - j42) * 38);
        iArr2[1] = ((int) j61) & 67108863;
        long j62 = (j61 >> 26) + j39 + ((j57 - j43) * 38);
        iArr2[2] = ((int) j62) & 33554431;
        long j63 = (j62 >> 25) + j40 + ((j58 - j44) * 38);
        iArr2[3] = ((int) j63) & 67108863;
        long j64 = (j63 >> 26) + j20 + (38 * j35);
        iArr2[4] = ((int) j64) & 33554431;
        long j65 = (j64 >> 25) + j41 + (j46 - j37);
        iArr2[5] = ((int) j65) & 67108863;
        long j66 = (j65 >> 26) + j42 + (j48 - j38);
        iArr2[6] = ((int) j66) & 67108863;
        long j67 = (j66 >> 26) + j43 + (j51 - j39);
        iArr2[7] = ((int) j67) & 33554431;
        long j68 = (j67 >> 25) + (((int) j10) & 67108863);
        iArr2[8] = ((int) j68) & 67108863;
        iArr2[9] = (((int) j59) & 33554431) + ((int) (j68 >> 26));
    }

    public static void z(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i9 = 0; i9 < 10; i9++) {
            iArr3[i9] = iArr[i9] - iArr2[i9];
        }
    }
}
