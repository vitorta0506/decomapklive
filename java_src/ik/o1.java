package ik;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class o1 {
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
        jArr3[6] = jArr2[6] ^ jArr[6];
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
        return nk.n.s(193, bigInteger);
    }

    public static void f(long[] jArr, long[] jArr2) {
        long[] l10 = nk.h.l();
        nk.h.h(jArr, jArr2);
        for (int i9 = 1; i9 < 193; i9 += 2) {
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
        jArr[0] = j10 ^ (j11 << 49);
        jArr[1] = (j11 >>> 15) ^ (j12 << 34);
        jArr[2] = (j12 >>> 30) ^ (j13 << 19);
        jArr[3] = ((j13 >>> 45) ^ (j14 << 4)) ^ (j15 << 53);
        jArr[4] = ((j14 >>> 60) ^ (j16 << 38)) ^ (j15 >>> 11);
        jArr[5] = (j16 >>> 26) ^ (j17 << 23);
        jArr[6] = j17 >>> 41;
        jArr[7] = 0;
    }

    protected static void h(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        jArr2[0] = j10 & 562949953421311L;
        jArr2[1] = ((j10 >>> 49) ^ (j11 << 15)) & 562949953421311L;
        jArr2[2] = ((j11 >>> 34) ^ (j12 << 30)) & 562949953421311L;
        jArr2[3] = (j12 >>> 19) ^ (j13 << 45);
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
        int i11 = 36;
        do {
            int i12 = (int) (j10 >>> i11);
            long j14 = (jArr[(i12 >>> 12) & 7] << 12) ^ (((jArr[i12 & 7] ^ (jArr[(i12 >>> 3) & 7] << 3)) ^ (jArr[(i12 >>> 6) & 7] << 6)) ^ (jArr[(i12 >>> 9) & 7] << 9));
            j12 ^= j14 << i11;
            j13 ^= j14 >>> (-i11);
            i11 -= 15;
        } while (i11 > 0);
        jArr2[i9] = jArr2[i9] ^ (562949953421311L & j12);
        int i13 = i9 + 1;
        jArr2[i13] = jArr2[i13] ^ ((j12 >>> 49) ^ (j13 << 15));
    }

    protected static void k(long[] jArr, long[] jArr2) {
        nk.b.c(jArr, 0, 3, jArr2, 0);
        jArr2[6] = jArr[3] & 1;
    }

    public static void l(long[] jArr, long[] jArr2) {
        if (nk.h.w(jArr)) {
            throw new IllegalStateException();
        }
        long[] j10 = nk.h.j();
        long[] j11 = nk.h.j();
        q(jArr, j10);
        s(j10, 1, j11);
        m(j10, j11, j10);
        s(j11, 1, j11);
        m(j10, j11, j10);
        s(j10, 3, j11);
        m(j10, j11, j10);
        s(j10, 6, j11);
        m(j10, j11, j10);
        s(j10, 12, j11);
        m(j10, j11, j10);
        s(j10, 24, j11);
        m(j10, j11, j10);
        s(j10, 48, j11);
        m(j10, j11, j10);
        s(j10, 96, j11);
        m(j10, j11, jArr2);
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
        long j17 = j14 ^ (j16 >>> 50);
        long j18 = (j13 ^ ((j16 >>> 1) ^ (j16 << 14))) ^ (j15 >>> 50);
        long j19 = j10 ^ (j17 << 63);
        long j20 = (j11 ^ (j15 << 63)) ^ ((j17 >>> 1) ^ (j17 << 14));
        long j21 = ((j12 ^ (j16 << 63)) ^ ((j15 >>> 1) ^ (j15 << 14))) ^ (j17 >>> 50);
        long j22 = j18 >>> 1;
        jArr2[0] = (j19 ^ j22) ^ (j22 << 15);
        jArr2[1] = (j22 >>> 49) ^ j20;
        jArr2[2] = j21;
        jArr2[3] = 1 & j18;
    }

    public static void p(long[] jArr, long[] jArr2) {
        long f10 = nk.b.f(jArr[0]);
        long f11 = nk.b.f(jArr[1]);
        long j10 = (f10 & 4294967295L) | (f11 << 32);
        long j11 = (f10 >>> 32) | (f11 & (-4294967296L));
        long f12 = nk.b.f(jArr[2]);
        long j12 = (f12 & 4294967295L) ^ (jArr[3] << 32);
        long j13 = f12 >>> 32;
        jArr2[0] = j10 ^ (j11 << 8);
        jArr2[1] = ((j12 ^ (j13 << 8)) ^ (j11 >>> 56)) ^ (j11 << 33);
        jArr2[2] = (j11 >>> 31) ^ ((j13 >>> 56) ^ (j13 << 33));
        jArr2[3] = j13 >>> 31;
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
        return ((int) jArr[0]) & 1;
    }
}
