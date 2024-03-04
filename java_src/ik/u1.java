package ik;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class u1 {
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
        return nk.n.s(233, bigInteger);
    }

    public static void f(long[] jArr, long[] jArr2) {
        long[] l10 = nk.h.l();
        nk.h.h(jArr, jArr2);
        for (int i9 = 1; i9 < 233; i9 += 2) {
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
        jArr[0] = j10 ^ (j11 << 59);
        jArr[1] = (j11 >>> 5) ^ (j12 << 54);
        jArr[2] = (j12 >>> 10) ^ (j13 << 49);
        jArr[3] = (j13 >>> 15) ^ (j14 << 44);
        jArr[4] = (j14 >>> 20) ^ (j15 << 39);
        jArr[5] = (j15 >>> 25) ^ (j16 << 34);
        jArr[6] = (j16 >>> 30) ^ (j17 << 29);
        jArr[7] = j17 >>> 35;
    }

    protected static void h(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        jArr2[0] = j10 & 576460752303423487L;
        jArr2[1] = ((j10 >>> 59) ^ (j11 << 5)) & 576460752303423487L;
        jArr2[2] = ((j11 >>> 54) ^ (j12 << 10)) & 576460752303423487L;
        jArr2[3] = (j12 >>> 49) ^ (j13 << 15);
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
        jArr2[i9] = jArr2[i9] ^ (576460752303423487L & j12);
        int i13 = i9 + 1;
        jArr2[i13] = jArr2[i13] ^ ((j12 >>> 59) ^ (j13 << 5));
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
        s(j10, 58, j11);
        m(j11, j10, j11);
        s(j11, 116, j10);
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
        long j18 = j15 ^ (j17 >>> 31);
        long j19 = (j14 ^ ((j17 >>> 41) ^ (j17 << 33))) ^ (j16 >>> 31);
        long j20 = ((j13 ^ (j17 << 23)) ^ ((j16 >>> 41) ^ (j16 << 33))) ^ (j18 >>> 31);
        long j21 = j10 ^ (j19 << 23);
        long j22 = ((j12 ^ (j16 << 23)) ^ ((j18 >>> 41) ^ (j18 << 33))) ^ (j19 >>> 31);
        long j23 = j20 >>> 41;
        jArr2[0] = j21 ^ j23;
        long j24 = j23 << 10;
        jArr2[1] = j24 ^ ((j11 ^ (j18 << 23)) ^ ((j19 >>> 41) ^ (j19 << 33)));
        jArr2[2] = j22;
        jArr2[3] = 2199023255551L & j20;
    }

    public static void p(long[] jArr, long[] jArr2) {
        long f10 = nk.b.f(jArr[0]);
        long f11 = nk.b.f(jArr[1]);
        long j10 = (f10 & 4294967295L) | (f11 << 32);
        long j11 = (f10 >>> 32) | (f11 & (-4294967296L));
        long f12 = nk.b.f(jArr[2]);
        long f13 = nk.b.f(jArr[3]);
        long j12 = (4294967295L & f12) | (f13 << 32);
        long j13 = (f12 >>> 32) | (f13 & (-4294967296L));
        long j14 = j13 >>> 27;
        long j15 = j13 ^ ((j11 >>> 27) | (j13 << 37));
        long j16 = j11 ^ (j11 << 37);
        long[] l10 = nk.h.l();
        int[] iArr = {32, 117, 191};
        int i9 = 0;
        for (int i10 = 3; i9 < i10; i10 = 3) {
            int i11 = iArr[i9] >>> 6;
            int i12 = iArr[i9] & 63;
            l10[i11] = l10[i11] ^ (j16 << i12);
            int i13 = i11 + 1;
            int i14 = -i12;
            l10[i13] = l10[i13] ^ ((j15 << i12) | (j16 >>> i14));
            int i15 = i11 + 2;
            l10[i15] = l10[i15] ^ ((j14 << i12) | (j15 >>> i14));
            int i16 = i11 + 3;
            l10[i16] = l10[i16] ^ (j14 >>> i14);
            i9++;
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
        return ((int) (jArr[0] ^ (jArr[2] >>> 31))) & 1;
    }
}
