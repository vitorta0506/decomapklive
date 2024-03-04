package com.google.android.exoplayer2.mediacodec;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.v;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.tencent.thumbplayer.core.common.TPDecoderType;
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public final String f6295a;

    /* renamed from: b  reason: collision with root package name */
    public final String f6296b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6297c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f6298d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f6299e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6300f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f6301g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f6302h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f6303i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f6304j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f6305k;

    @VisibleForTesting
    m(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        this.f6295a = (String) com.google.android.exoplayer2.util.a.e(str);
        this.f6296b = str2;
        this.f6297c = str3;
        this.f6298d = codecCapabilities;
        this.f6302h = z10;
        this.f6303i = z11;
        this.f6304j = z12;
        this.f6299e = z13;
        this.f6300f = z14;
        this.f6301g = z15;
        this.f6305k = v.o(str2);
    }

    private static boolean A(String str, int i9) {
        if ("video/hevc".equals(str) && 2 == i9) {
            String str2 = l0.f6986b;
            if ("sailfish".equals(str2) || "marlin".equals(str2)) {
                return true;
            }
        }
        return false;
    }

    private static final boolean B(String str) {
        return ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(l0.f6986b)) ? false : true;
    }

    public static m C(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        return new m(str, str2, str3, codecCapabilities, z10, z11, z12, (z13 || codecCapabilities == null || !h(codecCapabilities) || z(str)) ? false : true, codecCapabilities != null && s(codecCapabilities), z14 || (codecCapabilities != null && q(codecCapabilities)));
    }

    private static int a(String str, String str2, int i9) {
        int i10;
        if (i9 > 1 || ((l0.f6985a >= 26 && i9 > 0) || "audio/mpeg".equals(str2) || "audio/3gpp".equals(str2) || "audio/amr-wb".equals(str2) || "audio/mp4a-latm".equals(str2) || "audio/vorbis".equals(str2) || "audio/opus".equals(str2) || "audio/raw".equals(str2) || "audio/flac".equals(str2) || "audio/g711-alaw".equals(str2) || "audio/g711-mlaw".equals(str2) || "audio/gsm".equals(str2))) {
            return i9;
        }
        if ("audio/ac3".equals(str2)) {
            i10 = 6;
        } else {
            i10 = "audio/eac3".equals(str2) ? 16 : 30;
        }
        com.google.android.exoplayer2.util.r.i("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + i9 + " to " + i10 + "]");
        return i10;
    }

    @RequiresApi(21)
    private static Point c(MediaCodecInfo.VideoCapabilities videoCapabilities, int i9, int i10) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(l0.l(i9, widthAlignment) * widthAlignment, l0.l(i10, heightAlignment) * heightAlignment);
    }

    @RequiresApi(21)
    private static boolean d(MediaCodecInfo.VideoCapabilities videoCapabilities, int i9, int i10, double d10) {
        Point c10 = c(videoCapabilities, i9, i10);
        int i11 = c10.x;
        int i12 = c10.y;
        if (d10 != -1.0d && d10 >= 1.0d) {
            return videoCapabilities.areSizeAndRateSupported(i11, i12, Math.floor(d10));
        }
        return videoCapabilities.isSizeSupported(i11, i12);
    }

    private static MediaCodecInfo.CodecProfileLevel[] f(@Nullable MediaCodecInfo.CodecCapabilities codecCapabilities) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int intValue = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : videoCapabilities.getBitrateRange().getUpper().intValue();
        int i9 = intValue >= 180000000 ? 1024 : intValue >= 120000000 ? 512 : intValue >= 60000000 ? 256 : intValue >= 30000000 ? 128 : intValue >= 18000000 ? 64 : intValue >= 12000000 ? 32 : intValue >= 7200000 ? 16 : intValue >= 3600000 ? 8 : intValue >= 1800000 ? 4 : intValue >= 800000 ? 2 : 1;
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = 1;
        codecProfileLevel.level = i9;
        return new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
    }

    private static boolean h(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return l0.f6985a >= 19 && i(codecCapabilities);
    }

    @RequiresApi(19)
    private static boolean i(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    private boolean l(k1 k1Var) {
        Pair<Integer, Integer> q10;
        if (k1Var.f6108i == null || (q10 = MediaCodecUtil.q(k1Var)) == null) {
            return true;
        }
        int intValue = ((Integer) q10.first).intValue();
        int intValue2 = ((Integer) q10.second).intValue();
        if (TPDecoderType.TP_CODEC_MIMETYPE_DOLBYVISION.equals(k1Var.f6111l)) {
            if (TPDecoderType.TP_CODEC_MIMETYPE_AVC.equals(this.f6296b)) {
                intValue = 8;
            } else {
                intValue = "video/hevc".equals(this.f6296b) ? 2 : 2;
            }
            intValue2 = 0;
        }
        if (this.f6305k || intValue == 42) {
            MediaCodecInfo.CodecProfileLevel[] g10 = g();
            if (l0.f6985a <= 23 && TPDecoderType.TP_CODEC_MIMETYPE_VP9.equals(this.f6296b) && g10.length == 0) {
                g10 = f(this.f6298d);
            }
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : g10) {
                if (codecProfileLevel.profile == intValue && codecProfileLevel.level >= intValue2 && !A(this.f6296b, intValue)) {
                    return true;
                }
            }
            w("codec.profileLevel, " + k1Var.f6108i + ", " + this.f6297c);
            return false;
        }
        return true;
    }

    private boolean o(k1 k1Var) {
        return this.f6296b.equals(k1Var.f6111l) || this.f6296b.equals(MediaCodecUtil.m(k1Var));
    }

    private static boolean q(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return l0.f6985a >= 21 && r(codecCapabilities);
    }

    @RequiresApi(21)
    private static boolean r(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private static boolean s(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return l0.f6985a >= 21 && t(codecCapabilities);
    }

    @RequiresApi(21)
    private static boolean t(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private void v(String str) {
        com.google.android.exoplayer2.util.r.b("MediaCodecInfo", "AssumedSupport [" + str + "] [" + this.f6295a + ", " + this.f6296b + "] [" + l0.f6989e + "]");
    }

    private void w(String str) {
        com.google.android.exoplayer2.util.r.b("MediaCodecInfo", "NoSupport [" + str + "] [" + this.f6295a + ", " + this.f6296b + "] [" + l0.f6989e + "]");
    }

    private static boolean x(String str) {
        return "audio/opus".equals(str);
    }

    private static boolean y(String str) {
        return l0.f6988d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    private static boolean z(String str) {
        if (l0.f6985a <= 22) {
            String str2 = l0.f6988d;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    @RequiresApi(21)
    public Point b(int i9, int i10) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6298d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return c(videoCapabilities, i9, i10);
    }

    public b2.g e(k1 k1Var, k1 k1Var2) {
        int i9 = !l0.c(k1Var.f6111l, k1Var2.f6111l) ? 8 : 0;
        if (this.f6305k) {
            if (k1Var.f6119t != k1Var2.f6119t) {
                i9 |= 1024;
            }
            if (!this.f6299e && (k1Var.f6116q != k1Var2.f6116q || k1Var.f6117r != k1Var2.f6117r)) {
                i9 |= 512;
            }
            if (!l0.c(k1Var.f6123x, k1Var2.f6123x)) {
                i9 |= 2048;
            }
            if (y(this.f6295a) && !k1Var.g(k1Var2)) {
                i9 |= 2;
            }
            if (i9 == 0) {
                return new b2.g(this.f6295a, k1Var, k1Var2, k1Var.g(k1Var2) ? 3 : 2, 0);
            }
        } else {
            if (k1Var.f6124y != k1Var2.f6124y) {
                i9 |= 4096;
            }
            if (k1Var.f6125z != k1Var2.f6125z) {
                i9 |= 8192;
            }
            if (k1Var.A != k1Var2.A) {
                i9 |= 16384;
            }
            if (i9 == 0 && "audio/mp4a-latm".equals(this.f6296b)) {
                Pair<Integer, Integer> q10 = MediaCodecUtil.q(k1Var);
                Pair<Integer, Integer> q11 = MediaCodecUtil.q(k1Var2);
                if (q10 != null && q11 != null) {
                    int intValue = ((Integer) q10.first).intValue();
                    int intValue2 = ((Integer) q11.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return new b2.g(this.f6295a, k1Var, k1Var2, 3, 0);
                    }
                }
            }
            if (!k1Var.g(k1Var2)) {
                i9 |= 32;
            }
            if (x(this.f6296b)) {
                i9 |= 2;
            }
            if (i9 == 0) {
                return new b2.g(this.f6295a, k1Var, k1Var2, 1, 0);
            }
        }
        return new b2.g(this.f6295a, k1Var, k1Var2, 0, i9);
    }

    public MediaCodecInfo.CodecProfileLevel[] g() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6298d;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    @RequiresApi(21)
    public boolean j(int i9) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6298d;
        if (codecCapabilities == null) {
            w("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            w("channelCount.aCaps");
            return false;
        } else if (a(this.f6295a, this.f6296b, audioCapabilities.getMaxInputChannelCount()) < i9) {
            w("channelCount.support, " + i9);
            return false;
        } else {
            return true;
        }
    }

    @RequiresApi(21)
    public boolean k(int i9) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6298d;
        if (codecCapabilities == null) {
            w("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            w("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i9)) {
            return true;
        } else {
            w("sampleRate.support, " + i9);
            return false;
        }
    }

    public boolean m(k1 k1Var) throws MediaCodecUtil.DecoderQueryException {
        int i9;
        if (o(k1Var) && l(k1Var)) {
            if (this.f6305k) {
                int i10 = k1Var.f6116q;
                if (i10 <= 0 || (i9 = k1Var.f6117r) <= 0) {
                    return true;
                }
                if (l0.f6985a >= 21) {
                    return u(i10, i9, k1Var.f6118s);
                }
                boolean z10 = i10 * i9 <= MediaCodecUtil.N();
                if (!z10) {
                    w("legacyFrameSize, " + k1Var.f6116q + x.f19108w + k1Var.f6117r);
                }
                return z10;
            }
            if (l0.f6985a >= 21) {
                int i11 = k1Var.f6125z;
                if (i11 != -1 && !k(i11)) {
                    return false;
                }
                int i12 = k1Var.f6124y;
                if (i12 != -1 && !j(i12)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public boolean n() {
        if (l0.f6985a >= 29 && TPDecoderType.TP_CODEC_MIMETYPE_VP9.equals(this.f6296b)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : g()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean p(k1 k1Var) {
        if (this.f6305k) {
            return this.f6299e;
        }
        Pair<Integer, Integer> q10 = MediaCodecUtil.q(k1Var);
        return q10 != null && ((Integer) q10.first).intValue() == 42;
    }

    public String toString() {
        return this.f6295a;
    }

    @RequiresApi(21)
    public boolean u(int i9, int i10, double d10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6298d;
        if (codecCapabilities == null) {
            w("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            w("sizeAndRate.vCaps");
            return false;
        } else if (d(videoCapabilities, i9, i10, d10)) {
            return true;
        } else {
            if (i9 < i10 && B(this.f6295a) && d(videoCapabilities, i10, i9, d10)) {
                v("sizeAndRate.rotated, " + i9 + x.f19108w + i10 + x.f19108w + d10);
                return true;
            }
            w("sizeAndRate.support, " + i9 + x.f19108w + i10 + x.f19108w + d10);
            return false;
        }
    }
}
