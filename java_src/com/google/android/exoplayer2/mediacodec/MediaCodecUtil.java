package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.v;
import com.google.common.collect.ImmutableList;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.utils.ReportController;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.tencent.thumbplayer.core.common.TPDecoderType;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class MediaCodecUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f6226a = Pattern.compile("^\\D?(\\d+)$");
    @GuardedBy("MediaCodecUtil.class")

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<b, List<m>> f6227b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static int f6228c = -1;

    /* loaded from: classes.dex */
    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th2) {
            super("Failed to query underlying media codecs", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f6229a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f6230b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f6231c;

        public b(String str, boolean z10, boolean z11) {
            this.f6229a = str;
            this.f6230b = z10;
            this.f6231c = z11;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != b.class) {
                return false;
            }
            b bVar = (b) obj;
            return TextUtils.equals(this.f6229a, bVar.f6229a) && this.f6230b == bVar.f6230b && this.f6231c == bVar.f6231c;
        }

        public int hashCode() {
            return ((((this.f6229a.hashCode() + 31) * 31) + (this.f6230b ? 1231 : 1237)) * 31) + (this.f6231c ? 1231 : 1237);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface c {
        MediaCodecInfo a(int i9);

        boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        int d();

        boolean e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d implements c {
        private d() {
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public MediaCodecInfo a(int i9) {
            return MediaCodecList.getCodecInfoAt(i9);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && TPDecoderType.TP_CODEC_MIMETYPE_AVC.equals(str2);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public int d() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean e() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static final class e implements c {

        /* renamed from: a  reason: collision with root package name */
        private final int f6232a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private MediaCodecInfo[] f6233b;

        public e(boolean z10, boolean z11) {
            this.f6232a = (z10 || z11) ? 1 : 0;
        }

        private void f() {
            if (this.f6233b == null) {
                this.f6233b = new MediaCodecList(this.f6232a).getCodecInfos();
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public MediaCodecInfo a(int i9) {
            f();
            return this.f6233b[i9];
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public int d() {
            f();
            return this.f6233b.length;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean e() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface f<T> {
        int a(T t10);
    }

    private static boolean A(MediaCodecInfo mediaCodecInfo) {
        return l0.f6985a >= 29 && B(mediaCodecInfo);
    }

    @RequiresApi(29)
    private static boolean B(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    private static boolean C(MediaCodecInfo mediaCodecInfo, String str, boolean z10, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z10 && str.endsWith(".secure"))) {
            return false;
        }
        int i9 = l0.f6985a;
        if (i9 >= 21 || !("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            if (i9 < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
                String str3 = l0.f6986b;
                if ("a70".equals(str3) || ("Xiaomi".equals(l0.f6987c) && str3.startsWith("HM"))) {
                    return false;
                }
            }
            if (i9 == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
                String str4 = l0.f6986b;
                if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                    return false;
                }
            }
            if (i9 == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
                String str5 = l0.f6986b;
                if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                    return false;
                }
            }
            if (i9 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(l0.f6987c))) {
                String str6 = l0.f6986b;
                if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                    return false;
                }
            }
            if (i9 <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(l0.f6987c)) {
                String str7 = l0.f6986b;
                if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                    return false;
                }
            }
            if (i9 <= 19 && l0.f6986b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
                return false;
            }
            return (i9 <= 23 && "audio/eac3-joc".equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
        }
        return false;
    }

    private static boolean D(MediaCodecInfo mediaCodecInfo, String str) {
        if (l0.f6985a >= 29) {
            return E(mediaCodecInfo);
        }
        return !F(mediaCodecInfo, str);
    }

    @RequiresApi(29)
    private static boolean E(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    private static boolean F(MediaCodecInfo mediaCodecInfo, String str) {
        if (l0.f6985a >= 29) {
            return G(mediaCodecInfo);
        }
        if (v.l(str)) {
            return true;
        }
        String f10 = com.google.common.base.c.f(mediaCodecInfo.getName());
        if (f10.startsWith("arc.")) {
            return false;
        }
        if (f10.startsWith("omx.google.") || f10.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((f10.startsWith("omx.sec.") && f10.contains(".sw.")) || f10.equals("omx.qcom.video.decoder.hevcswvdec") || f10.startsWith("c2.android.") || f10.startsWith("c2.google.")) {
            return true;
        }
        return (f10.startsWith("omx.") || f10.startsWith("c2.")) ? false : true;
    }

    @RequiresApi(29)
    private static boolean G(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    private static boolean H(MediaCodecInfo mediaCodecInfo) {
        if (l0.f6985a >= 29) {
            return I(mediaCodecInfo);
        }
        String f10 = com.google.common.base.c.f(mediaCodecInfo.getName());
        return (f10.startsWith("omx.google.") || f10.startsWith("c2.android.") || f10.startsWith("c2.google.")) ? false : true;
    }

    @RequiresApi(29)
    private static boolean I(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int J(m mVar) {
        String str = mVar.f6295a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (l0.f6985a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int K(m mVar) {
        return mVar.f6295a.startsWith("OMX.google") ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int L(k1 k1Var, m mVar) {
        try {
            return mVar.m(k1Var) ? 1 : 0;
        } catch (DecoderQueryException unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int M(f fVar, Object obj, Object obj2) {
        return fVar.a(obj2) - fVar.a(obj);
    }

    public static int N() throws DecoderQueryException {
        if (f6228c == -1) {
            int i9 = 0;
            m r10 = r(TPDecoderType.TP_CODEC_MIMETYPE_AVC, false, false);
            if (r10 != null) {
                MediaCodecInfo.CodecProfileLevel[] g10 = r10.g();
                int length = g10.length;
                int i10 = 0;
                while (i9 < length) {
                    i10 = Math.max(h(g10[i9].level), i10);
                    i9++;
                }
                i9 = Math.max(i10, l0.f6985a >= 21 ? 345600 : 172800);
            }
            f6228c = i9;
        }
        return f6228c;
    }

    private static int O(int i9) {
        int i10 = 17;
        if (i9 != 17) {
            i10 = 20;
            if (i9 != 20) {
                i10 = 23;
                if (i9 != 23) {
                    i10 = 29;
                    if (i9 != 29) {
                        i10 = 39;
                        if (i9 != 39) {
                            i10 = 42;
                            if (i9 != 42) {
                                switch (i9) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i10;
    }

    private static <T> void P(List<T> list, final f<T> fVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.exoplayer2.mediacodec.s
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int M;
                M = MediaCodecUtil.M(MediaCodecUtil.f.this, obj, obj2);
                return M;
            }
        });
    }

    private static int Q(int i9) {
        if (i9 != 10) {
            if (i9 != 11) {
                if (i9 != 20) {
                    if (i9 != 21) {
                        if (i9 != 30) {
                            if (i9 != 31) {
                                if (i9 != 40) {
                                    if (i9 != 41) {
                                        if (i9 != 50) {
                                            if (i9 != 51) {
                                                switch (i9) {
                                                    case 60:
                                                        return 2048;
                                                    case 61:
                                                        return 4096;
                                                    case 62:
                                                        return 8192;
                                                    default:
                                                        return -1;
                                                }
                                            }
                                            return 512;
                                        }
                                        return 256;
                                    }
                                    return 128;
                                }
                                return 64;
                            }
                            return 32;
                        }
                        return 16;
                    }
                    return 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static int R(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return i9 != 3 ? -1 : 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static void e(String str, List<m> list) {
        if ("audio/raw".equals(str)) {
            if (l0.f6985a < 26 && l0.f6986b.equals("R9") && list.size() == 1 && list.get(0).f6295a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(m.C("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
            }
            P(list, new f() { // from class: com.google.android.exoplayer2.mediacodec.q
                @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.f
                public final int a(Object obj) {
                    int J;
                    J = MediaCodecUtil.J((m) obj);
                    return J;
                }
            });
        }
        int i9 = l0.f6985a;
        if (i9 < 21 && list.size() > 1) {
            String str2 = list.get(0).f6295a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                P(list, new f() { // from class: com.google.android.exoplayer2.mediacodec.r
                    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.f
                    public final int a(Object obj) {
                        int K;
                        K = MediaCodecUtil.K((m) obj);
                        return K;
                    }
                });
            }
        }
        if (i9 >= 32 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(list.get(0).f6295a)) {
            return;
        }
        list.add(list.remove(0));
    }

    private static int f(int i9) {
        switch (i9) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    private static int g(int i9) {
        switch (i9) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i9) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i9) {
                            case 30:
                                return 256;
                            case 31:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i9) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i9) {
                                            case 50:
                                                return 16384;
                                            case 51:
                                                return 32768;
                                            case 52:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    private static int h(int i9) {
        if (i9 == 1 || i9 == 2) {
            return 25344;
        }
        switch (i9) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            case 131072:
            case 262144:
            case 524288:
                return 35651584;
            default:
                return -1;
        }
    }

    private static int i(int i9) {
        if (i9 != 66) {
            if (i9 != 77) {
                if (i9 != 88) {
                    if (i9 != 100) {
                        if (i9 != 110) {
                            if (i9 != 122) {
                                return i9 != 244 ? -1 : 64;
                            }
                            return 32;
                        }
                        return 16;
                    }
                    return 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    @Nullable
    private static Integer j(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 1537:
                if (str.equals(HiAnalyticsConstant.KeyAndValue.NUMBER_01)) {
                    c10 = 0;
                    break;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1567:
                if (str.equals(ThirdPushHelper.TYPE_XIAOMI_CHINA)) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1568:
                if (str.equals(ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL)) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1570:
                if (str.equals(ReportController.REPORT_TYPE_DYNAMIC_COMMENT)) {
                    c10 = '\f';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case '\b':
                return 256;
            case '\t':
                return 512;
            case '\n':
                return 1024;
            case 11:
                return 2048;
            case '\f':
                return 4096;
            default:
                return null;
        }
    }

    @Nullable
    private static Integer k(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 1536:
                if (str.equals("00")) {
                    c10 = 0;
                    break;
                }
                break;
            case 1537:
                if (str.equals(HiAnalyticsConstant.KeyAndValue.NUMBER_01)) {
                    c10 = 1;
                    break;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c10 = '\t';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case '\b':
                return 256;
            case '\t':
                return 512;
            default:
                return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> l(String str, String[] strArr) {
        int O;
        if (strArr.length != 3) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if ("audio/mp4a-latm".equals(v.f(Integer.parseInt(strArr[1], 16))) && (O = O(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair<>(Integer.valueOf(O), 0);
            }
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    @Nullable
    public static String m(k1 k1Var) {
        Pair<Integer, Integer> q10;
        if ("audio/eac3-joc".equals(k1Var.f6111l)) {
            return "audio/eac3";
        }
        if (!TPDecoderType.TP_CODEC_MIMETYPE_DOLBYVISION.equals(k1Var.f6111l) || (q10 = q(k1Var)) == null) {
            return null;
        }
        int intValue = ((Integer) q10.first).intValue();
        if (intValue == 16 || intValue == 256) {
            return "video/hevc";
        }
        if (intValue == 512) {
            return TPDecoderType.TP_CODEC_MIMETYPE_AVC;
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, Integer> n(String str, String[] strArr, @Nullable k3.c cVar) {
        int i9;
        if (strArr.length < 4) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
        int i10 = 1;
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2].substring(0, 2));
            int parseInt3 = Integer.parseInt(strArr[3]);
            if (parseInt != 0) {
                com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Unknown AV1 profile: " + parseInt);
                return null;
            } else if (parseInt3 != 8 && parseInt3 != 10) {
                com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Unknown AV1 bit depth: " + parseInt3);
                return null;
            } else {
                if (parseInt3 != 8) {
                    i10 = (cVar == null || !(cVar.f53527d != null || (i9 = cVar.f53526c) == 7 || i9 == 6)) ? 2 : 4096;
                }
                int f10 = f(parseInt2);
                if (f10 == -1) {
                    com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Unknown AV1 level: " + parseInt2);
                    return null;
                }
                return new Pair<>(Integer.valueOf(i10), Integer.valueOf(f10));
            }
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> o(String str, String[] strArr) {
        int parseInt;
        int i9;
        if (strArr.length < 2) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i9 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                parseInt = Integer.parseInt(strArr[1].substring(4), 16);
            } else if (strArr.length >= 3) {
                int parseInt2 = Integer.parseInt(strArr[1]);
                parseInt = Integer.parseInt(strArr[2]);
                i9 = parseInt2;
            } else {
                com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
                return null;
            }
            int i10 = i(i9);
            if (i10 == -1) {
                com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Unknown AVC profile: " + i9);
                return null;
            }
            int g10 = g(parseInt);
            if (g10 == -1) {
                com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Unknown AVC level: " + parseInt);
                return null;
            }
            return new Pair<>(Integer.valueOf(i10), Integer.valueOf(g10));
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    @Nullable
    private static String p(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        String[] supportedTypes;
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals(TPDecoderType.TP_CODEC_MIMETYPE_DOLBYVISION)) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        } else if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        } else {
            if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
                return "audio/x-lg-flac";
            }
            if (str2.equals("audio/ac3") && "OMX.lge.ac3.decoder".equals(str)) {
                return "audio/lg-ac3";
            }
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0077, code lost:
        if (r3.equals("av01") == false) goto L11;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> q(com.google.android.exoplayer2.k1 r6) {
        /*
            java.lang.String r0 = r6.f6108i
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.lang.String r2 = "\\."
            java.lang.String[] r0 = r0.split(r2)
            java.lang.String r2 = r6.f6111l
            java.lang.String r3 = "video/dolby-vision"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L1e
            java.lang.String r6 = r6.f6108i
            android.util.Pair r6 = w(r6, r0)
            return r6
        L1e:
            r2 = 0
            r3 = r0[r2]
            r3.hashCode()
            r4 = -1
            int r5 = r3.hashCode()
            switch(r5) {
                case 3004662: goto L71;
                case 3006243: goto L66;
                case 3006244: goto L5b;
                case 3199032: goto L50;
                case 3214780: goto L45;
                case 3356560: goto L3a;
                case 3624515: goto L2e;
                default: goto L2c;
            }
        L2c:
            r2 = -1
            goto L7a
        L2e:
            java.lang.String r2 = "vp09"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L38
            goto L2c
        L38:
            r2 = 6
            goto L7a
        L3a:
            java.lang.String r2 = "mp4a"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L43
            goto L2c
        L43:
            r2 = 5
            goto L7a
        L45:
            java.lang.String r2 = "hvc1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L4e
            goto L2c
        L4e:
            r2 = 4
            goto L7a
        L50:
            java.lang.String r2 = "hev1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L59
            goto L2c
        L59:
            r2 = 3
            goto L7a
        L5b:
            java.lang.String r2 = "avc2"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L64
            goto L2c
        L64:
            r2 = 2
            goto L7a
        L66:
            java.lang.String r2 = "avc1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L6f
            goto L2c
        L6f:
            r2 = 1
            goto L7a
        L71:
            java.lang.String r5 = "av01"
            boolean r3 = r3.equals(r5)
            if (r3 != 0) goto L7a
            goto L2c
        L7a:
            switch(r2) {
                case 0: goto L9a;
                case 1: goto L93;
                case 2: goto L93;
                case 3: goto L8c;
                case 4: goto L8c;
                case 5: goto L85;
                case 6: goto L7e;
                default: goto L7d;
            }
        L7d:
            return r1
        L7e:
            java.lang.String r6 = r6.f6108i
            android.util.Pair r6 = y(r6, r0)
            return r6
        L85:
            java.lang.String r6 = r6.f6108i
            android.util.Pair r6 = l(r6, r0)
            return r6
        L8c:
            java.lang.String r6 = r6.f6108i
            android.util.Pair r6 = x(r6, r0)
            return r6
        L93:
            java.lang.String r6 = r6.f6108i
            android.util.Pair r6 = o(r6, r0)
            return r6
        L9a:
            java.lang.String r1 = r6.f6108i
            k3.c r6 = r6.f6123x
            android.util.Pair r6 = n(r1, r0, r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.q(com.google.android.exoplayer2.k1):android.util.Pair");
    }

    @Nullable
    public static m r(String str, boolean z10, boolean z11) throws DecoderQueryException {
        List<m> s10 = s(str, z10, z11);
        if (s10.isEmpty()) {
            return null;
        }
        return s10.get(0);
    }

    public static synchronized List<m> s(String str, boolean z10, boolean z11) throws DecoderQueryException {
        c dVar;
        synchronized (MediaCodecUtil.class) {
            b bVar = new b(str, z10, z11);
            HashMap<b, List<m>> hashMap = f6227b;
            List<m> list = hashMap.get(bVar);
            if (list != null) {
                return list;
            }
            int i9 = l0.f6985a;
            if (i9 >= 21) {
                dVar = new e(z10, z11);
            } else {
                dVar = new d();
            }
            ArrayList<m> t10 = t(bVar, dVar);
            if (z10 && t10.isEmpty() && 21 <= i9 && i9 <= 23) {
                t10 = t(bVar, new d());
                if (!t10.isEmpty()) {
                    com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + t10.get(0).f6295a);
                }
            }
            e(str, t10);
            ImmutableList copyOf = ImmutableList.copyOf((Collection) t10);
            hashMap.put(bVar, copyOf);
            return copyOf;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:28|(4:(2:72|73)|53|(9:56|57|58|59|60|61|62|64|65)|9)|32|33|34|36|9) */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007f, code lost:
        if (r1.f6230b == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a4, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a5, code lost:
        r1 = r11;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0101 A[Catch: Exception -> 0x014f, TRY_ENTER, TryCatch #1 {Exception -> 0x014f, blocks: (B:3:0x0008, B:5:0x001b, B:60:0x0120, B:8:0x002d, B:11:0x0038, B:54:0x00f9, B:57:0x0101, B:59:0x0107, B:61:0x012a, B:62:0x014d), top: B:69:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x012a A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<com.google.android.exoplayer2.mediacodec.m> t(com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b r24, com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c r25) throws com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.t(com.google.android.exoplayer2.mediacodec.MediaCodecUtil$b, com.google.android.exoplayer2.mediacodec.MediaCodecUtil$c):java.util.ArrayList");
    }

    @CheckResult
    public static List<m> u(List<m> list, final k1 k1Var) {
        ArrayList arrayList = new ArrayList(list);
        P(arrayList, new f() { // from class: com.google.android.exoplayer2.mediacodec.p
            @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.f
            public final int a(Object obj) {
                int L;
                L = MediaCodecUtil.L(k1.this, (m) obj);
                return L;
            }
        });
        return arrayList;
    }

    @Nullable
    public static m v() throws DecoderQueryException {
        return r("audio/raw", false, false);
    }

    @Nullable
    private static Pair<Integer, Integer> w(String str, String[] strArr) {
        if (strArr.length < 3) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = f6226a.matcher(strArr[1]);
        if (!matcher.matches()) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        Integer k10 = k(group);
        if (k10 == null) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Unknown Dolby Vision profile string: " + group);
            return null;
        }
        String str2 = strArr[2];
        Integer j10 = j(str2);
        if (j10 == null) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Unknown Dolby Vision level string: " + str2);
            return null;
        }
        return new Pair<>(k10, j10);
    }

    @Nullable
    private static Pair<Integer, Integer> x(String str, String[] strArr) {
        if (strArr.length < 4) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i9 = 1;
        Matcher matcher = f6226a.matcher(strArr[1]);
        if (!matcher.matches()) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        if (!"1".equals(group)) {
            if (!"2".equals(group)) {
                com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Unknown HEVC profile string: " + group);
                return null;
            }
            i9 = 2;
        }
        String str2 = strArr[3];
        Integer z10 = z(str2);
        if (z10 == null) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Unknown HEVC level string: " + str2);
            return null;
        }
        return new Pair<>(Integer.valueOf(i9), z10);
    }

    @Nullable
    private static Pair<Integer, Integer> y(String str, String[] strArr) {
        if (strArr.length < 3) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int R = R(parseInt);
            if (R == -1) {
                com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Unknown VP9 profile: " + parseInt);
                return null;
            }
            int Q = Q(parseInt2);
            if (Q == -1) {
                com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Unknown VP9 level: " + parseInt2);
                return null;
            }
            return new Pair<>(Integer.valueOf(R), Integer.valueOf(Q));
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.r.i("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
    }

    @Nullable
    private static Integer z(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 70821:
                if (str.equals("H30")) {
                    c10 = 0;
                    break;
                }
                break;
            case 70914:
                if (str.equals("H60")) {
                    c10 = 1;
                    break;
                }
                break;
            case 70917:
                if (str.equals("H63")) {
                    c10 = 2;
                    break;
                }
                break;
            case 71007:
                if (str.equals("H90")) {
                    c10 = 3;
                    break;
                }
                break;
            case 71010:
                if (str.equals("H93")) {
                    c10 = 4;
                    break;
                }
                break;
            case 74665:
                if (str.equals("L30")) {
                    c10 = 5;
                    break;
                }
                break;
            case 74758:
                if (str.equals("L60")) {
                    c10 = 6;
                    break;
                }
                break;
            case 74761:
                if (str.equals("L63")) {
                    c10 = 7;
                    break;
                }
                break;
            case 74851:
                if (str.equals("L90")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 74854:
                if (str.equals("L93")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 2193639:
                if (str.equals("H120")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 2193642:
                if (str.equals("H123")) {
                    c10 = 11;
                    break;
                }
                break;
            case 2193732:
                if (str.equals("H150")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 2193735:
                if (str.equals("H153")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 2193738:
                if (str.equals("H156")) {
                    c10 = 14;
                    break;
                }
                break;
            case 2193825:
                if (str.equals("H180")) {
                    c10 = 15;
                    break;
                }
                break;
            case 2193828:
                if (str.equals("H183")) {
                    c10 = 16;
                    break;
                }
                break;
            case 2193831:
                if (str.equals("H186")) {
                    c10 = 17;
                    break;
                }
                break;
            case 2312803:
                if (str.equals("L120")) {
                    c10 = 18;
                    break;
                }
                break;
            case 2312806:
                if (str.equals("L123")) {
                    c10 = 19;
                    break;
                }
                break;
            case 2312896:
                if (str.equals("L150")) {
                    c10 = 20;
                    break;
                }
                break;
            case 2312899:
                if (str.equals("L153")) {
                    c10 = 21;
                    break;
                }
                break;
            case 2312902:
                if (str.equals("L156")) {
                    c10 = 22;
                    break;
                }
                break;
            case 2312989:
                if (str.equals("L180")) {
                    c10 = 23;
                    break;
                }
                break;
            case 2312992:
                if (str.equals("L183")) {
                    c10 = 24;
                    break;
                }
                break;
            case 2312995:
                if (str.equals("L186")) {
                    c10 = 25;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2;
            case 1:
                return 8;
            case 2:
                return 32;
            case 3:
                return 128;
            case 4:
                return 512;
            case 5:
                return 1;
            case 6:
                return 4;
            case 7:
                return 16;
            case '\b':
                return 64;
            case '\t':
                return 256;
            case '\n':
                return 2048;
            case 11:
                return 8192;
            case '\f':
                return 32768;
            case '\r':
                return 131072;
            case 14:
                return 524288;
            case 15:
                return 2097152;
            case 16:
                return 8388608;
            case 17:
                return Integer.valueOf((int) TPMediaCodecProfileLevel.HEVCHighTierLevel62);
            case 18:
                return 1024;
            case 19:
                return 4096;
            case 20:
                return 16384;
            case 21:
                return 65536;
            case 22:
                return 262144;
            case 23:
                return 1048576;
            case 24:
                return 4194304;
            case 25:
                return 16777216;
            default:
                return null;
        }
    }
}
