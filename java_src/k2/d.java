package k2;

import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
final class d {

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f53380a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f53381b;

        /* renamed from: c  reason: collision with root package name */
        public final int f53382c;

        /* renamed from: d  reason: collision with root package name */
        public final long[] f53383d;

        /* renamed from: e  reason: collision with root package name */
        public final int[] f53384e;

        /* renamed from: f  reason: collision with root package name */
        public final long f53385f;

        private b(long[] jArr, int[] iArr, int i9, long[] jArr2, int[] iArr2, long j10) {
            this.f53380a = jArr;
            this.f53381b = iArr;
            this.f53382c = i9;
            this.f53383d = jArr2;
            this.f53384e = iArr2;
            this.f53385f = j10;
        }
    }

    public static b a(int i9, long[] jArr, int[] iArr, long j10) {
        int i10 = 8192 / i9;
        int i11 = 0;
        for (int i12 : iArr) {
            i11 += l0.l(i12, i10);
        }
        long[] jArr2 = new long[i11];
        int[] iArr2 = new int[i11];
        long[] jArr3 = new long[i11];
        int[] iArr3 = new int[i11];
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < iArr.length; i16++) {
            int i17 = iArr[i16];
            long j11 = jArr[i16];
            while (i17 > 0) {
                int min = Math.min(i10, i17);
                jArr2[i14] = j11;
                iArr2[i14] = i9 * min;
                i15 = Math.max(i15, iArr2[i14]);
                jArr3[i14] = i13 * j10;
                iArr3[i14] = 1;
                j11 += iArr2[i14];
                i13 += min;
                i17 -= min;
                i14++;
            }
        }
        return new b(jArr2, iArr2, i15, jArr3, iArr3, j10 * i13);
    }
}
