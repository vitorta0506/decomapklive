package ik;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class u0 {
    public static void a(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr2[1] ^ jArr[1];
    }

    public static void b(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr2[3] ^ jArr[3];
    }

    public static void c(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
    }

    private static void d(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr2[0] ^ jArr[0];
        jArr2[1] = jArr2[1] ^ jArr[1];
    }

    public static long[] e(BigInteger bigInteger) {
        return nk.n.s(113, bigInteger);
    }

    public static void f(long[] jArr, long[] jArr2) {
        long[] i9 = nk.d.i();
        nk.d.e(jArr, jArr2);
        for (int i10 = 1; i10 < 113; i10 += 2) {
            i(jArr2, i9);
            m(i9, jArr2);
            i(jArr2, i9);
            m(i9, jArr2);
            d(jArr, jArr2);
        }
    }

    protected static void g(long[] jArr, long[] jArr2, long[] jArr3) {
        long j10 = jArr[0];
        long j11 = ((jArr[1] << 7) ^ (j10 >>> 57)) & 144115188075855871L;
        long j12 = j10 & 144115188075855871L;
        long j13 = jArr2[0];
        long j14 = ((jArr2[1] << 7) ^ (j13 >>> 57)) & 144115188075855871L;
        long j15 = j13 & 144115188075855871L;
        long[] jArr4 = new long[6];
        h(jArr3, j12, j15, jArr4, 0);
        h(jArr3, j11, j14, jArr4, 2);
        h(jArr3, j12 ^ j11, j15 ^ j14, jArr4, 4);
        long j16 = jArr4[1] ^ jArr4[2];
        long j17 = jArr4[0];
        long j18 = jArr4[3];
        long j19 = (jArr4[4] ^ j17) ^ j16;
        long j20 = j16 ^ (jArr4[5] ^ j18);
        jArr3[0] = j17 ^ (j19 << 57);
        jArr3[1] = (j19 >>> 7) ^ (j20 << 50);
        jArr3[2] = (j20 >>> 14) ^ (j18 << 43);
        jArr3[3] = j18 >>> 21;
    }

    protected static void h(long[] jArr, long j10, long j11, long[] jArr2, int i9) {
        jArr[1] = j11;
        jArr[2] = jArr[1] << 1;
        jArr[3] = jArr[2] ^ j11;
        jArr[4] = jArr[2] << 1;
        jArr[5] = jArr[4] ^ j11;
        jArr[6] = jArr[3] << 1;
        jArr[7] = jArr[6] ^ j11;
        long j12 = jArr[((int) j10) & 7];
        long j13 = 0;
        int i10 = 48;
        do {
            int i11 = (int) (j10 >>> i10);
            long j14 = (jArr[(i11 >>> 6) & 7] << 6) ^ (jArr[i11 & 7] ^ (jArr[(i11 >>> 3) & 7] << 3));
            j12 ^= j14 << i10;
            j13 ^= j14 >>> (-i10);
            i10 -= 9;
        } while (i10 > 0);
        jArr2[i9] = 144115188075855871L & j12;
        jArr2[i9 + 1] = (((((j10 & 72198606942111744L) & ((j11 << 7) >> 63)) >>> 8) ^ j13) << 7) ^ (j12 >>> 57);
    }

    protected static void i(long[] jArr, long[] jArr2) {
        nk.b.c(jArr, 0, 2, jArr2, 0);
    }

    public static void j(long[] jArr, long[] jArr2) {
        if (nk.d.r(jArr)) {
            throw new IllegalStateException();
        }
        long[] g10 = nk.d.g();
        long[] g11 = nk.d.g();
        o(jArr, g10);
        k(g10, jArr, g10);
        o(g10, g10);
        k(g10, jArr, g10);
        q(g10, 3, g11);
        k(g11, g10, g11);
        o(g11, g11);
        k(g11, jArr, g11);
        q(g11, 7, g10);
        k(g10, g11, g10);
        q(g10, 14, g11);
        k(g11, g10, g11);
        q(g11, 28, g10);
        k(g10, g11, g10);
        q(g10, 56, g11);
        k(g11, g10, g11);
        o(g11, jArr2);
    }

    public static void k(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[8];
        g(jArr, jArr2, jArr4);
        m(jArr4, jArr3);
    }

    public static void l(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[8];
        g(jArr, jArr2, jArr4);
        b(jArr3, jArr4, jArr3);
    }

    public static void m(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        long j14 = j12 ^ ((j13 >>> 40) ^ (j13 >>> 49));
        long j15 = j10 ^ ((j14 << 15) ^ (j14 << 24));
        long j16 = (j11 ^ ((j13 << 15) ^ (j13 << 24))) ^ ((j14 >>> 40) ^ (j14 >>> 49));
        long j17 = j16 >>> 49;
        jArr2[0] = (j15 ^ j17) ^ (j17 << 9);
        jArr2[1] = 562949953421311L & j16;
    }

    public static void n(long[] jArr, long[] jArr2) {
        long f10 = nk.b.f(jArr[0]);
        long f11 = nk.b.f(jArr[1]);
        long j10 = (f10 >>> 32) | (f11 & (-4294967296L));
        jArr2[0] = ((j10 << 57) ^ ((4294967295L & f10) | (f11 << 32))) ^ (j10 << 5);
        jArr2[1] = (j10 >>> 59) ^ (j10 >>> 7);
    }

    public static void o(long[] jArr, long[] jArr2) {
        long[] i9 = nk.d.i();
        i(jArr, i9);
        m(i9, jArr2);
    }

    public static void p(long[] jArr, long[] jArr2) {
        long[] i9 = nk.d.i();
        i(jArr, i9);
        b(jArr2, i9, jArr2);
    }

    public static void q(long[] jArr, int i9, long[] jArr2) {
        long[] i10 = nk.d.i();
        i(jArr, i10);
        while (true) {
            m(i10, jArr2);
            i9--;
            if (i9 <= 0) {
                return;
            }
            i(jArr2, i10);
        }
    }

    public static int r(long[] jArr) {
        return ((int) jArr[0]) & 1;
    }
}
