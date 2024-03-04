package ik;

import androidx.core.app.FrameMetricsAggregator;
import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class r0 {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f41597a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, FrameMetricsAggregator.EVERY_DURATION};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        int a10 = nk.n.a(16, iArr, iArr2, iArr3) + iArr[16] + iArr2[16];
        if (a10 > 511 || (a10 == 511 && nk.n.o(16, iArr3, f41597a))) {
            a10 = (a10 + nk.n.v(16, iArr3)) & FrameMetricsAggregator.EVERY_DURATION;
        }
        iArr3[16] = a10;
    }

    public static void b(int[] iArr, int[] iArr2) {
        int w6 = nk.n.w(16, iArr, iArr2) + iArr[16];
        if (w6 > 511 || (w6 == 511 && nk.n.o(16, iArr2, f41597a))) {
            w6 = (w6 + nk.n.v(16, iArr2)) & FrameMetricsAggregator.EVERY_DURATION;
        }
        iArr2[16] = w6;
    }

    public static int[] c(BigInteger bigInteger) {
        int[] r10 = nk.n.r(521, bigInteger);
        if (nk.n.o(17, r10, f41597a)) {
            nk.n.V(17, r10);
        }
        return r10;
    }

    protected static void d(int[] iArr, int[] iArr2, int[] iArr3) {
        nk.l.a(iArr, iArr2, iArr3);
        int i9 = iArr[16];
        int i10 = iArr2[16];
        iArr3[32] = nk.n.C(16, i9, iArr2, i10, iArr, iArr3, 16) + (i9 * i10);
    }

    protected static void e(int[] iArr, int[] iArr2) {
        nk.l.b(iArr, iArr2);
        int i9 = iArr[16];
        iArr2[32] = nk.n.D(16, i9 << 1, iArr, 0, iArr2, 16) + (i9 * i9);
    }

    public static void f(int[] iArr, int[] iArr2) {
        nk.c.c(f41597a, iArr, iArr2);
    }

    public static int g(int[] iArr) {
        int i9 = 0;
        for (int i10 = 0; i10 < 17; i10++) {
            i9 |= iArr[i10];
        }
        return (((i9 >>> 1) | (i9 & 1)) - 1) >> 31;
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] k10 = nk.n.k(33);
        d(iArr, iArr2, k10);
        l(k10, iArr3);
    }

    public static void i(int[] iArr, int[] iArr2) {
        if (g(iArr) == 0) {
            nk.n.P(17, f41597a, iArr, iArr2);
            return;
        }
        int[] iArr3 = f41597a;
        nk.n.P(17, iArr3, iArr3, iArr2);
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[68];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.g.f(bArr, 0, iArr, 0, 17);
            iArr[16] = iArr[16] & FrameMetricsAggregator.EVERY_DURATION;
        } while (nk.n.B(17, iArr, f41597a) == 0);
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        do {
            j(secureRandom, iArr);
        } while (g(iArr) != 0);
    }

    public static void l(int[] iArr, int[] iArr2) {
        int i9 = iArr[32];
        int G = (nk.n.G(16, iArr, 16, 9, i9, iArr2, 0) >>> 23) + (i9 >>> 9) + nk.n.e(16, iArr, iArr2);
        if (G > 511 || (G == 511 && nk.n.o(16, iArr2, f41597a))) {
            G = (G + nk.n.v(16, iArr2)) & FrameMetricsAggregator.EVERY_DURATION;
        }
        iArr2[16] = G;
    }

    public static void m(int[] iArr) {
        int i9 = iArr[16];
        int g10 = nk.n.g(16, i9 >>> 9, iArr) + (i9 & FrameMetricsAggregator.EVERY_DURATION);
        if (g10 > 511 || (g10 == 511 && nk.n.o(16, iArr, f41597a))) {
            g10 = (g10 + nk.n.v(16, iArr)) & FrameMetricsAggregator.EVERY_DURATION;
        }
        iArr[16] = g10;
    }

    public static void n(int[] iArr, int[] iArr2) {
        int[] k10 = nk.n.k(33);
        e(iArr, k10);
        l(k10, iArr2);
    }

    public static void o(int[] iArr, int i9, int[] iArr2) {
        int[] k10 = nk.n.k(33);
        e(iArr, k10);
        while (true) {
            l(k10, iArr2);
            i9--;
            if (i9 <= 0) {
                return;
            }
            e(iArr2, k10);
        }
    }

    public static void p(int[] iArr, int[] iArr2, int[] iArr3) {
        int P = (nk.n.P(16, iArr, iArr2, iArr3) + iArr[16]) - iArr2[16];
        if (P < 0) {
            P = (P + nk.n.m(16, iArr3)) & FrameMetricsAggregator.EVERY_DURATION;
        }
        iArr3[16] = P;
    }

    public static void q(int[] iArr, int[] iArr2) {
        int i9 = iArr[16];
        iArr2[16] = (nk.n.J(16, iArr, i9 << 23, iArr2) | (i9 << 1)) & FrameMetricsAggregator.EVERY_DURATION;
    }
}
