package ik;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class q2 {

    /* renamed from: a  reason: collision with root package name */
    private static final long[] f41596a = {3161836309350906777L, -7642453882179322845L, -3821226941089661423L, 7312758566309945096L, -556661012383879292L, 8945041530681231562L, -4750851271514160027L, 6847946401097695794L, 541669439031730457L};

    private static void a(long[] jArr, int i9, long[] jArr2, int i10, long[] jArr3, int i11) {
        for (int i12 = 0; i12 < 9; i12++) {
            jArr3[i11 + i12] = jArr[i9 + i12] ^ jArr2[i10 + i12];
        }
    }

    public static void b(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i9 = 0; i9 < 9; i9++) {
            jArr3[i9] = jArr[i9] ^ jArr2[i9];
        }
    }

    private static void c(long[] jArr, int i9, long[] jArr2, int i10, long[] jArr3, int i11) {
        for (int i12 = 0; i12 < 9; i12++) {
            int i13 = i11 + i12;
            jArr3[i13] = jArr3[i13] ^ (jArr[i9 + i12] ^ jArr2[i10 + i12]);
        }
    }

    public static void d(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i9 = 0; i9 < 9; i9++) {
            jArr3[i9] = jArr3[i9] ^ (jArr[i9] ^ jArr2[i9]);
        }
    }

    public static void e(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i9 = 0; i9 < 18; i9++) {
            jArr3[i9] = jArr[i9] ^ jArr2[i9];
        }
    }

    public static void f(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        for (int i9 = 1; i9 < 9; i9++) {
            jArr2[i9] = jArr[i9];
        }
    }

    private static void g(long[] jArr, long[] jArr2) {
        for (int i9 = 0; i9 < 9; i9++) {
            jArr2[i9] = jArr2[i9] ^ jArr[i9];
        }
    }

    public static long[] h(BigInteger bigInteger) {
        return nk.n.s(571, bigInteger);
    }

    public static void i(long[] jArr, long[] jArr2) {
        long[] d10 = nk.m.d();
        nk.m.b(jArr, jArr2);
        for (int i9 = 1; i9 < 571; i9 += 2) {
            m(jArr2, d10);
            t(d10, jArr2);
            m(jArr2, d10);
            t(d10, jArr2);
            g(jArr, jArr2);
        }
    }

    protected static void j(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[16];
        for (int i9 = 0; i9 < 9; i9++) {
            l(jArr4, jArr[i9], jArr2[i9], jArr3, i9 << 1);
        }
        long j10 = jArr3[0];
        long j11 = jArr3[1];
        long j12 = j10 ^ jArr3[2];
        jArr3[1] = j12 ^ j11;
        long j13 = j11 ^ jArr3[3];
        long j14 = j12 ^ jArr3[4];
        jArr3[2] = j14 ^ j13;
        long j15 = j13 ^ jArr3[5];
        long j16 = j14 ^ jArr3[6];
        jArr3[3] = j16 ^ j15;
        long j17 = j15 ^ jArr3[7];
        long j18 = j16 ^ jArr3[8];
        jArr3[4] = j18 ^ j17;
        long j19 = j17 ^ jArr3[9];
        long j20 = j18 ^ jArr3[10];
        jArr3[5] = j20 ^ j19;
        long j21 = j19 ^ jArr3[11];
        long j22 = j20 ^ jArr3[12];
        jArr3[6] = j22 ^ j21;
        long j23 = j21 ^ jArr3[13];
        long j24 = j22 ^ jArr3[14];
        jArr3[7] = j24 ^ j23;
        long j25 = j23 ^ jArr3[15];
        long j26 = j24 ^ jArr3[16];
        jArr3[8] = j26 ^ j25;
        long j27 = j26 ^ (j25 ^ jArr3[17]);
        jArr3[9] = jArr3[0] ^ j27;
        jArr3[10] = jArr3[1] ^ j27;
        jArr3[11] = jArr3[2] ^ j27;
        jArr3[12] = jArr3[3] ^ j27;
        jArr3[13] = jArr3[4] ^ j27;
        jArr3[14] = jArr3[5] ^ j27;
        jArr3[15] = jArr3[6] ^ j27;
        jArr3[16] = jArr3[7] ^ j27;
        jArr3[17] = jArr3[8] ^ j27;
        l(jArr4, jArr[0] ^ jArr[1], jArr2[0] ^ jArr2[1], jArr3, 1);
        l(jArr4, jArr[0] ^ jArr[2], jArr2[0] ^ jArr2[2], jArr3, 2);
        l(jArr4, jArr[0] ^ jArr[3], jArr2[0] ^ jArr2[3], jArr3, 3);
        l(jArr4, jArr[1] ^ jArr[2], jArr2[1] ^ jArr2[2], jArr3, 3);
        l(jArr4, jArr[0] ^ jArr[4], jArr2[0] ^ jArr2[4], jArr3, 4);
        l(jArr4, jArr[1] ^ jArr[3], jArr2[1] ^ jArr2[3], jArr3, 4);
        l(jArr4, jArr[0] ^ jArr[5], jArr2[0] ^ jArr2[5], jArr3, 5);
        l(jArr4, jArr[1] ^ jArr[4], jArr2[1] ^ jArr2[4], jArr3, 5);
        l(jArr4, jArr[2] ^ jArr[3], jArr2[2] ^ jArr2[3], jArr3, 5);
        l(jArr4, jArr[0] ^ jArr[6], jArr2[0] ^ jArr2[6], jArr3, 6);
        l(jArr4, jArr[1] ^ jArr[5], jArr2[1] ^ jArr2[5], jArr3, 6);
        l(jArr4, jArr[2] ^ jArr[4], jArr2[2] ^ jArr2[4], jArr3, 6);
        l(jArr4, jArr[0] ^ jArr[7], jArr2[0] ^ jArr2[7], jArr3, 7);
        l(jArr4, jArr[1] ^ jArr[6], jArr2[1] ^ jArr2[6], jArr3, 7);
        l(jArr4, jArr[2] ^ jArr[5], jArr2[2] ^ jArr2[5], jArr3, 7);
        l(jArr4, jArr[3] ^ jArr[4], jArr2[3] ^ jArr2[4], jArr3, 7);
        l(jArr4, jArr[0] ^ jArr[8], jArr2[0] ^ jArr2[8], jArr3, 8);
        l(jArr4, jArr[1] ^ jArr[7], jArr2[1] ^ jArr2[7], jArr3, 8);
        l(jArr4, jArr[2] ^ jArr[6], jArr2[2] ^ jArr2[6], jArr3, 8);
        l(jArr4, jArr[3] ^ jArr[5], jArr2[3] ^ jArr2[5], jArr3, 8);
        l(jArr4, jArr[1] ^ jArr[8], jArr2[1] ^ jArr2[8], jArr3, 9);
        l(jArr4, jArr[2] ^ jArr[7], jArr2[2] ^ jArr2[7], jArr3, 9);
        l(jArr4, jArr[3] ^ jArr[6], jArr2[3] ^ jArr2[6], jArr3, 9);
        l(jArr4, jArr[4] ^ jArr[5], jArr2[4] ^ jArr2[5], jArr3, 9);
        l(jArr4, jArr[2] ^ jArr[8], jArr2[2] ^ jArr2[8], jArr3, 10);
        l(jArr4, jArr[3] ^ jArr[7], jArr2[3] ^ jArr2[7], jArr3, 10);
        l(jArr4, jArr[4] ^ jArr[6], jArr2[4] ^ jArr2[6], jArr3, 10);
        l(jArr4, jArr[3] ^ jArr[8], jArr2[3] ^ jArr2[8], jArr3, 11);
        l(jArr4, jArr[4] ^ jArr[7], jArr2[4] ^ jArr2[7], jArr3, 11);
        l(jArr4, jArr[5] ^ jArr[6], jArr2[5] ^ jArr2[6], jArr3, 11);
        l(jArr4, jArr[4] ^ jArr[8], jArr2[4] ^ jArr2[8], jArr3, 12);
        l(jArr4, jArr[5] ^ jArr[7], jArr2[5] ^ jArr2[7], jArr3, 12);
        l(jArr4, jArr[5] ^ jArr[8], jArr2[5] ^ jArr2[8], jArr3, 13);
        l(jArr4, jArr[6] ^ jArr[7], jArr2[6] ^ jArr2[7], jArr3, 13);
        l(jArr4, jArr[6] ^ jArr[8], jArr2[6] ^ jArr2[8], jArr3, 14);
        l(jArr4, jArr[7] ^ jArr[8], jArr2[7] ^ jArr2[8], jArr3, 15);
    }

    protected static void k(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i9 = 56; i9 >= 0; i9 -= 8) {
            for (int i10 = 1; i10 < 9; i10 += 2) {
                int i11 = (int) (jArr[i10] >>> i9);
                c(jArr2, (i11 & 15) * 9, jArr2, (((i11 >>> 4) & 15) + 16) * 9, jArr3, i10 - 1);
            }
            nk.n.N(16, jArr3, 0, 8, 0L);
        }
        for (int i12 = 56; i12 >= 0; i12 -= 8) {
            for (int i13 = 0; i13 < 9; i13 += 2) {
                int i14 = (int) (jArr[i13] >>> i12);
                c(jArr2, (i14 & 15) * 9, jArr2, (((i14 >>> 4) & 15) + 16) * 9, jArr3, i13);
            }
            if (i12 > 0) {
                nk.n.N(18, jArr3, 0, 8, 0L);
            }
        }
    }

    protected static void l(long[] jArr, long j10, long j11, long[] jArr2, int i9) {
        long j12 = j10;
        jArr[1] = j11;
        for (int i10 = 2; i10 < 16; i10 += 2) {
            jArr[i10] = jArr[i10 >>> 1] << 1;
            jArr[i10 + 1] = jArr[i10] ^ j11;
        }
        int i11 = (int) j12;
        long j13 = 0;
        long j14 = jArr[i11 & 15] ^ (jArr[(i11 >>> 4) & 15] << 4);
        int i12 = 56;
        do {
            int i13 = (int) (j12 >>> i12);
            long j15 = (jArr[(i13 >>> 4) & 15] << 4) ^ jArr[i13 & 15];
            j14 ^= j15 << i12;
            j13 ^= j15 >>> (-i12);
            i12 -= 8;
        } while (i12 > 0);
        for (int i14 = 0; i14 < 7; i14++) {
            j12 = (j12 & (-72340172838076674L)) >>> 1;
            j13 ^= ((j11 << i14) >> 63) & j12;
        }
        jArr2[i9] = jArr2[i9] ^ j14;
        int i15 = i9 + 1;
        jArr2[i15] = jArr2[i15] ^ j13;
    }

    protected static void m(long[] jArr, long[] jArr2) {
        nk.b.c(jArr, 0, 9, jArr2, 0);
    }

    public static void n(long[] jArr, long[] jArr2) {
        if (nk.m.g(jArr)) {
            throw new IllegalStateException();
        }
        long[] c10 = nk.m.c();
        long[] c11 = nk.m.c();
        long[] c12 = nk.m.c();
        w(jArr, c12);
        w(c12, c10);
        w(c10, c11);
        o(c10, c11, c10);
        y(c10, 2, c11);
        o(c10, c11, c10);
        o(c10, c12, c10);
        y(c10, 5, c11);
        o(c10, c11, c10);
        y(c11, 5, c11);
        o(c10, c11, c10);
        y(c10, 15, c11);
        o(c10, c11, c12);
        y(c12, 30, c10);
        y(c10, 30, c11);
        o(c10, c11, c10);
        y(c10, 60, c11);
        o(c10, c11, c10);
        y(c11, 60, c11);
        o(c10, c11, c10);
        y(c10, 180, c11);
        o(c10, c11, c10);
        y(c11, 180, c11);
        o(c10, c11, c10);
        o(c10, c12, jArr2);
    }

    public static void o(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] d10 = nk.m.d();
        j(jArr, jArr2, d10);
        t(d10, jArr3);
    }

    public static void p(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] d10 = nk.m.d();
        j(jArr, jArr2, d10);
        e(jArr3, d10, jArr3);
    }

    public static void q(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] d10 = nk.m.d();
        k(jArr, jArr2, d10);
        t(d10, jArr3);
    }

    public static void r(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] d10 = nk.m.d();
        k(jArr, jArr2, d10);
        e(jArr3, d10, jArr3);
    }

    public static long[] s(long[] jArr) {
        long[] jArr2 = new long[288];
        int i9 = 0;
        System.arraycopy(jArr, 0, jArr2, 9, 9);
        int i10 = 7;
        while (i10 > 0) {
            int i11 = i9 + 18;
            nk.n.K(9, jArr2, i11 >>> 1, 0L, jArr2, i11);
            u(jArr2, i11);
            a(jArr2, 9, jArr2, i11, jArr2, i11 + 9);
            i10--;
            i9 = i11;
        }
        nk.n.O(144, jArr2, 0, 4, 0L, jArr2, 144);
        return jArr2;
    }

    public static void t(long[] jArr, long[] jArr2) {
        long j10 = jArr[9];
        long j11 = jArr[17];
        long j12 = (((j10 ^ (j11 >>> 59)) ^ (j11 >>> 57)) ^ (j11 >>> 54)) ^ (j11 >>> 49);
        long j13 = (j11 << 15) ^ (((jArr[8] ^ (j11 << 5)) ^ (j11 << 7)) ^ (j11 << 10));
        for (int i9 = 16; i9 >= 10; i9--) {
            long j14 = jArr[i9];
            jArr2[i9 - 8] = (((j13 ^ (j14 >>> 59)) ^ (j14 >>> 57)) ^ (j14 >>> 54)) ^ (j14 >>> 49);
            j13 = (((jArr[i9 - 9] ^ (j14 << 5)) ^ (j14 << 7)) ^ (j14 << 10)) ^ (j14 << 15);
        }
        jArr2[1] = (((j13 ^ (j12 >>> 59)) ^ (j12 >>> 57)) ^ (j12 >>> 54)) ^ (j12 >>> 49);
        long j15 = (j12 << 15) ^ (((jArr[0] ^ (j12 << 5)) ^ (j12 << 7)) ^ (j12 << 10));
        long j16 = jArr2[8];
        long j17 = j16 >>> 59;
        jArr2[0] = (((j15 ^ j17) ^ (j17 << 2)) ^ (j17 << 5)) ^ (j17 << 10);
        jArr2[8] = 576460752303423487L & j16;
    }

    public static void u(long[] jArr, int i9) {
        int i10 = i9 + 8;
        long j10 = jArr[i10];
        long j11 = j10 >>> 59;
        jArr[i9] = ((j11 << 10) ^ (((j11 << 2) ^ j11) ^ (j11 << 5))) ^ jArr[i9];
        jArr[i10] = j10 & 576460752303423487L;
    }

    public static void v(long[] jArr, long[] jArr2) {
        long[] c10 = nk.m.c();
        long[] c11 = nk.m.c();
        int i9 = 0;
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = i9 + 1;
            long f10 = nk.b.f(jArr[i9]);
            i9 = i11 + 1;
            long f11 = nk.b.f(jArr[i11]);
            c10[i10] = (4294967295L & f10) | (f11 << 32);
            c11[i10] = (f10 >>> 32) | ((-4294967296L) & f11);
        }
        long f12 = nk.b.f(jArr[i9]);
        c10[4] = 4294967295L & f12;
        c11[4] = f12 >>> 32;
        o(c11, f41596a, jArr2);
        b(jArr2, c10, jArr2);
    }

    public static void w(long[] jArr, long[] jArr2) {
        long[] d10 = nk.m.d();
        m(jArr, d10);
        t(d10, jArr2);
    }

    public static void x(long[] jArr, long[] jArr2) {
        long[] d10 = nk.m.d();
        m(jArr, d10);
        e(jArr2, d10, jArr2);
    }

    public static void y(long[] jArr, int i9, long[] jArr2) {
        long[] d10 = nk.m.d();
        m(jArr, d10);
        while (true) {
            t(d10, jArr2);
            i9--;
            if (i9 <= 0) {
                return;
            }
            m(jArr2, d10);
        }
    }

    public static int z(long[] jArr) {
        return ((int) ((jArr[0] ^ (jArr[8] >>> 49)) ^ (jArr[8] >>> 57))) & 1;
    }
}
