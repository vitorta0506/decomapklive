package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.l0;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.vk.api.sdk.exceptions.VKApiCodes;
import java.nio.ByteBuffer;
import kotlin.UByte;
import okio.Utf8;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f5455a = {1, 2, 3, 6};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f5456b = {48000, 44100, 32000};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f5457c = {24000, 22050, 16000};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f5458d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f5459e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f5460f = {69, 87, 104, 121, TPOptionalID.OPTION_ID_BEFORE_LONG_BUFFER_STRATEGY, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, VKApiCodes.CODE_ANONYM_TOKEN_EXPIRED, 1253, 1393};

    /* renamed from: com.google.android.exoplayer2.audio.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0076b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final String f5461a;

        /* renamed from: b  reason: collision with root package name */
        public final int f5462b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5463c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5464d;

        /* renamed from: e  reason: collision with root package name */
        public final int f5465e;

        /* renamed from: f  reason: collision with root package name */
        public final int f5466f;

        private C0076b(@Nullable String str, int i9, int i10, int i11, int i12, int i13) {
            this.f5461a = str;
            this.f5462b = i9;
            this.f5464d = i10;
            this.f5463c = i11;
            this.f5465e = i12;
            this.f5466f = i13;
        }
    }

    public static int a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit() - 10;
        for (int i9 = position; i9 <= limit; i9++) {
            if ((l0.F(byteBuffer, i9 + 4) & (-2)) == -126718022) {
                return i9 - position;
            }
        }
        return -1;
    }

    private static int b(int i9, int i10) {
        int i11 = i10 / 2;
        if (i9 >= 0) {
            int[] iArr = f5456b;
            if (i9 >= iArr.length || i10 < 0) {
                return -1;
            }
            int[] iArr2 = f5460f;
            if (i11 >= iArr2.length) {
                return -1;
            }
            int i12 = iArr[i9];
            if (i12 == 44100) {
                return (iArr2[i11] + (i10 % 2)) * 2;
            }
            int i13 = f5459e[i11];
            return i12 == 32000 ? i13 * 6 : i13 * 4;
        }
        return -1;
    }

    public static k1 c(com.google.android.exoplayer2.util.b0 b0Var, String str, String str2, @Nullable DrmInitData drmInitData) {
        int i9 = f5456b[(b0Var.D() & 192) >> 6];
        int D = b0Var.D();
        int i10 = f5458d[(D & 56) >> 3];
        if ((D & 4) != 0) {
            i10++;
        }
        return new k1.b().S(str).e0("audio/ac3").H(i10).f0(i9).M(drmInitData).V(str2).E();
    }

    public static int d(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return f5455a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static C0076b e(com.google.android.exoplayer2.util.a0 a0Var) {
        String str;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int h10;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int e10 = a0Var.e();
        a0Var.r(40);
        boolean z10 = a0Var.h(5) > 10;
        a0Var.p(e10);
        int i19 = -1;
        if (z10) {
            a0Var.r(16);
            int h11 = a0Var.h(2);
            if (h11 == 0) {
                i19 = 0;
            } else if (h11 == 1) {
                i19 = 1;
            } else if (h11 == 2) {
                i19 = 2;
            }
            a0Var.r(3);
            int h12 = (a0Var.h(11) + 1) * 2;
            int h13 = a0Var.h(2);
            if (h13 == 3) {
                i15 = f5457c[a0Var.h(2)];
                h10 = 3;
                i14 = 6;
            } else {
                h10 = a0Var.h(2);
                i14 = f5455a[h10];
                i15 = f5456b[h13];
            }
            int i20 = i14 * 256;
            int h14 = a0Var.h(3);
            boolean g10 = a0Var.g();
            int i21 = f5458d[h14] + (g10 ? 1 : 0);
            a0Var.r(10);
            if (a0Var.g()) {
                a0Var.r(8);
            }
            if (h14 == 0) {
                a0Var.r(5);
                if (a0Var.g()) {
                    a0Var.r(8);
                }
            }
            if (i19 == 1 && a0Var.g()) {
                a0Var.r(16);
            }
            if (a0Var.g()) {
                if (h14 > 2) {
                    a0Var.r(2);
                }
                if ((h14 & 1) == 0 || h14 <= 2) {
                    i17 = 6;
                } else {
                    i17 = 6;
                    a0Var.r(6);
                }
                if ((h14 & 4) != 0) {
                    a0Var.r(i17);
                }
                if (g10 && a0Var.g()) {
                    a0Var.r(5);
                }
                if (i19 == 0) {
                    if (a0Var.g()) {
                        i18 = 6;
                        a0Var.r(6);
                    } else {
                        i18 = 6;
                    }
                    if (h14 == 0 && a0Var.g()) {
                        a0Var.r(i18);
                    }
                    if (a0Var.g()) {
                        a0Var.r(i18);
                    }
                    int h15 = a0Var.h(2);
                    if (h15 == 1) {
                        a0Var.r(5);
                    } else if (h15 == 2) {
                        a0Var.r(12);
                    } else if (h15 == 3) {
                        int h16 = a0Var.h(5);
                        if (a0Var.g()) {
                            a0Var.r(5);
                            if (a0Var.g()) {
                                a0Var.r(4);
                            }
                            if (a0Var.g()) {
                                a0Var.r(4);
                            }
                            if (a0Var.g()) {
                                a0Var.r(4);
                            }
                            if (a0Var.g()) {
                                a0Var.r(4);
                            }
                            if (a0Var.g()) {
                                a0Var.r(4);
                            }
                            if (a0Var.g()) {
                                a0Var.r(4);
                            }
                            if (a0Var.g()) {
                                a0Var.r(4);
                            }
                            if (a0Var.g()) {
                                if (a0Var.g()) {
                                    a0Var.r(4);
                                }
                                if (a0Var.g()) {
                                    a0Var.r(4);
                                }
                            }
                        }
                        if (a0Var.g()) {
                            a0Var.r(5);
                            if (a0Var.g()) {
                                a0Var.r(7);
                                if (a0Var.g()) {
                                    a0Var.r(8);
                                }
                            }
                        }
                        a0Var.r((h16 + 2) * 8);
                        a0Var.c();
                    }
                    if (h14 < 2) {
                        if (a0Var.g()) {
                            a0Var.r(14);
                        }
                        if (h14 == 0 && a0Var.g()) {
                            a0Var.r(14);
                        }
                    }
                    if (a0Var.g()) {
                        if (h10 == 0) {
                            a0Var.r(5);
                        } else {
                            for (int i22 = 0; i22 < i14; i22++) {
                                if (a0Var.g()) {
                                    a0Var.r(5);
                                }
                            }
                        }
                    }
                }
            }
            if (a0Var.g()) {
                a0Var.r(5);
                if (h14 == 2) {
                    a0Var.r(4);
                }
                if (h14 >= 6) {
                    a0Var.r(2);
                }
                if (a0Var.g()) {
                    a0Var.r(8);
                }
                if (h14 == 0 && a0Var.g()) {
                    a0Var.r(8);
                }
                if (h13 < 3) {
                    a0Var.q();
                }
            }
            if (i19 == 0 && h10 != 3) {
                a0Var.q();
            }
            if (i19 == 2 && (h10 == 3 || a0Var.g())) {
                i16 = 6;
                a0Var.r(6);
            } else {
                i16 = 6;
            }
            str = (a0Var.g() && a0Var.h(i16) == 1 && a0Var.h(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i12 = i19;
            i13 = i20;
            i9 = h12;
            i10 = i15;
            i11 = i21;
        } else {
            a0Var.r(32);
            int h17 = a0Var.h(2);
            String str2 = h17 == 3 ? null : "audio/ac3";
            int b10 = b(h17, a0Var.h(6));
            a0Var.r(8);
            int h18 = a0Var.h(3);
            if ((h18 & 1) != 0 && h18 != 1) {
                a0Var.r(2);
            }
            if ((h18 & 4) != 0) {
                a0Var.r(2);
            }
            if (h18 == 2) {
                a0Var.r(2);
            }
            int[] iArr = f5456b;
            str = str2;
            i9 = b10;
            i10 = h17 < iArr.length ? iArr[h17] : -1;
            i11 = f5458d[h18] + (a0Var.g() ? 1 : 0);
            i12 = -1;
            i13 = 1536;
        }
        return new C0076b(str, i12, i11, i10, i9, i13);
    }

    public static int f(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & UByte.MAX_VALUE) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        return b((bArr[4] & 192) >> 6, bArr[4] & Utf8.REPLACEMENT_BYTE);
    }

    public static k1 g(com.google.android.exoplayer2.util.b0 b0Var, String str, String str2, @Nullable DrmInitData drmInitData) {
        b0Var.Q(2);
        int i9 = f5456b[(b0Var.D() & 192) >> 6];
        int D = b0Var.D();
        int i10 = f5458d[(D & 14) >> 1];
        if ((D & 1) != 0) {
            i10++;
        }
        if (((b0Var.D() & 30) >> 1) > 0 && (2 & b0Var.D()) != 0) {
            i10 += 2;
        }
        return new k1.b().S(str).e0((b0Var.a() <= 0 || (b0Var.D() & 1) == 0) ? "audio/eac3" : "audio/eac3-joc").H(i10).f0(i9).M(drmInitData).V(str2).E();
    }

    public static int h(ByteBuffer byteBuffer, int i9) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i9) + ((byteBuffer.get((byteBuffer.position() + i9) + 7) & UByte.MAX_VALUE) == 187 ? 9 : 8)) >> 4) & 7);
    }

    public static int i(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
            return 40 << ((bArr[(bArr[7] & UByte.MAX_VALUE) == 187 ? '\t' : '\b'] >> 4) & 7);
        }
        return 0;
    }
}
