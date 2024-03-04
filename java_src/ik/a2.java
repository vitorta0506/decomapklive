package ik;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class a2 {
    public static void a(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr2[3] ^ jArr[3];
    }

    public static void b(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr[6] ^ jArr2[6];
        jArr3[7] = jArr2[7] ^ jArr[7];
    }

    public static void c(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    private static void d(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr2[0] ^ jArr[0];
        jArr2[1] = jArr2[1] ^ jArr[1];
        jArr2[2] = jArr2[2] ^ jArr[2];
        jArr2[3] = jArr2[3] ^ jArr[3];
    }

    public static long[] e(BigInteger bigInteger) {
        return nk.n.s(239, bigInteger);
    }

    public static void f(long[] jArr, long[] jArr2) {
        long[] l10 = nk.h.l();
        nk.h.h(jArr, jArr2);
        for (int i9 = 1; i9 < 239; i9 += 2) {
            k(jArr2, l10);
            o(l10, jArr2);
            k(jArr2, l10);
            o(l10, jArr2);
            d(jArr, jArr2);
        }
    }

    protected static void g(long[] jArr) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        long j14 = jArr[4];
        long j15 = jArr[5];
        long j16 = jArr[6];
        long j17 = jArr[7];
        jArr[0] = j10 ^ (j11 << 60);
        jArr[1] = (j11 >>> 4) ^ (j12 << 56);
        jArr[2] = (j12 >>> 8) ^ (j13 << 52);
        jArr[3] = (j13 >>> 12) ^ (j14 << 48);
        jArr[4] = (j14 >>> 16) ^ (j15 << 44);
        jArr[5] = (j15 >>> 20) ^ (j16 << 40);
        jArr[6] = (j16 >>> 24) ^ (j17 << 36);
        jArr[7] = j17 >>> 28;
    }

    protected static void h(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        jArr2[0] = j10 & 1152921504606846975L;
        jArr2[1] = ((j10 >>> 60) ^ (j11 << 4)) & 1152921504606846975L;
        jArr2[2] = ((j11 >>> 56) ^ (j12 << 8)) & 1152921504606846975L;
        jArr2[3] = (j12 >>> 52) ^ (j13 << 12);
    }

    protected static void i(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[4];
        long[] jArr5 = new long[4];
        h(jArr, jArr4);
        h(jArr2, jArr5);
        long[] jArr6 = new long[8];
        j(jArr6, jArr4[0], jArr5[0], jArr3, 0);
        j(jArr6, jArr4[1], jArr5[1], jArr3, 1);
        j(jArr6, jArr4[2], jArr5[2], jArr3, 2);
        j(jArr6, jArr4[3], jArr5[3], jArr3, 3);
        for (int i9 = 5; i9 > 0; i9--) {
            jArr3[i9] = jArr3[i9] ^ jArr3[i9 - 1];
        }
        j(jArr6, jArr4[0] ^ jArr4[1], jArr5[0] ^ jArr5[1], jArr3, 1);
        j(jArr6, jArr4[2] ^ jArr4[3], jArr5[2] ^ jArr5[3], jArr3, 3);
        for (int i10 = 7; i10 > 1; i10--) {
            jArr3[i10] = jArr3[i10] ^ jArr3[i10 - 2];
        }
        long j10 = jArr4[0] ^ jArr4[2];
        long j11 = jArr4[1] ^ jArr4[3];
        long j12 = jArr5[0] ^ jArr5[2];
        long j13 = jArr5[1] ^ jArr5[3];
        j(jArr6, j10 ^ j11, j12 ^ j13, jArr3, 3);
        long[] jArr7 = new long[3];
        j(jArr6, j10, j12, jArr7, 0);
        j(jArr6, j11, j13, jArr7, 1);
        long j14 = jArr7[0];
        long j15 = jArr7[1];
        long j16 = jArr7[2];
        jArr3[2] = jArr3[2] ^ j14;
        jArr3[3] = (j14 ^ j15) ^ jArr3[3];
        jArr3[4] = jArr3[4] ^ (j16 ^ j15);
        jArr3[5] = jArr3[5] ^ j16;
        g(jArr3);
    }

    protected static void j(long[] jArr, long j10, long j11, long[] jArr2, int i9) {
        jArr[1] = j11;
        jArr[2] = jArr[1] << 1;
        jArr[3] = jArr[2] ^ j11;
        jArr[4] = jArr[2] << 1;
        jArr[5] = jArr[4] ^ j11;
        jArr[6] = jArr[3] << 1;
        jArr[7] = jArr[6] ^ j11;
        int i10 = (int) j10;
        long j12 = (jArr[(i10 >>> 3) & 7] << 3) ^ jArr[i10 & 7];
        long j13 = 0;
        int i11 = 54;
        do {
            int i12 = (int) (j10 >>> i11);
            long j14 = (jArr[(i12 >>> 3) & 7] << 3) ^ jArr[i12 & 7];
            j12 ^= j14 << i11;
            j13 ^= j14 >>> (-i11);
            i11 -= 6;
        } while (i11 > 0);
        jArr2[i9] = jArr2[i9] ^ (1152921504606846975L & j12);
        int i13 = i9 + 1;
        jArr2[i13] = ((((((j10 & 585610922974906400L) & ((j11 << 4) >> 63)) >>> 5) ^ j13) << 4) ^ (j12 >>> 60)) ^ jArr2[i13];
    }

    protected static void k(long[] jArr, long[] jArr2) {
        nk.b.c(jArr, 0, 4, jArr2, 0);
    }

    public static void l(long[] jArr, long[] jArr2) {
        if (nk.h.w(jArr)) {
            throw new IllegalStateException();
        }
        long[] j10 = nk.h.j();
        long[] j11 = nk.h.j();
        q(jArr, j10);
        m(j10, jArr, j10);
        q(j10, j10);
        m(j10, jArr, j10);
        s(j10, 3, j11);
        m(j11, j10, j11);
        q(j11, j11);
        m(j11, jArr, j11);
        s(j11, 7, j10);
        m(j10, j11, j10);
        s(j10, 14, j11);
        m(j11, j10, j11);
        q(j11, j11);
        m(j11, jArr, j11);
        s(j11, 29, j10);
        m(j10, j11, j10);
        q(j10, j10);
        m(j10, jArr, j10);
        s(j10, 59, j11);
        m(j11, j10, j11);
        q(j11, j11);
        m(j11, jArr, j11);
        s(j11, 119, j10);
        m(j10, j11, j10);
        q(j10, jArr2);
    }

    public static void m(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] l10 = nk.h.l();
        i(jArr, jArr2, l10);
        o(l10, jArr3);
    }

    public static void n(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] l10 = nk.h.l();
        i(jArr, jArr2, l10);
        b(jArr3, l10, jArr3);
    }

    public static void o(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        long j14 = jArr[4];
        long j15 = jArr[5];
        long j16 = jArr[6];
        long j17 = jArr[7];
        long j18 = j16 ^ (j17 >>> 17);
        long j19 = (j15 ^ (j17 << 47)) ^ (j18 >>> 17);
        long j20 = ((j14 ^ (j17 >>> 47)) ^ (j18 << 47)) ^ (j19 >>> 17);
        long j21 = j10 ^ (j20 << 17);
        long j22 = (j11 ^ (j19 << 17)) ^ (j20 >>> 47);
        long j23 = (((j13 ^ (j17 << 17)) ^ (j18 >>> 47)) ^ (j19 << 47)) ^ (j20 >>> 17);
        long j24 = j23 >>> 47;
        jArr2[0] = j21 ^ j24;
        jArr2[1] = j22;
        long j25 = j24 << 30;
        jArr2[2] = j25 ^ (((j12 ^ (j18 << 17)) ^ (j19 >>> 47)) ^ (j20 << 47));
        jArr2[3] = 140737488355327L & j23;
    }

    public static void p(long[] jArr, long[] jArr2) {
        int i9 = 0;
        long f10 = nk.b.f(jArr[0]);
        long f11 = nk.b.f(jArr[1]);
        long j10 = (f10 & 4294967295L) | (f11 << 32);
        long j11 = (f10 >>> 32) | (f11 & (-4294967296L));
        int i10 = 2;
        long f12 = nk.b.f(jArr[2]);
        long f13 = nk.b.f(jArr[3]);
        long j12 = (f12 & 4294967295L) | (f13 << 32);
        long j13 = (f13 & (-4294967296L)) | (f12 >>> 32);
        long j14 = j13 >>> 49;
        long j15 = (j11 >>> 49) | (j13 << 15);
        long j16 = j13 ^ (j11 << 15);
        long[] l10 = nk.h.l();
        int[] iArr = {39, 120};
        while (i9 < i10) {
            int i11 = iArr[i9] >>> 6;
            int i12 = iArr[i9] & 63;
            l10[i11] = l10[i11] ^ (j11 << i12);
            int i13 = i11 + 1;
            int[] iArr2 = iArr;
            int i14 = -i12;
            l10[i13] = l10[i13] ^ ((j16 << i12) | (j11 >>> i14));
            int i15 = i11 + 2;
            l10[i15] = l10[i15] ^ ((j15 << i12) | (j16 >>> i14));
            int i16 = i11 + 3;
            l10[i16] = l10[i16] ^ ((j14 << i12) | (j15 >>> i14));
            int i17 = i11 + 4;
            l10[i17] = l10[i17] ^ (j14 >>> i14);
            i9++;
            i10 = 2;
            iArr = iArr2;
        }
        o(l10, jArr2);
        jArr2[0] = jArr2[0] ^ j10;
        jArr2[1] = jArr2[1] ^ j12;
    }

    public static void q(long[] jArr, long[] jArr2) {
        long[] l10 = nk.h.l();
        k(jArr, l10);
        o(l10, jArr2);
    }

    public static void r(long[] jArr, long[] jArr2) {
        long[] l10 = nk.h.l();
        k(jArr, l10);
        b(jArr2, l10, jArr2);
    }

    public static void s(long[] jArr, int i9, long[] jArr2) {
        long[] l10 = nk.h.l();
        k(jArr, l10);
        while (true) {
            o(l10, jArr2);
            i9--;
            if (i9 <= 0) {
                return;
            }
            k(jArr2, l10);
        }
    }

    public static int t(long[] jArr) {
        return ((int) ((jArr[0] ^ (jArr[1] >>> 17)) ^ (jArr[2] >>> 34))) & 1;
    }
}
