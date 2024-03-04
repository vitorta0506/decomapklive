package com.tencent.thumbplayer.g.h;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import androidx.annotation.NonNull;
import com.facebook.internal.AnalyticsEvents;
import com.tencent.thumbplayer.core.common.TPDecoderType;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.g.b.e;
import com.tencent.thumbplayer.g.b.f;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4.dex */
public final class c {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f34106a = {"csd-0", "csd-1", "csd-2"};

    /* renamed from: b  reason: collision with root package name */
    private static boolean f34107b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f34108c;

    /* renamed from: d  reason: collision with root package name */
    private static final Set<String> f34109d;

    static {
        HashSet hashSet = new HashSet();
        f34109d = hashSet;
        hashSet.add("1601");
        hashSet.add("1713");
        hashSet.add("1714");
        hashSet.add("A10-70F");
        hashSet.add("A10-70L");
        hashSet.add("A1601");
        hashSet.add("A2016a40");
        hashSet.add("A7000-a");
        hashSet.add("A7000plus");
        hashSet.add("A7010a48");
        hashSet.add("A7020a48");
        hashSet.add("AquaPowerM");
        hashSet.add("ASUS_X00AD_2");
        hashSet.add("Aura_Note_2");
        hashSet.add("BLACK-1X");
        hashSet.add("BRAVIA_ATV2");
        hashSet.add("BRAVIA_ATV3_4K");
        hashSet.add("C1");
        hashSet.add("ComioS1");
        hashSet.add("CP8676_I02");
        hashSet.add("CPH1609");
        hashSet.add("CPY83_I00");
        hashSet.add("cv1");
        hashSet.add("cv3");
        hashSet.add("deb");
        hashSet.add("E5643");
        hashSet.add("ELUGA_A3_Pro");
        hashSet.add("ELUGA_Note");
        hashSet.add("ELUGA_Prim");
        hashSet.add("ELUGA_Ray_X");
        hashSet.add("EverStar_S");
        hashSet.add("F3111");
        hashSet.add("F3113");
        hashSet.add("F3116");
        hashSet.add("F3211");
        hashSet.add("F3213");
        hashSet.add("F3215");
        hashSet.add("F3311");
        hashSet.add("flo");
        hashSet.add("fugu");
        hashSet.add("GiONEE_CBL7513");
        hashSet.add("GiONEE_GBL7319");
        hashSet.add("GIONEE_GBL7360");
        hashSet.add("GIONEE_SWW1609");
        hashSet.add("GIONEE_SWW1627");
        hashSet.add("GIONEE_SWW1631");
        hashSet.add("GIONEE_WBL5708");
        hashSet.add("GIONEE_WBL7365");
        hashSet.add("GIONEE_WBL7519");
        hashSet.add("griffin");
        hashSet.add("htc_e56ml_dtul");
        hashSet.add("hwALE-H");
        hashSet.add("HWBLN-H");
        hashSet.add("HWCAM-H");
        hashSet.add("HWVNS-H");
        hashSet.add("HWWAS-H");
        hashSet.add("i9031");
        hashSet.add("iball8735_9806");
        hashSet.add("Infinix-X572");
        hashSet.add("iris60");
        hashSet.add("itel_S41");
        hashSet.add("j2xlteins");
        hashSet.add("JGZ");
        hashSet.add("K50a40");
        hashSet.add("kate");
        hashSet.add("l5460");
        hashSet.add("le_x6");
        hashSet.add("LS-5017");
        hashSet.add("M5c");
        hashSet.add("manning");
        hashSet.add("marino_f");
        hashSet.add("MEIZU_M5");
        hashSet.add("mh");
        hashSet.add("mido");
        hashSet.add(com.huawei.hms.opendevice.c.f27627a);
        hashSet.add("namath");
        hashSet.add("nicklaus_f");
        hashSet.add("NX541J");
        hashSet.add("NX573J");
        hashSet.add("OnePlus5T");
        hashSet.add("p212");
        hashSet.add("P681");
        hashSet.add("P85");
        hashSet.add("panell_d");
        hashSet.add("panell_dl");
        hashSet.add("panell_ds");
        hashSet.add("panell_dt");
        hashSet.add("PB2-670M");
        hashSet.add("PGN528");
        hashSet.add("PGN610");
        hashSet.add("PGN611");
        hashSet.add("Phantom6");
        hashSet.add("Pixi4-7_3G");
        hashSet.add("Pixi5-10_4G");
        hashSet.add("PLE");
        hashSet.add("PRO7S");
        hashSet.add("Q350");
        hashSet.add("Q4260");
        hashSet.add("Q427");
        hashSet.add("Q4310");
        hashSet.add("Q5");
        hashSet.add("QM16XE_U");
        hashSet.add("QX1");
        hashSet.add("santoni");
        hashSet.add("Slate_Pro");
        hashSet.add("SVP-DTV15");
        hashSet.add("s905x018");
        hashSet.add("taido_row");
        hashSet.add("TB3-730F");
        hashSet.add("TB3-730X");
        hashSet.add("TB3-850F");
        hashSet.add("TB3-850M");
        hashSet.add("tcl_eu");
        hashSet.add("V1");
        hashSet.add("V23GB");
        hashSet.add("V5");
        hashSet.add("vernee_M5");
        hashSet.add("watson");
        hashSet.add("whyred");
        hashSet.add("woods_f");
        hashSet.add("woods_fn");
        hashSet.add("X3_HK");
        hashSet.add("XE2X");
        hashSet.add("XT1663");
        hashSet.add("Z12_PRO");
        hashSet.add("Z80");
    }

    public static int a(int i9, int i10) {
        return ((i9 + i10) - 1) / i10;
    }

    public static int a(@NonNull f fVar, @NonNull e eVar) {
        if (eVar.f34002i != -1) {
            int i9 = 0;
            for (int i10 = 0; i10 < eVar.f33994a.size(); i10++) {
                i9 += eVar.f33994a.get(i10).length;
            }
            return eVar.f34002i + i9;
        }
        return a(eVar.f34003j, eVar.f33995b, eVar.f33996c, fVar.f34010d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(@NonNull String str, int i9, int i10, boolean z10) {
        char c10;
        int i11;
        if (i9 == -1 || i10 == -1) {
            return -1;
        }
        str.hashCode();
        int i12 = 4;
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 1331836730:
                if (str.equals(TPDecoderType.TP_CODEC_MIMETYPE_AVC)) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 1599127256:
                if (str.equals(TPDecoderType.TP_CODEC_MIMETYPE_VP8)) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 1599127257:
                if (str.equals(TPDecoderType.TP_CODEC_MIMETYPE_VP9)) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
            case 2:
            case 4:
                i11 = i9 * i10;
                i12 = 2;
                break;
            case 1:
            case 5:
                i11 = i9 * i10;
                break;
            case 3:
                if (!"BRAVIA 4K 2015".equals(TPSystemInfo.getDeviceName()) && (!"Amazon".equals(TPSystemInfo.getDeviceManufacturer()) || (!"KFSOWI".equals(TPSystemInfo.getDeviceName()) && (!"AFTS".equals(TPSystemInfo.getDeviceName()) || !z10)))) {
                    i11 = a(i9, 16) * a(i10, 16) * 16 * 16;
                    i12 = 2;
                    break;
                } else {
                    return -1;
                }
                break;
            default:
                return -1;
        }
        return (i11 * 3) / (i12 * 2);
    }

    @NonNull
    public static String a(@NonNull MediaCodec mediaCodec) {
        return mediaCodec.getName();
    }

    @NonNull
    public static ArrayList<byte[]> a(@NonNull MediaFormat mediaFormat) {
        ArrayList<byte[]> arrayList = new ArrayList<>();
        int i9 = 0;
        while (true) {
            String[] strArr = f34106a;
            if (i9 >= strArr.length) {
                return arrayList;
            }
            ByteBuffer byteBuffer = mediaFormat.getByteBuffer(strArr[i9]);
            if (byteBuffer != null) {
                arrayList.add(byteBuffer.array());
            }
            i9++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0065, code lost:
        if (r2 == 1) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0067, code lost:
        if (r2 == 2) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0072 A[Catch: all -> 0x008d, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0012, B:10:0x0018, B:13:0x0022, B:15:0x002a, B:16:0x002c, B:23:0x0046, B:26:0x0050, B:29:0x005a, B:37:0x006c, B:39:0x0072, B:40:0x0087, B:36:0x006a, B:41:0x0089), top: B:47:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a() {
        /*
            java.lang.Class<com.tencent.thumbplayer.g.h.c> r0 = com.tencent.thumbplayer.g.h.c.class
            monitor-enter(r0)
            boolean r1 = com.tencent.thumbplayer.g.h.c.f34107b     // Catch: java.lang.Throwable -> L8d
            if (r1 != 0) goto L89
            java.lang.String r1 = "dangal"
            java.lang.String r2 = android.os.Build.DEVICE     // Catch: java.lang.Throwable -> L8d
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> L8d
            r3 = 1
            if (r1 != 0) goto L6a
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L8d
            r4 = 27
            if (r1 > r4) goto L20
            java.lang.String r5 = "HWEML"
            boolean r5 = r5.equals(r2)     // Catch: java.lang.Throwable -> L8d
            if (r5 != 0) goto L6a
        L20:
            if (r1 >= r4) goto L6c
            java.util.Set<java.lang.String> r1 = com.tencent.thumbplayer.g.h.c.f34109d     // Catch: java.lang.Throwable -> L8d
            boolean r1 = r1.contains(r2)     // Catch: java.lang.Throwable -> L8d
            if (r1 == 0) goto L2c
            com.tencent.thumbplayer.g.h.c.f34108c = r3     // Catch: java.lang.Throwable -> L8d
        L2c:
            java.lang.String r1 = com.tencent.thumbplayer.core.common.TPSystemInfo.getDeviceName()     // Catch: java.lang.Throwable -> L8d
            r2 = -1
            int r4 = r1.hashCode()     // Catch: java.lang.Throwable -> L8d
            r5 = -594534941(0xffffffffdc901de3, float:-3.2452206E17)
            r6 = 2
            if (r4 == r5) goto L5a
            r5 = 2006354(0x1e9d52, float:2.811501E-39)
            if (r4 == r5) goto L50
            r5 = 2006367(0x1e9d5f, float:2.811519E-39)
            if (r4 == r5) goto L46
            goto L63
        L46:
            java.lang.String r4 = "AFTN"
            boolean r1 = r1.equals(r4)     // Catch: java.lang.Throwable -> L8d
            if (r1 == 0) goto L63
            r2 = 1
            goto L63
        L50:
            java.lang.String r4 = "AFTA"
            boolean r1 = r1.equals(r4)     // Catch: java.lang.Throwable -> L8d
            if (r1 == 0) goto L63
            r2 = 0
            goto L63
        L5a:
            java.lang.String r4 = "JSN-L21"
            boolean r1 = r1.equals(r4)     // Catch: java.lang.Throwable -> L8d
            if (r1 == 0) goto L63
            r2 = 2
        L63:
            if (r2 == 0) goto L6a
            if (r2 == r3) goto L6a
            if (r2 == r6) goto L6a
            goto L6c
        L6a:
            com.tencent.thumbplayer.g.h.c.f34108c = r3     // Catch: java.lang.Throwable -> L8d
        L6c:
            boolean r1 = com.tencent.thumbplayer.g.h.b.a()     // Catch: java.lang.Throwable -> L8d
            if (r1 == 0) goto L87
            java.lang.String r1 = "TUtils"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8d
            java.lang.String r4 = "deviceNeedsSetOutputSurfaceWorkaround:"
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L8d
            boolean r4 = com.tencent.thumbplayer.g.h.c.f34108c     // Catch: java.lang.Throwable -> L8d
            r2.append(r4)     // Catch: java.lang.Throwable -> L8d
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L8d
            com.tencent.thumbplayer.g.h.b.b(r1, r2)     // Catch: java.lang.Throwable -> L8d
        L87:
            com.tencent.thumbplayer.g.h.c.f34107b = r3     // Catch: java.lang.Throwable -> L8d
        L89:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L8d
            boolean r0 = com.tencent.thumbplayer.g.h.c.f34108c
            return r0
        L8d:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L8d
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.g.h.c.a():boolean");
    }

    public static boolean a(@NonNull MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return c(codecCapabilities);
    }

    public static boolean a(@NonNull String str) {
        return str.contains(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
    }

    public static boolean b(@NonNull MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return d(codecCapabilities);
    }

    private static boolean c(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    private static boolean d(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }
}
