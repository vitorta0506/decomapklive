package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.k1;
import com.tencent.ugc.UGCTransitionRules;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f5651a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f5652b = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f5653c = {64, 112, 128, 192, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, UGCTransitionRules.DEFAULT_IMAGE_HEIGHT, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(byte[] r7) {
        /*
            r0 = 0
            r1 = r7[r0]
            r2 = -2
            r3 = 6
            r4 = 7
            r5 = 1
            r6 = 4
            if (r1 == r2) goto L4a
            r2 = -1
            if (r1 == r2) goto L32
            r2 = 31
            if (r1 == r2) goto L21
            r1 = 5
            r1 = r7[r1]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            r7 = r7[r4]
            goto L58
        L21:
            r0 = r7[r3]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r4]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 8
            r7 = r7[r1]
            goto L42
        L32:
            r0 = r7[r4]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r3]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 9
            r7 = r7[r1]
        L42:
            r7 = r7 & 60
            int r7 = r7 >> 2
            r7 = r7 | r0
            int r7 = r7 + r5
            r0 = 1
            goto L5d
        L4a:
            r1 = r7[r6]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r4]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            r7 = r7[r3]
        L58:
            r7 = r7 & 240(0xf0, float:3.36E-43)
            int r7 = r7 >> r6
            r7 = r7 | r1
            int r7 = r7 + r5
        L5d:
            if (r0 == 0) goto L63
            int r7 = r7 * 16
            int r7 = r7 / 14
        L63:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.y.a(byte[]):int");
    }

    private static com.google.android.exoplayer2.util.a0 b(byte[] bArr) {
        if (bArr[0] == Byte.MAX_VALUE) {
            return new com.google.android.exoplayer2.util.a0(bArr);
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        if (c(copyOf)) {
            for (int i9 = 0; i9 < copyOf.length - 1; i9 += 2) {
                byte b10 = copyOf[i9];
                int i10 = i9 + 1;
                copyOf[i9] = copyOf[i10];
                copyOf[i10] = b10;
            }
        }
        com.google.android.exoplayer2.util.a0 a0Var = new com.google.android.exoplayer2.util.a0(copyOf);
        if (copyOf[0] == 31) {
            com.google.android.exoplayer2.util.a0 a0Var2 = new com.google.android.exoplayer2.util.a0(copyOf);
            while (a0Var2.b() >= 16) {
                a0Var2.r(2);
                a0Var.f(a0Var2.h(14), 14);
            }
        }
        a0Var.n(copyOf);
        return a0Var;
    }

    private static boolean c(byte[] bArr) {
        return bArr[0] == -2 || bArr[0] == -1;
    }

    public static boolean d(int i9) {
        return i9 == 2147385345 || i9 == -25230976 || i9 == 536864768 || i9 == -14745368;
    }

    public static int e(ByteBuffer byteBuffer) {
        int i9;
        byte b10;
        int i10;
        byte b11;
        int position = byteBuffer.position();
        byte b12 = byteBuffer.get(position);
        if (b12 != -2) {
            if (b12 == -1) {
                i9 = (byteBuffer.get(position + 4) & 7) << 4;
                b11 = byteBuffer.get(position + 7);
            } else if (b12 != 31) {
                i9 = (byteBuffer.get(position + 4) & 1) << 6;
                b10 = byteBuffer.get(position + 5);
            } else {
                i9 = (byteBuffer.get(position + 5) & 7) << 4;
                b11 = byteBuffer.get(position + 6);
            }
            i10 = b11 & 60;
            return (((i10 >> 2) | i9) + 1) * 32;
        }
        i9 = (byteBuffer.get(position + 5) & 1) << 6;
        b10 = byteBuffer.get(position + 4);
        i10 = b10 & 252;
        return (((i10 >> 2) | i9) + 1) * 32;
    }

    public static int f(byte[] bArr) {
        int i9;
        byte b10;
        int i10;
        byte b11;
        byte b12 = bArr[0];
        if (b12 != -2) {
            if (b12 == -1) {
                i9 = (bArr[4] & 7) << 4;
                b11 = bArr[7];
            } else if (b12 != 31) {
                i9 = (bArr[4] & 1) << 6;
                b10 = bArr[5];
            } else {
                i9 = (bArr[5] & 7) << 4;
                b11 = bArr[6];
            }
            i10 = b11 & 60;
            return (((i10 >> 2) | i9) + 1) * 32;
        }
        i9 = (bArr[5] & 1) << 6;
        b10 = bArr[4];
        i10 = b10 & 252;
        return (((i10 >> 2) | i9) + 1) * 32;
    }

    public static k1 g(byte[] bArr, @Nullable String str, @Nullable String str2, @Nullable DrmInitData drmInitData) {
        com.google.android.exoplayer2.util.a0 b10 = b(bArr);
        b10.r(60);
        int i9 = f5651a[b10.h(6)];
        int i10 = f5652b[b10.h(4)];
        int h10 = b10.h(5);
        int[] iArr = f5653c;
        int i11 = h10 >= iArr.length ? -1 : (iArr[h10] * 1000) / 2;
        b10.r(10);
        return new k1.b().S(str).e0("audio/vnd.dts").G(i11).H(i9 + (b10.h(2) > 0 ? 1 : 0)).f0(i10).M(drmInitData).V(str2).E();
    }
}
