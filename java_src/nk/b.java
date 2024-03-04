package nk;

import androidx.core.view.MotionEventCompat;
/* loaded from: classes7.dex */
public class b {
    public static long a(int i9) {
        int a10 = a.a(a.a(a.a(a.a(i9, MotionEventCompat.ACTION_POINTER_INDEX_MASK, 8), 15728880, 4), 202116108, 2), 572662306, 1);
        return (((a10 >>> 1) & 1431655765) << 32) | (1431655765 & a10);
    }

    public static void b(long j10, long[] jArr, int i9) {
        long b10 = a.b(a.b(a.b(a.b(a.b(j10, 4294901760L, 16), 280375465148160L, 8), 67555025218437360L, 4), 868082074056920076L, 2), 2459565876494606882L, 1);
        jArr[i9] = b10 & 6148914691236517205L;
        jArr[i9 + 1] = (b10 >>> 1) & 6148914691236517205L;
    }

    public static void c(long[] jArr, int i9, int i10, long[] jArr2, int i11) {
        for (int i12 = 0; i12 < i10; i12++) {
            b(jArr[i9 + i12], jArr2, i11);
            i11 += 2;
        }
    }

    public static int d(int i9) {
        int i10 = i9 & 255;
        int i11 = (i10 | (i10 << 4)) & 3855;
        int i12 = (i11 | (i11 << 2)) & 13107;
        return (i12 | (i12 << 1)) & 21845;
    }

    public static int e(int i9) {
        return a.a(a.a(a.a(a.a(i9, 11141290, 7), 52428, 14), 15728880, 4), MotionEventCompat.ACTION_POINTER_INDEX_MASK, 8);
    }

    public static long f(long j10) {
        return a.b(a.b(a.b(a.b(a.b(j10, 2459565876494606882L, 1), 868082074056920076L, 2), 67555025218437360L, 4), 280375465148160L, 8), 4294901760L, 16);
    }
}
