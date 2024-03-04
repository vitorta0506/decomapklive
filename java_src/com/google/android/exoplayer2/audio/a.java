package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.ParserException;
import com.guochao.faceshow.component.f2fmatch.utils.SpeechToTextUtilsKt;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f5437a = {96000, 88200, SpeechToTextUtilsKt.BIT_RATE, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f5438b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f5439a;

        /* renamed from: b  reason: collision with root package name */
        public final int f5440b;

        /* renamed from: c  reason: collision with root package name */
        public final String f5441c;

        private b(int i9, int i10, String str) {
            this.f5439a = i9;
            this.f5440b = i10;
            this.f5441c = str;
        }
    }

    public static byte[] a(int i9, int i10, int i11) {
        return new byte[]{(byte) (((i9 << 3) & 248) | ((i10 >> 1) & 7)), (byte) (((i10 << 7) & 128) | ((i11 << 3) & 120))};
    }

    private static int b(com.google.android.exoplayer2.util.a0 a0Var) {
        int h10 = a0Var.h(5);
        return h10 == 31 ? a0Var.h(6) + 32 : h10;
    }

    private static int c(com.google.android.exoplayer2.util.a0 a0Var) throws ParserException {
        int h10 = a0Var.h(4);
        if (h10 == 15) {
            return a0Var.h(24);
        }
        if (h10 < 13) {
            return f5437a[h10];
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static b d(com.google.android.exoplayer2.util.a0 a0Var, boolean z10) throws ParserException {
        int b10 = b(a0Var);
        int c10 = c(a0Var);
        int h10 = a0Var.h(4);
        String str = "mp4a.40." + b10;
        if (b10 == 5 || b10 == 29) {
            c10 = c(a0Var);
            b10 = b(a0Var);
            if (b10 == 22) {
                h10 = a0Var.h(4);
            }
        }
        if (z10) {
            if (b10 != 1 && b10 != 2 && b10 != 3 && b10 != 4 && b10 != 6 && b10 != 7 && b10 != 17) {
                switch (b10) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw ParserException.createForUnsupportedContainerFeature("Unsupported audio object type: " + b10);
                }
            }
            f(a0Var, b10, h10);
            switch (b10) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int h11 = a0Var.h(2);
                    if (h11 == 2 || h11 == 3) {
                        throw ParserException.createForUnsupportedContainerFeature("Unsupported epConfig: " + h11);
                    }
            }
        }
        int i9 = f5438b[h10];
        if (i9 != -1) {
            return new b(c10, i9, str);
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static b e(byte[] bArr) throws ParserException {
        return d(new com.google.android.exoplayer2.util.a0(bArr), false);
    }

    private static void f(com.google.android.exoplayer2.util.a0 a0Var, int i9, int i10) {
        if (a0Var.g()) {
            com.google.android.exoplayer2.util.r.i("AacUtil", "Unexpected frameLengthFlag = 1");
        }
        if (a0Var.g()) {
            a0Var.r(14);
        }
        boolean g10 = a0Var.g();
        if (i10 == 0) {
            throw new UnsupportedOperationException();
        }
        if (i9 == 6 || i9 == 20) {
            a0Var.r(3);
        }
        if (g10) {
            if (i9 == 22) {
                a0Var.r(16);
            }
            if (i9 == 17 || i9 == 19 || i9 == 20 || i9 == 23) {
                a0Var.r(3);
            }
            a0Var.r(1);
        }
    }
}
