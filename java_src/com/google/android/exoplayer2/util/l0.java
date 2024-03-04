package com.google.android.exoplayer2.util;

import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ShareInternalUtility;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.l2;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.Language;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import com.tencent.thumbplayer.core.common.TPPixelFormat;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback;
import com.tencent.thumbplayer.core.player.TPNativePlayerInitConfig;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* loaded from: classes2.dex */
public final class l0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f6985a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f6986b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f6987c;

    /* renamed from: d  reason: collision with root package name */
    public static final String f6988d;

    /* renamed from: e  reason: collision with root package name */
    public static final String f6989e;

    /* renamed from: f  reason: collision with root package name */
    public static final byte[] f6990f;

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f6991g;

    /* renamed from: h  reason: collision with root package name */
    private static final Pattern f6992h;

    /* renamed from: i  reason: collision with root package name */
    private static final Pattern f6993i;

    /* renamed from: j  reason: collision with root package name */
    private static final Pattern f6994j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static HashMap<String, String> f6995k;

    /* renamed from: l  reason: collision with root package name */
    private static final String[] f6996l;

    /* renamed from: m  reason: collision with root package name */
    private static final String[] f6997m;

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f6998n;

    /* renamed from: o  reason: collision with root package name */
    private static final int[] f6999o;

    static {
        int i9 = Build.VERSION.SDK_INT;
        f6985a = i9;
        String str = Build.DEVICE;
        f6986b = str;
        String str2 = Build.MANUFACTURER;
        f6987c = str2;
        String str3 = Build.MODEL;
        f6988d = str3;
        f6989e = str + ", " + str3 + ", " + str2 + ", " + i9;
        f6990f = new byte[0];
        f6991g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f6992h = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        f6993i = Pattern.compile("%([A-Fa-f0-9]{2})");
        f6994j = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        f6996l = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", Language.SIMPLE_CHINESE, "cze", "cs", "dut", "nl", "ger", Language.GERMANY, "gre", "el", "fre", Language.FRENCH, "geo", "ka", "ice", "is", TPDownloadProxyEnum.USER_MAC, "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", Language.INDONESIA, "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        f6997m = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        f6998n = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        f6999o = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_LOSSLESS, 202, 205, 144, 151, 158, ITPNativePlayerMessageCallback.INFO_LONG1_CLIP_EOS, 140, TPOptionalID.OPTION_ID_BEFORE_LONG_BUFFER_STRATEGY, 130, 133, 168, BaseMessageViewHolder.MAX_SIZE, 166, 161, 180, 179, 186, 189, 199, 192, 201, 206, TPOptionalID.OPTION_ID_BEFORE_BOOL_RELEASE_MEDIA_CODEC_WHEN_SET_SURFACE, 220, TPNativePlayerInitConfig.BOOL_ENABLE_MEDIA_CODEC_REUSE, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 171, 172, 165, 162, TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_ORIGINAL_VIDEO_INFO_CALLBACK_FROM_SURFACE_LISTENER, TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, TPCodecParamers.TP_PROFILE_MJPEG_JPEG_LS, 240, 229, 226, 235, 236, 193, 198, 207, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, TPPixelFormat.TP_PIX_FMT_MEDIACODEC, EventTrackingUtils.EVENT_TRACKING_RESULT_CODE, 181, 188, 187, 150, TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT, 152, 159, 138, 141, 132, 131, 222, 217, 208, TPNativePlayerInitConfig.BOOL_VIDEO_KEEP_MEDIA_CODEC_PTS, TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT, 197, 204, 203, 230, 225, 232, 239, 250, 253, TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE, 243};
    }

    public static String A(byte[] bArr) {
        return new String(bArr, com.google.common.base.e.f12356c);
    }

    public static <T> T[] A0(T[] tArr, int i9) {
        a.a(i9 <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i9);
    }

    public static String B(byte[] bArr, int i9, int i10) {
        return new String(bArr, i9, i10, com.google.common.base.e.f12356c);
    }

    public static <T> T[] B0(T[] tArr, int i9, int i10) {
        a.a(i9 >= 0);
        a.a(i10 <= tArr.length);
        return (T[]) Arrays.copyOfRange(tArr, i9, i10);
    }

    @RequiresApi(21)
    public static int C(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return -1;
        }
        return audioManager.generateAudioSessionId();
    }

    public static boolean C0(Handler handler, Runnable runnable) {
        if (handler.getLooper().getThread().isAlive()) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
                return true;
            }
            return handler.post(runnable);
        }
        return false;
    }

    public static int D(int i9) {
        if (i9 == 12) {
            return f6985a >= 32 ? 743676 : 0;
        }
        switch (i9) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return 204;
            case 5:
                return 220;
            case 6:
                return 252;
            case 7:
                return 1276;
            case 8:
                int i10 = f6985a;
                return (i10 < 23 && i10 < 21) ? 0 : 6396;
            default:
                return 0;
        }
    }

    public static boolean D0(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    public static l2.b E(l2 l2Var, l2.b bVar) {
        boolean e10 = l2Var.e();
        boolean L = l2Var.L();
        boolean G = l2Var.G();
        boolean n9 = l2Var.n();
        boolean U = l2Var.U();
        boolean r10 = l2Var.r();
        boolean u10 = l2Var.t().u();
        boolean z10 = false;
        l2.b.a d10 = new l2.b.a().b(bVar).d(4, !e10).d(5, L && !e10).d(6, G && !e10).d(7, !u10 && (G || !U || L) && !e10).d(8, n9 && !e10).d(9, !u10 && (n9 || (U && r10)) && !e10).d(10, !e10).d(11, L && !e10);
        if (L && !e10) {
            z10 = true;
        }
        return d10.d(12, z10).e();
    }

    public static long E0(long j10, long j11, long j12) {
        int i9 = (j12 > j11 ? 1 : (j12 == j11 ? 0 : -1));
        if (i9 >= 0 && j12 % j11 == 0) {
            return j10 / (j12 / j11);
        }
        if (i9 >= 0 || j11 % j12 != 0) {
            return (long) (j10 * (j11 / j12));
        }
        return j10 * (j11 / j12);
    }

    public static int F(ByteBuffer byteBuffer, int i9) {
        int i10 = byteBuffer.getInt(i9);
        return byteBuffer.order() == ByteOrder.BIG_ENDIAN ? i10 : Integer.reverseBytes(i10);
    }

    public static void F0(long[] jArr, long j10, long j11) {
        int i9 = 0;
        int i10 = (j11 > j10 ? 1 : (j11 == j10 ? 0 : -1));
        if (i10 >= 0 && j11 % j10 == 0) {
            long j12 = j11 / j10;
            while (i9 < jArr.length) {
                jArr[i9] = jArr[i9] / j12;
                i9++;
            }
        } else if (i10 < 0 && j10 % j11 == 0) {
            long j13 = j10 / j11;
            while (i9 < jArr.length) {
                jArr[i9] = jArr[i9] * j13;
                i9++;
            }
        } else {
            double d10 = j10 / j11;
            while (i9 < jArr.length) {
                jArr[i9] = (long) (jArr[i9] * d10);
                i9++;
            }
        }
    }

    public static String G(Object[] objArr) {
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < objArr.length; i9++) {
            sb2.append(objArr[i9].getClass().getSimpleName());
            if (i9 < objArr.length - 1) {
                sb2.append(", ");
            }
        }
        return sb2.toString();
    }

    public static String[] G0(String str, String str2) {
        return str.split(str2, -1);
    }

    public static String H(@Nullable Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return com.google.common.base.c.h(networkCountryIso);
            }
        }
        return com.google.common.base.c.h(Locale.getDefault().getCountry());
    }

    public static String[] H0(String str, String str2) {
        return str.split(str2, 2);
    }

    public static Point I(Context context) {
        DisplayManager displayManager;
        Display display = (f6985a < 17 || (displayManager = (DisplayManager) context.getSystemService(ServerProtocol.DIALOG_PARAM_DISPLAY)) == null) ? null : displayManager.getDisplay(0);
        if (display == null) {
            display = ((WindowManager) a.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
        }
        return J(context, display);
    }

    public static String[] I0(@Nullable String str) {
        return TextUtils.isEmpty(str) ? new String[0] : G0(str.trim(), "(\\s*,\\s*)");
    }

    public static Point J(Context context, Display display) {
        String f02;
        if (display.getDisplayId() == 0 && r0(context)) {
            if (f6985a < 28) {
                f02 = f0("sys.display-size");
            } else {
                f02 = f0("vendor.display-size");
            }
            if (!TextUtils.isEmpty(f02)) {
                try {
                    String[] G0 = G0(f02.trim(), com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w);
                    if (G0.length == 2) {
                        int parseInt = Integer.parseInt(G0[0]);
                        int parseInt2 = Integer.parseInt(G0[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                r.c("Util", "Invalid display size: " + f02);
            }
            if ("Sony".equals(f6987c) && f6988d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        int i9 = f6985a;
        if (i9 >= 23) {
            O(display, point);
        } else if (i9 >= 17) {
            N(display, point);
        } else {
            M(display, point);
        }
        return point;
    }

    @Nullable
    public static ComponentName J0(Context context, Intent intent) {
        if (f6985a >= 26) {
            return context.startForegroundService(intent);
        }
        return context.startService(intent);
    }

    public static Looper K() {
        Looper myLooper = Looper.myLooper();
        return myLooper != null ? myLooper : Looper.getMainLooper();
    }

    public static long K0(long j10, long j11, long j12) {
        long j13 = j10 - j11;
        return ((j10 ^ j13) & (j11 ^ j10)) < 0 ? j12 : j13;
    }

    public static Locale L() {
        return f6985a >= 24 ? Locale.getDefault(Locale.Category.DISPLAY) : Locale.getDefault();
    }

    public static byte[] L0(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    private static void M(Display display, Point point) {
        display.getSize(point);
    }

    public static long M0(int i9, int i10) {
        return N0(i10) | (N0(i9) << 32);
    }

    @RequiresApi(17)
    private static void N(Display display, Point point) {
        display.getRealSize(point);
    }

    public static long N0(int i9) {
        return i9 & 4294967295L;
    }

    @RequiresApi(23)
    private static void O(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    public static CharSequence O0(CharSequence charSequence, int i9) {
        return charSequence.length() <= i9 ? charSequence : charSequence.subSequence(0, i9);
    }

    public static int P(int i9) {
        if (i9 == 2 || i9 == 4) {
            return 6005;
        }
        if (i9 != 10) {
            if (i9 != 7) {
                if (i9 != 8) {
                    switch (i9) {
                        case 15:
                            return 6003;
                        case 16:
                        case 18:
                            return 6005;
                        case 17:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            return 6004;
                        default:
                            switch (i9) {
                                case 24:
                                case 25:
                                case 26:
                                case 27:
                                case 28:
                                    return 6002;
                                default:
                                    return 6006;
                            }
                    }
                }
                return 6003;
            }
            return 6005;
        }
        return 6004;
    }

    public static long P0(long j10) {
        return (j10 == -9223372036854775807L || j10 == Long.MIN_VALUE) ? j10 : j10 / 1000;
    }

    public static int Q(@Nullable String str) {
        String[] G0;
        int length;
        if (str != null && (length = (G0 = G0(str, "_")).length) >= 2) {
            String str2 = G0[length - 1];
            boolean z10 = length >= 3 && "neg".equals(G0[length - 2]);
            try {
                int parseInt = Integer.parseInt((String) a.e(str2));
                return z10 ? -parseInt : parseInt;
            } catch (NumberFormatException unused) {
                return 0;
            }
        }
        return 0;
    }

    public static void Q0(Parcel parcel, boolean z10) {
        parcel.writeInt(z10 ? 1 : 0);
    }

    public static String R(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 == 4) {
                            return "YES";
                        }
                        throw new IllegalStateException();
                    }
                    return "NO_EXCEEDS_CAPABILITIES";
                }
                return "NO_UNSUPPORTED_DRM";
            }
            return "NO_UNSUPPORTED_TYPE";
        }
        return "NO";
    }

    public static String S(Locale locale) {
        return f6985a >= 21 ? T(locale) : locale.toString();
    }

    @RequiresApi(21)
    private static String T(Locale locale) {
        return locale.toLanguageTag();
    }

    public static long U(long j10, float f10) {
        return f10 == 1.0f ? j10 : Math.round(j10 * f10);
    }

    public static long V(long j10) {
        if (j10 == -9223372036854775807L) {
            return System.currentTimeMillis();
        }
        return j10 + SystemClock.elapsedRealtime();
    }

    public static int W(int i9) {
        if (i9 != 8) {
            if (i9 != 16) {
                if (i9 != 24) {
                    return i9 != 32 ? 0 : 805306368;
                }
                return 536870912;
            }
            return 2;
        }
        return 3;
    }

    public static k1 X(int i9, int i10, int i11) {
        return new k1.b().e0("audio/raw").H(i10).f0(i11).Y(i9).E();
    }

    public static int Y(int i9, int i10) {
        if (i9 != 2) {
            if (i9 != 3) {
                if (i9 != 4) {
                    if (i9 != 268435456) {
                        if (i9 == 536870912) {
                            return i10 * 3;
                        }
                        if (i9 != 805306368) {
                            throw new IllegalArgumentException();
                        }
                    }
                }
                return i10 * 4;
            }
            return i10;
        }
        return i10 * 2;
    }

    public static long Z(long j10, float f10) {
        return f10 == 1.0f ? j10 : Math.round(j10 / f10);
    }

    public static int a0(int i9) {
        if (i9 != 13) {
            switch (i9) {
                case 2:
                    return 0;
                case 3:
                    return 8;
                case 4:
                    return 4;
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    return 5;
                case 6:
                    return 2;
                default:
                    return 3;
            }
        }
        return 1;
    }

    public static long b(long j10, long j11, long j12) {
        long j13 = j10 + j11;
        return ((j10 ^ j13) & (j11 ^ j13)) < 0 ? j12 : j13;
    }

    public static String b0(StringBuilder sb2, Formatter formatter, long j10) {
        if (j10 == -9223372036854775807L) {
            j10 = 0;
        }
        String str = j10 < 0 ? "-" : "";
        long abs = (Math.abs(j10) + 500) / 1000;
        long j11 = abs % 60;
        long j12 = (abs / 60) % 60;
        long j13 = abs / 3600;
        sb2.setLength(0);
        return j13 > 0 ? formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j13), Long.valueOf(j12), Long.valueOf(j11)).toString() : formatter.format("%s%02d:%02d", str, Long.valueOf(j12), Long.valueOf(j11)).toString();
    }

    public static boolean c(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static String[] c0() {
        String[] d02 = d0();
        for (int i9 = 0; i9 < d02.length; i9++) {
            d02[i9] = y0(d02[i9]);
        }
        return d02;
    }

    public static <T extends Comparable<? super T>> int d(List<? extends Comparable<? super T>> list, T t10, boolean z10, boolean z11) {
        int i9;
        int binarySearch = Collections.binarySearch(list, t10);
        if (binarySearch < 0) {
            i9 = ~binarySearch;
        } else {
            int size = list.size();
            do {
                binarySearch++;
                if (binarySearch >= size) {
                    break;
                }
            } while (list.get(binarySearch).compareTo(t10) == 0);
            i9 = z10 ? binarySearch - 1 : binarySearch;
        }
        return z11 ? Math.min(list.size() - 1, i9) : i9;
    }

    private static String[] d0() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        return f6985a >= 24 ? e0(configuration) : new String[]{S(configuration.locale)};
    }

    public static int e(long[] jArr, long j10, boolean z10, boolean z11) {
        int i9;
        int binarySearch = Arrays.binarySearch(jArr, j10);
        if (binarySearch < 0) {
            i9 = ~binarySearch;
        } else {
            do {
                binarySearch++;
                if (binarySearch >= jArr.length) {
                    break;
                }
            } while (jArr[binarySearch] == j10);
            i9 = z10 ? binarySearch - 1 : binarySearch;
        }
        return z11 ? Math.min(jArr.length - 1, i9) : i9;
    }

    @RequiresApi(24)
    private static String[] e0(Configuration configuration) {
        return G0(configuration.getLocales().toLanguageTags(), ",");
    }

    public static int f(s sVar, long j10, boolean z10, boolean z11) {
        int i9;
        int c10 = sVar.c() - 1;
        int i10 = 0;
        while (i10 <= c10) {
            int i11 = (i10 + c10) >>> 1;
            if (sVar.b(i11) < j10) {
                i10 = i11 + 1;
            } else {
                c10 = i11 - 1;
            }
        }
        if (z10 && (i9 = c10 + 1) < sVar.c() && sVar.b(i9) == j10) {
            return i9;
        }
        if (z11 && c10 == -1) {
            return 0;
        }
        return c10;
    }

    @Nullable
    private static String f0(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e10) {
            r.d("Util", "Failed to read system property " + str, e10);
            return null;
        }
    }

    public static <T extends Comparable<? super T>> int g(List<? extends Comparable<? super T>> list, T t10, boolean z10, boolean z11) {
        int i9;
        int binarySearch = Collections.binarySearch(list, t10);
        if (binarySearch < 0) {
            i9 = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (list.get(binarySearch).compareTo(t10) == 0);
            i9 = z10 ? binarySearch + 1 : binarySearch;
        }
        return z11 ? Math.max(0, i9) : i9;
    }

    public static String g0(int i9) {
        switch (i9) {
            case -2:
                return IntegrityManager.INTEGRITY_TYPE_NONE;
            case -1:
                return "unknown";
            case 0:
                return V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND;
            case 1:
                return "audio";
            case 2:
                return AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO;
            case 3:
                return ViewHierarchyConstants.TEXT_KEY;
            case 4:
                return "image";
            case 5:
                return "metadata";
            case 6:
                return "camera motion";
            default:
                if (i9 >= 10000) {
                    return "custom (" + i9 + ")";
                }
                return "?";
        }
    }

    public static int h(int[] iArr, int i9, boolean z10, boolean z11) {
        int i10;
        int binarySearch = Arrays.binarySearch(iArr, i9);
        if (binarySearch < 0) {
            i10 = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (iArr[binarySearch] == i9);
            i10 = z10 ? binarySearch + 1 : binarySearch;
        }
        return z11 ? Math.max(0, i10) : i10;
    }

    public static byte[] h0(String str) {
        return str.getBytes(com.google.common.base.e.f12356c);
    }

    public static int i(long[] jArr, long j10, boolean z10, boolean z11) {
        int i9;
        int binarySearch = Arrays.binarySearch(jArr, j10);
        if (binarySearch < 0) {
            i9 = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (jArr[binarySearch] == j10);
            i9 = z10 ? binarySearch + 1 : binarySearch;
        }
        return z11 ? Math.max(0, i9) : i9;
    }

    public static int i0(Uri uri) {
        int j02;
        String scheme = uri.getScheme();
        if (scheme == null || !com.google.common.base.c.a("rtsp", scheme)) {
            String lastPathSegment = uri.getLastPathSegment();
            if (lastPathSegment == null) {
                return 4;
            }
            int lastIndexOf = lastPathSegment.lastIndexOf(46);
            if (lastIndexOf < 0 || (j02 = j0(lastPathSegment.substring(lastIndexOf + 1))) == 4) {
                Matcher matcher = f6994j.matcher((CharSequence) a.e(uri.getPath()));
                if (matcher.matches()) {
                    String group = matcher.group(2);
                    if (group != null) {
                        if (group.contains("format=mpd-time-csf")) {
                            return 0;
                        }
                        if (group.contains("format=m3u8-aapl")) {
                            return 2;
                        }
                    }
                    return 1;
                }
                return 4;
            }
            return j02;
        }
        return 3;
    }

    public static <T> T j(@Nullable T t10) {
        return t10;
    }

    public static int j0(String str) {
        String f10 = com.google.common.base.c.f(str);
        f10.hashCode();
        char c10 = 65535;
        switch (f10.hashCode()) {
            case 104579:
                if (f10.equals("ism")) {
                    c10 = 0;
                    break;
                }
                break;
            case 108321:
                if (f10.equals("mpd")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3242057:
                if (f10.equals("isml")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3299913:
                if (f10.equals("m3u8")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 2:
                return 1;
            case 1:
                return 0;
            case 3:
                return 2;
            default:
                return 4;
        }
    }

    public static <T> T[] k(T[] tArr) {
        return tArr;
    }

    public static int k0(Uri uri, @Nullable String str) {
        if (str == null) {
            return i0(uri);
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case -979127466:
                if (str.equals("application/x-mpegURL")) {
                    c10 = 0;
                    break;
                }
                break;
            case -156749520:
                if (str.equals("application/vnd.ms-sstr+xml")) {
                    c10 = 1;
                    break;
                }
                break;
            case 64194685:
                if (str.equals("application/dash+xml")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1154777587:
                if (str.equals("application/x-rtsp")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2;
            case 1:
                return 1;
            case 2:
                return 0;
            case 3:
                return 3;
            default:
                return 4;
        }
    }

    public static int l(int i9, int i10) {
        return ((i9 + i10) - 1) / i10;
    }

    public static boolean l0(b0 b0Var, b0 b0Var2, @Nullable Inflater inflater) {
        if (b0Var.a() <= 0) {
            return false;
        }
        if (b0Var2.b() < b0Var.a()) {
            b0Var2.c(b0Var.a() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(b0Var.d(), b0Var.e(), b0Var.a());
        int i9 = 0;
        while (true) {
            try {
                i9 += inflater.inflate(b0Var2.d(), i9, b0Var2.b() - i9);
                if (inflater.finished()) {
                    b0Var2.O(i9);
                    return true;
                } else if (inflater.needsDictionary() || inflater.needsInput()) {
                    break;
                } else if (i9 == b0Var2.b()) {
                    b0Var2.c(b0Var2.b() * 2);
                }
            } catch (DataFormatException unused) {
                return false;
            } finally {
                inflater.reset();
            }
        }
        return false;
    }

    public static void m(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static boolean m0(Context context) {
        return f6985a >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    public static int n(long j10, long j11) {
        int i9 = (j10 > j11 ? 1 : (j10 == j11 ? 0 : -1));
        if (i9 < 0) {
            return -1;
        }
        return i9 == 0 ? 0 : 1;
    }

    public static boolean n0(int i9) {
        return i9 == 536870912 || i9 == 805306368 || i9 == 4;
    }

    public static float o(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f10, f12));
    }

    public static boolean o0(int i9) {
        return i9 == 3 || i9 == 2 || i9 == 268435456 || i9 == 536870912 || i9 == 805306368 || i9 == 4;
    }

    public static int p(int i9, int i10, int i11) {
        return Math.max(i10, Math.min(i9, i11));
    }

    public static boolean p0(int i9) {
        return i9 == 10 || i9 == 13;
    }

    public static long q(long j10, long j11, long j12) {
        return Math.max(j11, Math.min(j10, j12));
    }

    public static boolean q0(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || ShareInternalUtility.STAGING_PARAM.equals(scheme);
    }

    public static int r(byte[] bArr, int i9, int i10, int i11) {
        while (i9 < i10) {
            i11 = f6998n[((i11 >>> 24) ^ (bArr[i9] & 255)) & 255] ^ (i11 << 8);
            i9++;
        }
        return i11;
    }

    public static boolean r0(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static int s(byte[] bArr, int i9, int i10, int i11) {
        while (i9 < i10) {
            i11 = f6999o[i11 ^ (bArr[i9] & 255)];
            i9++;
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread s0(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static Handler t(Looper looper, @Nullable Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static int t0(int[] iArr, int i9) {
        for (int i10 = 0; i10 < iArr.length; i10++) {
            if (iArr[i10] == i9) {
                return i10;
            }
        }
        return -1;
    }

    public static Handler u() {
        return v(null);
    }

    private static String u0(String str) {
        int i9 = 0;
        while (true) {
            String[] strArr = f6997m;
            if (i9 >= strArr.length) {
                return str;
            }
            if (str.startsWith(strArr[i9])) {
                return strArr[i9 + 1] + str.substring(strArr[i9].length());
            }
            i9 += 2;
        }
    }

    public static Handler v(@Nullable Handler.Callback callback) {
        return t((Looper) a.h(Looper.myLooper()), callback);
    }

    public static <T> void v0(List<T> list, int i9, int i10, int i11) {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (int i12 = (i10 - i9) - 1; i12 >= 0; i12--) {
            arrayDeque.addFirst(list.remove(i9 + i12));
        }
        list.addAll(Math.min(i11, list.size()), arrayDeque);
    }

    public static Handler w() {
        return x(null);
    }

    public static long w0(long j10) {
        return (j10 == -9223372036854775807L || j10 == Long.MIN_VALUE) ? j10 : j10 * 1000;
    }

    public static Handler x(@Nullable Handler.Callback callback) {
        return t(K(), callback);
    }

    public static ExecutorService x0(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.google.android.exoplayer2.util.k0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread s02;
                s02 = l0.s0(str, runnable);
                return s02;
            }
        });
    }

    private static HashMap<String, String> y() {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap<String, String> hashMap = new HashMap<>(iSOLanguages.length + f6996l.length);
        int i9 = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    hashMap.put(iSO3Language, str);
                }
            } catch (MissingResourceException unused) {
            }
        }
        while (true) {
            String[] strArr = f6996l;
            if (i9 >= strArr.length) {
                return hashMap;
            }
            hashMap.put(strArr[i9], strArr[i9 + 1]);
            i9 += 2;
        }
    }

    public static String y0(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        if (!replace.isEmpty() && !replace.equals("und")) {
            str = replace;
        }
        String f10 = com.google.common.base.c.f(str);
        String str2 = H0(f10, "-")[0];
        if (f6995k == null) {
            f6995k = y();
        }
        String str3 = f6995k.get(str2);
        if (str3 != null) {
            f10 = str3 + f10.substring(str2.length());
            str2 = str3;
        }
        return ("no".equals(str2) || com.huawei.hms.opendevice.i.TAG.equals(str2) || Language.SIMPLE_CHINESE.equals(str2)) ? u0(f10) : f10;
    }

    public static String z(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static <T> T[] z0(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }
}
