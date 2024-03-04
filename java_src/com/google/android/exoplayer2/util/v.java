package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.AnalyticsEvents;
import com.tencent.thumbplayer.core.common.TPDecoderType;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    private static final ArrayList<a> f7034a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f7035b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f7036a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7037b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7038c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f7039a;

        /* renamed from: b  reason: collision with root package name */
        public final int f7040b;

        public b(int i9, int i10) {
            this.f7039a = i9;
            this.f7040b = i10;
        }

        public int a() {
            int i9 = this.f7040b;
            if (i9 != 2) {
                if (i9 != 5) {
                    if (i9 != 29) {
                        if (i9 != 42) {
                            return i9 != 22 ? i9 != 23 ? 0 : 15 : BasicMeasure.EXACTLY;
                        }
                        return 16;
                    }
                    return 12;
                }
                return 11;
            }
            return 10;
        }
    }

    public static boolean a(@Nullable String str, @Nullable String str2) {
        b g10;
        int a10;
        if (str == null) {
            return false;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c10 = 0;
                    break;
                }
                break;
            case -432837260:
                if (str.equals("audio/mpeg-L1")) {
                    c10 = 1;
                    break;
                }
                break;
            case -432837259:
                if (str.equals("audio/mpeg-L2")) {
                    c10 = 2;
                    break;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c10 = 3;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c10 = 4;
                    break;
                }
                break;
            case 187094639:
                if (str.equals("audio/raw")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1504619009:
                if (str.equals("audio/flac")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1903231877:
                if (str.equals("audio/g711-alaw")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1903589369:
                if (str.equals("audio/g711-mlaw")) {
                    c10 = '\n';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
                return true;
            case 3:
                return (str2 == null || (g10 = g(str2)) == null || (a10 = g10.a()) == 0 || a10 == 16) ? false : true;
            default:
                return false;
        }
    }

    @Nullable
    public static String b(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : l0.I0(str)) {
            String e10 = e(str2);
            if (e10 != null && l(e10)) {
                return e10;
            }
        }
        return null;
    }

    @Nullable
    private static String c(String str) {
        int size = f7034a.size();
        for (int i9 = 0; i9 < size; i9++) {
            a aVar = f7034a.get(i9);
            if (str.startsWith(aVar.f7037b)) {
                return aVar.f7036a;
            }
        }
        return null;
    }

    public static int d(String str, @Nullable String str2) {
        b g10;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    c10 = 1;
                    break;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c10 = 2;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c10 = 3;
                    break;
                }
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    c10 = '\b';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 18;
            case 1:
                return 7;
            case 2:
                if (str2 == null || (g10 = g(str2)) == null) {
                    return 0;
                }
                return g10.a();
            case 3:
                return 5;
            case 4:
                return 17;
            case 5:
                return 6;
            case 6:
                return 9;
            case 7:
                return 8;
            case '\b':
                return 14;
            default:
                return 0;
        }
    }

    @Nullable
    public static String e(@Nullable String str) {
        b g10;
        String str2 = null;
        if (str == null) {
            return null;
        }
        String f10 = com.google.common.base.c.f(str.trim());
        if (f10.startsWith("avc1") || f10.startsWith("avc3")) {
            return TPDecoderType.TP_CODEC_MIMETYPE_AVC;
        }
        if (f10.startsWith("hev1") || f10.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (f10.startsWith("dvav") || f10.startsWith("dva1") || f10.startsWith("dvhe") || f10.startsWith("dvh1")) {
            return TPDecoderType.TP_CODEC_MIMETYPE_DOLBYVISION;
        }
        if (f10.startsWith("av01")) {
            return TPDecoderType.TP_CODEC_MIMETYPE_AV1;
        }
        if (f10.startsWith("vp9") || f10.startsWith("vp09")) {
            return TPDecoderType.TP_CODEC_MIMETYPE_VP9;
        }
        if (f10.startsWith("vp8") || f10.startsWith("vp08")) {
            return TPDecoderType.TP_CODEC_MIMETYPE_VP8;
        }
        if (!f10.startsWith("mp4a")) {
            return f10.startsWith("mha1") ? "audio/mha1" : f10.startsWith("mhm1") ? "audio/mhm1" : (f10.startsWith("ac-3") || f10.startsWith("dac3")) ? "audio/ac3" : (f10.startsWith("ec-3") || f10.startsWith("dec3")) ? "audio/eac3" : f10.startsWith("ec+3") ? "audio/eac3-joc" : (f10.startsWith("ac-4") || f10.startsWith("dac4")) ? "audio/ac4" : f10.startsWith("dtsc") ? "audio/vnd.dts" : f10.startsWith("dtse") ? "audio/vnd.dts.hd;profile=lbr" : (f10.startsWith("dtsh") || f10.startsWith("dtsl")) ? "audio/vnd.dts.hd" : f10.startsWith("dtsx") ? "audio/vnd.dts.uhd;profile=p2" : f10.startsWith("opus") ? "audio/opus" : f10.startsWith("vorbis") ? "audio/vorbis" : f10.startsWith("flac") ? "audio/flac" : f10.startsWith("stpp") ? "application/ttml+xml" : f10.startsWith("wvtt") ? "text/vtt" : f10.contains("cea708") ? "application/cea-708" : (f10.contains("eia608") || f10.contains("cea608")) ? "application/cea-608" : c(f10);
        }
        if (f10.startsWith("mp4a.") && (g10 = g(f10)) != null) {
            str2 = f(g10.f7039a);
        }
        return str2 == null ? "audio/mp4a-latm" : str2;
    }

    @Nullable
    public static String f(int i9) {
        if (i9 != 32) {
            if (i9 != 33) {
                if (i9 != 35) {
                    if (i9 != 64) {
                        if (i9 != 163) {
                            if (i9 != 177) {
                                if (i9 != 165) {
                                    if (i9 != 166) {
                                        switch (i9) {
                                            case 96:
                                            case 97:
                                            case 98:
                                            case 99:
                                            case 100:
                                            case 101:
                                                return "video/mpeg2";
                                            case 102:
                                            case 103:
                                            case 104:
                                                return "audio/mp4a-latm";
                                            case 105:
                                            case 107:
                                                return "audio/mpeg";
                                            case 106:
                                                return "video/mpeg";
                                            default:
                                                switch (i9) {
                                                    case 169:
                                                    case 172:
                                                        return "audio/vnd.dts";
                                                    case 170:
                                                    case 171:
                                                        return "audio/vnd.dts.hd";
                                                    case 173:
                                                        return "audio/opus";
                                                    case 174:
                                                        return "audio/ac4";
                                                    default:
                                                        return null;
                                                }
                                        }
                                    }
                                    return "audio/eac3";
                                }
                                return "audio/ac3";
                            }
                            return TPDecoderType.TP_CODEC_MIMETYPE_VP9;
                        }
                        return "video/wvc1";
                    }
                    return "audio/mp4a-latm";
                }
                return "video/hevc";
            }
            return TPDecoderType.TP_CODEC_MIMETYPE_AVC;
        }
        return "video/mp4v-es";
    }

    @Nullable
    @VisibleForTesting
    static b g(String str) {
        Matcher matcher = f7035b.matcher(str);
        if (matcher.matches()) {
            String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(1));
            String group = matcher.group(2);
            try {
                return new b(Integer.parseInt(str2, 16), group != null ? Integer.parseInt(group) : 0);
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return null;
    }

    @Nullable
    private static String h(@Nullable String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    public static int i(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (l(str)) {
            return 1;
        }
        if (o(str)) {
            return 2;
        }
        if (n(str)) {
            return 3;
        }
        if (m(str)) {
            return 4;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 5;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 6;
        }
        return j(str);
    }

    private static int j(String str) {
        int size = f7034a.size();
        for (int i9 = 0; i9 < size; i9++) {
            a aVar = f7034a.get(i9);
            if (str.equals(aVar.f7036a)) {
                return aVar.f7038c;
            }
        }
        return -1;
    }

    @Nullable
    public static String k(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : l0.I0(str)) {
            String e10 = e(str2);
            if (e10 != null && o(e10)) {
                return e10;
            }
        }
        return null;
    }

    public static boolean l(@Nullable String str) {
        return "audio".equals(h(str));
    }

    public static boolean m(@Nullable String str) {
        return "image".equals(h(str));
    }

    public static boolean n(@Nullable String str) {
        return ViewHierarchyConstants.TEXT_KEY.equals(h(str)) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str);
    }

    public static boolean o(@Nullable String str) {
        return AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO.equals(h(str));
    }

    public static String p(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1007807498:
                if (str.equals("audio/x-flac")) {
                    c10 = 0;
                    break;
                }
                break;
            case -586683234:
                if (str.equals("audio/x-wav")) {
                    c10 = 1;
                    break;
                }
                break;
            case 187090231:
                if (str.equals("audio/mp3")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return "audio/flac";
            case 1:
                return "audio/wav";
            case 2:
                return "audio/mpeg";
            default:
                return str;
        }
    }
}
