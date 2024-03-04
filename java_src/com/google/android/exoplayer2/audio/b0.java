package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.guochao.faceshow.component.f2fmatch.utils.SpeechToTextUtilsKt;
/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f5467a = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f5468b = {44100, 48000, 32000};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f5469c = {32000, SpeechToTextUtilsKt.BIT_RATE, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f5470d = {32000, 48000, 56000, SpeechToTextUtilsKt.BIT_RATE, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f5471e = {32000, 48000, 56000, SpeechToTextUtilsKt.BIT_RATE, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f5472f = {32000, 40000, 48000, 56000, SpeechToTextUtilsKt.BIT_RATE, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f5473g = {8000, 16000, 24000, 32000, 40000, 48000, 56000, SpeechToTextUtilsKt.BIT_RATE, 80000, 96000, 112000, 128000, 144000, 160000};

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f5474a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public String f5475b;

        /* renamed from: c  reason: collision with root package name */
        public int f5476c;

        /* renamed from: d  reason: collision with root package name */
        public int f5477d;

        /* renamed from: e  reason: collision with root package name */
        public int f5478e;

        /* renamed from: f  reason: collision with root package name */
        public int f5479f;

        /* renamed from: g  reason: collision with root package name */
        public int f5480g;

        public boolean a(int i9) {
            int i10;
            int i11;
            int i12;
            int i13;
            if (!b0.l(i9) || (i10 = (i9 >>> 19) & 3) == 1 || (i11 = (i9 >>> 17) & 3) == 0 || (i12 = (i9 >>> 12) & 15) == 0 || i12 == 15 || (i13 = (i9 >>> 10) & 3) == 3) {
                return false;
            }
            this.f5474a = i10;
            this.f5475b = b0.f5467a[3 - i11];
            int i14 = b0.f5468b[i13];
            this.f5477d = i14;
            if (i10 == 2) {
                this.f5477d = i14 / 2;
            } else if (i10 == 0) {
                this.f5477d = i14 / 4;
            }
            int i15 = (i9 >>> 9) & 1;
            this.f5480g = b0.k(i10, i11);
            if (i11 == 3) {
                int i16 = i10 == 3 ? b0.f5469c[i12 - 1] : b0.f5470d[i12 - 1];
                this.f5479f = i16;
                this.f5476c = (((i16 * 12) / this.f5477d) + i15) * 4;
            } else {
                if (i10 == 3) {
                    int i17 = i11 == 2 ? b0.f5471e[i12 - 1] : b0.f5472f[i12 - 1];
                    this.f5479f = i17;
                    this.f5476c = ((i17 * 144) / this.f5477d) + i15;
                } else {
                    int i18 = b0.f5473g[i12 - 1];
                    this.f5479f = i18;
                    this.f5476c = (((i11 == 1 ? 72 : 144) * i18) / this.f5477d) + i15;
                }
            }
            this.f5478e = ((i9 >> 6) & 3) == 3 ? 1 : 2;
            return true;
        }
    }

    public static int j(int i9) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        if (!l(i9) || (i10 = (i9 >>> 19) & 3) == 1 || (i11 = (i9 >>> 17) & 3) == 0 || (i12 = (i9 >>> 12) & 15) == 0 || i12 == 15 || (i13 = (i9 >>> 10) & 3) == 3) {
            return -1;
        }
        int i15 = f5468b[i13];
        if (i10 == 2) {
            i15 /= 2;
        } else if (i10 == 0) {
            i15 /= 4;
        }
        int i16 = (i9 >>> 9) & 1;
        if (i11 == 3) {
            return ((((i10 == 3 ? f5469c[i12 - 1] : f5470d[i12 - 1]) * 12) / i15) + i16) * 4;
        }
        if (i10 == 3) {
            i14 = i11 == 2 ? f5471e[i12 - 1] : f5472f[i12 - 1];
        } else {
            i14 = f5473g[i12 - 1];
        }
        if (i10 == 3) {
            return ((i14 * 144) / i15) + i16;
        }
        return (((i11 == 1 ? 72 : 144) * i14) / i15) + i16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(int i9, int i10) {
        if (i10 == 1) {
            return i9 == 3 ? 1152 : 576;
        } else if (i10 != 2) {
            if (i10 == 3) {
                return 384;
            }
            throw new IllegalArgumentException();
        } else {
            return 1152;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(int i9) {
        return (i9 & (-2097152)) == -2097152;
    }

    public static int m(int i9) {
        int i10;
        int i11;
        if (!l(i9) || (i10 = (i9 >>> 19) & 3) == 1 || (i11 = (i9 >>> 17) & 3) == 0) {
            return -1;
        }
        int i12 = (i9 >>> 12) & 15;
        int i13 = (i9 >>> 10) & 3;
        if (i12 == 0 || i12 == 15 || i13 == 3) {
            return -1;
        }
        return k(i10, i11);
    }
}
