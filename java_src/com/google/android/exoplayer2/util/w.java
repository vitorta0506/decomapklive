package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import com.tencent.thumbplayer.core.common.TPDecoderType;
import java.nio.ByteBuffer;
import java.util.Arrays;
import kotlin.UByte;
/* loaded from: classes2.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f7041a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    public static final float[] f7042b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c  reason: collision with root package name */
    private static final Object f7043c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static int[] f7044d = new int[10];

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f7045a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f7046b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7047c;

        /* renamed from: d  reason: collision with root package name */
        public final int f7048d;

        /* renamed from: e  reason: collision with root package name */
        public final int[] f7049e;

        /* renamed from: f  reason: collision with root package name */
        public final int f7050f;

        /* renamed from: g  reason: collision with root package name */
        public final int f7051g;

        /* renamed from: h  reason: collision with root package name */
        public final int f7052h;

        /* renamed from: i  reason: collision with root package name */
        public final int f7053i;

        /* renamed from: j  reason: collision with root package name */
        public final float f7054j;

        public a(int i9, boolean z10, int i10, int i11, int[] iArr, int i12, int i13, int i14, int i15, float f10) {
            this.f7045a = i9;
            this.f7046b = z10;
            this.f7047c = i10;
            this.f7048d = i11;
            this.f7049e = iArr;
            this.f7050f = i12;
            this.f7051g = i13;
            this.f7052h = i14;
            this.f7053i = i15;
            this.f7054j = f10;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f7055a;

        /* renamed from: b  reason: collision with root package name */
        public final int f7056b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f7057c;

        public b(int i9, int i10, boolean z10) {
            this.f7055a = i9;
            this.f7056b = i10;
            this.f7057c = z10;
        }
    }

    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f7058a;

        /* renamed from: b  reason: collision with root package name */
        public final int f7059b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7060c;

        /* renamed from: d  reason: collision with root package name */
        public final int f7061d;

        /* renamed from: e  reason: collision with root package name */
        public final int f7062e;

        /* renamed from: f  reason: collision with root package name */
        public final int f7063f;

        /* renamed from: g  reason: collision with root package name */
        public final int f7064g;

        /* renamed from: h  reason: collision with root package name */
        public final float f7065h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f7066i;

        /* renamed from: j  reason: collision with root package name */
        public final boolean f7067j;

        /* renamed from: k  reason: collision with root package name */
        public final int f7068k;

        /* renamed from: l  reason: collision with root package name */
        public final int f7069l;

        /* renamed from: m  reason: collision with root package name */
        public final int f7070m;

        /* renamed from: n  reason: collision with root package name */
        public final boolean f7071n;

        public c(int i9, int i10, int i11, int i12, int i13, int i14, int i15, float f10, boolean z10, boolean z11, int i16, int i17, int i18, boolean z12) {
            this.f7058a = i9;
            this.f7059b = i10;
            this.f7060c = i11;
            this.f7061d = i12;
            this.f7062e = i13;
            this.f7063f = i14;
            this.f7064g = i15;
            this.f7065h = f10;
            this.f7066i = z10;
            this.f7067j = z11;
            this.f7068k = i16;
            this.f7069l = i17;
            this.f7070m = i18;
            this.f7071n = z12;
        }
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static void b(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int i11 = i9 + 1;
            if (i11 < position) {
                int i12 = byteBuffer.get(i9) & UByte.MAX_VALUE;
                if (i10 == 3) {
                    if (i12 == 1 && (byteBuffer.get(i11) & 31) == 7) {
                        ByteBuffer duplicate = byteBuffer.duplicate();
                        duplicate.position(i9 - 3);
                        duplicate.limit(position);
                        byteBuffer.position(0);
                        byteBuffer.put(duplicate);
                        return;
                    }
                } else if (i12 == 0) {
                    i10++;
                }
                if (i12 != 0) {
                    i10 = 0;
                }
                i9 = i11;
            } else {
                byteBuffer.clear();
                return;
            }
        }
    }

    public static int c(byte[] bArr, int i9, int i10, boolean[] zArr) {
        int i11 = i10 - i9;
        com.google.android.exoplayer2.util.a.f(i11 >= 0);
        if (i11 == 0) {
            return i10;
        }
        if (zArr[0]) {
            a(zArr);
            return i9 - 3;
        } else if (i11 > 1 && zArr[1] && bArr[i9] == 1) {
            a(zArr);
            return i9 - 2;
        } else if (i11 > 2 && zArr[2] && bArr[i9] == 0 && bArr[i9 + 1] == 1) {
            a(zArr);
            return i9 - 1;
        } else {
            int i12 = i10 - 1;
            int i13 = i9 + 2;
            while (i13 < i12) {
                if ((bArr[i13] & 254) == 0) {
                    int i14 = i13 - 2;
                    if (bArr[i14] == 0 && bArr[i13 - 1] == 0 && bArr[i13] == 1) {
                        a(zArr);
                        return i14;
                    }
                    i13 -= 2;
                }
                i13 += 3;
            }
            zArr[0] = i11 <= 2 ? !(i11 != 2 ? !(zArr[1] && bArr[i12] == 1) : !(zArr[2] && bArr[i10 + (-2)] == 0 && bArr[i12] == 1)) : bArr[i10 + (-3)] == 0 && bArr[i10 + (-2)] == 0 && bArr[i12] == 1;
            zArr[1] = i11 <= 1 ? zArr[2] && bArr[i12] == 0 : bArr[i10 + (-2)] == 0 && bArr[i12] == 0;
            zArr[2] = bArr[i12] == 0;
            return i10;
        }
    }

    private static int d(byte[] bArr, int i9, int i10) {
        while (i9 < i10 - 2) {
            if (bArr[i9] == 0 && bArr[i9 + 1] == 0 && bArr[i9 + 2] == 3) {
                return i9;
            }
            i9++;
        }
        return i10;
    }

    public static int e(byte[] bArr, int i9) {
        return (bArr[i9 + 3] & 126) >> 1;
    }

    public static int f(byte[] bArr, int i9) {
        return bArr[i9 + 3] & 31;
    }

    public static boolean g(@Nullable String str, byte b10) {
        if (TPDecoderType.TP_CODEC_MIMETYPE_AVC.equals(str) && (b10 & 31) == 6) {
            return true;
        }
        return "video/hevc".equals(str) && ((b10 & 126) >> 1) == 39;
    }

    public static a h(byte[] bArr, int i9, int i10) {
        return i(bArr, i9 + 2, i10);
    }

    public static a i(byte[] bArr, int i9, int i10) {
        c0 c0Var = new c0(bArr, i9, i10);
        c0Var.l(4);
        int e10 = c0Var.e(3);
        c0Var.k();
        int e11 = c0Var.e(2);
        boolean d10 = c0Var.d();
        int e12 = c0Var.e(5);
        int i11 = 0;
        for (int i12 = 0; i12 < 32; i12++) {
            if (c0Var.d()) {
                i11 |= 1 << i12;
            }
        }
        int[] iArr = new int[6];
        for (int i13 = 0; i13 < 6; i13++) {
            iArr[i13] = c0Var.e(8);
        }
        int e13 = c0Var.e(8);
        int i14 = 0;
        for (int i15 = 0; i15 < e10; i15++) {
            if (c0Var.d()) {
                i14 += 89;
            }
            if (c0Var.d()) {
                i14 += 8;
            }
        }
        c0Var.l(i14);
        if (e10 > 0) {
            c0Var.l((8 - e10) * 2);
        }
        int h10 = c0Var.h();
        int h11 = c0Var.h();
        if (h11 == 3) {
            c0Var.k();
        }
        int h12 = c0Var.h();
        int h13 = c0Var.h();
        if (c0Var.d()) {
            int h14 = c0Var.h();
            int h15 = c0Var.h();
            int h16 = c0Var.h();
            int h17 = c0Var.h();
            h12 -= ((h11 == 1 || h11 == 2) ? 2 : 1) * (h14 + h15);
            h13 -= (h11 == 1 ? 2 : 1) * (h16 + h17);
        }
        c0Var.h();
        c0Var.h();
        int h18 = c0Var.h();
        for (int i16 = c0Var.d() ? 0 : e10; i16 <= e10; i16++) {
            c0Var.h();
            c0Var.h();
            c0Var.h();
        }
        c0Var.h();
        c0Var.h();
        c0Var.h();
        c0Var.h();
        c0Var.h();
        c0Var.h();
        if (c0Var.d() && c0Var.d()) {
            n(c0Var);
        }
        c0Var.l(2);
        if (c0Var.d()) {
            c0Var.l(8);
            c0Var.h();
            c0Var.h();
            c0Var.k();
        }
        p(c0Var);
        if (c0Var.d()) {
            for (int i17 = 0; i17 < c0Var.h(); i17++) {
                c0Var.l(h18 + 4 + 1);
            }
        }
        c0Var.l(2);
        float f10 = 1.0f;
        if (c0Var.d()) {
            if (c0Var.d()) {
                int e14 = c0Var.e(8);
                if (e14 == 255) {
                    int e15 = c0Var.e(16);
                    int e16 = c0Var.e(16);
                    if (e15 != 0 && e16 != 0) {
                        f10 = e15 / e16;
                    }
                } else {
                    float[] fArr = f7042b;
                    if (e14 < fArr.length) {
                        f10 = fArr[e14];
                    } else {
                        r.i("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + e14);
                    }
                }
            }
            if (c0Var.d()) {
                c0Var.k();
            }
            if (c0Var.d()) {
                c0Var.l(4);
                if (c0Var.d()) {
                    c0Var.l(24);
                }
            }
            if (c0Var.d()) {
                c0Var.h();
                c0Var.h();
            }
            c0Var.k();
            if (c0Var.d()) {
                h13 *= 2;
            }
        }
        return new a(e11, d10, e12, i11, iArr, e13, h10, h12, h13, f10);
    }

    public static b j(byte[] bArr, int i9, int i10) {
        return k(bArr, i9 + 1, i10);
    }

    public static b k(byte[] bArr, int i9, int i10) {
        c0 c0Var = new c0(bArr, i9, i10);
        int h10 = c0Var.h();
        int h11 = c0Var.h();
        c0Var.k();
        return new b(h10, h11, c0Var.d());
    }

    public static c l(byte[] bArr, int i9, int i10) {
        return m(bArr, i9 + 1, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x014b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.util.w.c m(byte[] r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.w.m(byte[], int, int):com.google.android.exoplayer2.util.w$c");
    }

    private static void n(c0 c0Var) {
        for (int i9 = 0; i9 < 4; i9++) {
            int i10 = 0;
            while (i10 < 6) {
                int i11 = 1;
                if (!c0Var.d()) {
                    c0Var.h();
                } else {
                    int min = Math.min(64, 1 << ((i9 << 1) + 4));
                    if (i9 > 1) {
                        c0Var.g();
                    }
                    for (int i12 = 0; i12 < min; i12++) {
                        c0Var.g();
                    }
                }
                if (i9 == 3) {
                    i11 = 3;
                }
                i10 += i11;
            }
        }
    }

    private static void o(c0 c0Var, int i9) {
        int i10 = 8;
        int i11 = 8;
        for (int i12 = 0; i12 < i9; i12++) {
            if (i10 != 0) {
                i10 = ((c0Var.g() + i11) + 256) % 256;
            }
            if (i10 != 0) {
                i11 = i10;
            }
        }
    }

    private static void p(c0 c0Var) {
        int h10 = c0Var.h();
        int[] iArr = new int[0];
        int[] iArr2 = new int[0];
        int i9 = -1;
        int i10 = -1;
        int i11 = 0;
        while (i11 < h10) {
            if (i11 != 0 && c0Var.d()) {
                int i12 = i9 + i10;
                int h11 = (1 - ((c0Var.d() ? 1 : 0) * 2)) * (c0Var.h() + 1);
                int i13 = i12 + 1;
                boolean[] zArr = new boolean[i13];
                for (int i14 = 0; i14 <= i12; i14++) {
                    if (!c0Var.d()) {
                        zArr[i14] = c0Var.d();
                    } else {
                        zArr[i14] = true;
                    }
                }
                int[] iArr3 = new int[i13];
                int[] iArr4 = new int[i13];
                int i15 = 0;
                for (int i16 = i10 - 1; i16 >= 0; i16--) {
                    int i17 = iArr2[i16] + h11;
                    if (i17 < 0 && zArr[i9 + i16]) {
                        iArr3[i15] = i17;
                        i15++;
                    }
                }
                if (h11 < 0 && zArr[i12]) {
                    iArr3[i15] = h11;
                    i15++;
                }
                for (int i18 = 0; i18 < i9; i18++) {
                    int i19 = iArr[i18] + h11;
                    if (i19 < 0 && zArr[i18]) {
                        iArr3[i15] = i19;
                        i15++;
                    }
                }
                int[] copyOf = Arrays.copyOf(iArr3, i15);
                int i20 = 0;
                for (int i21 = i9 - 1; i21 >= 0; i21--) {
                    int i22 = iArr[i21] + h11;
                    if (i22 > 0 && zArr[i21]) {
                        iArr4[i20] = i22;
                        i20++;
                    }
                }
                if (h11 > 0 && zArr[i12]) {
                    iArr4[i20] = h11;
                    i20++;
                }
                for (int i23 = 0; i23 < i10; i23++) {
                    int i24 = iArr2[i23] + h11;
                    if (i24 > 0 && zArr[i9 + i23]) {
                        iArr4[i20] = i24;
                        i20++;
                    }
                }
                iArr2 = Arrays.copyOf(iArr4, i20);
                iArr = copyOf;
                i9 = i15;
                i10 = i20;
            } else {
                int h12 = c0Var.h();
                int h13 = c0Var.h();
                int[] iArr5 = new int[h12];
                for (int i25 = 0; i25 < h12; i25++) {
                    iArr5[i25] = c0Var.h() + 1;
                    c0Var.k();
                }
                int[] iArr6 = new int[h13];
                for (int i26 = 0; i26 < h13; i26++) {
                    iArr6[i26] = c0Var.h() + 1;
                    c0Var.k();
                }
                i9 = h12;
                iArr = iArr5;
                i10 = h13;
                iArr2 = iArr6;
            }
            i11++;
        }
    }

    public static int q(byte[] bArr, int i9) {
        int i10;
        synchronized (f7043c) {
            int i11 = 0;
            int i12 = 0;
            while (i11 < i9) {
                try {
                    i11 = d(bArr, i11, i9);
                    if (i11 < i9) {
                        int[] iArr = f7044d;
                        if (iArr.length <= i12) {
                            f7044d = Arrays.copyOf(iArr, iArr.length * 2);
                        }
                        f7044d[i12] = i11;
                        i11 += 3;
                        i12++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            i10 = i9 - i12;
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < i12; i15++) {
                int i16 = f7044d[i15] - i14;
                System.arraycopy(bArr, i14, bArr, i13, i16);
                int i17 = i13 + i16;
                int i18 = i17 + 1;
                bArr[i17] = 0;
                i13 = i18 + 1;
                bArr[i18] = 0;
                i14 += i16 + 3;
            }
            System.arraycopy(bArr, i14, bArr, i13, i10 - i13);
        }
        return i10;
    }
}
