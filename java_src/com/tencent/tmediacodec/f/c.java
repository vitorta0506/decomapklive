package com.tencent.tmediacodec.f;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.facebook.internal.AnalyticsEvents;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.thumbplayer.core.common.TPDecoderType;
import com.tencent.tmediacodec.b.e;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public final class c {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f34623a = {"csd-0", "csd-1", "csd-2"};

    /* renamed from: b  reason: collision with root package name */
    private static boolean f34624b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f34625c;

    public static boolean a(@NonNull String str) {
        return str.contains(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
    }

    public static boolean b(@NonNull MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    @NonNull
    public static String a(@NonNull MediaCodec mediaCodec) {
        return mediaCodec.getName();
    }

    @NonNull
    public static String a(@NonNull Surface surface) {
        try {
            Field a10 = b.a(Surface.class, "mName");
            a10.setAccessible(true);
            return String.valueOf(a10.get(surface));
        } catch (Throwable th2) {
            a.b("TUtils", "getSurfaceTextureName failed", th2);
            return "";
        }
    }

    public static int a(@NonNull e eVar, @NonNull com.tencent.tmediacodec.b.d dVar) {
        if (dVar.f34537i != -1) {
            int i9 = 0;
            for (int i10 = 0; i10 < dVar.f34529a.size(); i10++) {
                i9 += dVar.f34529a.get(i10).length;
            }
            return dVar.f34537i + i9;
        }
        return a(dVar.f34538j, dVar.f34530b, dVar.f34531c, eVar.f34545d);
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
                if (!"BRAVIA 4K 2015".equals(LiteavSystemInfo.getModel()) && (!"Amazon".equals(LiteavSystemInfo.getManufacturer()) || (!"KFSOWI".equals(LiteavSystemInfo.getModel()) && (!"AFTS".equals(LiteavSystemInfo.getModel()) || !z10)))) {
                    i11 = a(i9) * a(i10) * 16 * 16;
                    i12 = 2;
                    break;
                } else {
                    return -1;
                }
            default:
                return -1;
        }
        return (i11 * 3) / (i12 * 2);
    }

    private static int a(int i9) {
        return ((i9 + 16) - 1) / 16;
    }

    @NonNull
    public static ArrayList<byte[]> a(@NonNull MediaFormat mediaFormat) {
        ArrayList<byte[]> arrayList = new ArrayList<>();
        int i9 = 0;
        while (true) {
            String[] strArr = f34623a;
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

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0061, code lost:
        if (r3 == 1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0063, code lost:
        if (r3 == 2) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006e A[Catch: all -> 0x0089, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0014, B:10:0x001a, B:13:0x0028, B:20:0x0042, B:23:0x004c, B:26:0x0056, B:34:0x0068, B:36:0x006e, B:37:0x0083, B:33:0x0066, B:38:0x0085), top: B:44:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a() {
        /*
            java.lang.Class<com.tencent.tmediacodec.f.c> r0 = com.tencent.tmediacodec.f.c.class
            monitor-enter(r0)
            boolean r1 = com.tencent.tmediacodec.f.c.f34624b     // Catch: java.lang.Throwable -> L89
            if (r1 != 0) goto L85
            java.lang.String r1 = "dangal"
            java.lang.String r2 = com.tencent.liteav.base.system.LiteavSystemInfo.getModel()     // Catch: java.lang.Throwable -> L89
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> L89
            r2 = 1
            if (r1 != 0) goto L66
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L89
            r3 = 27
            if (r1 > r3) goto L26
            java.lang.String r4 = "EML-L29"
            java.lang.String r5 = com.tencent.liteav.base.system.LiteavSystemInfo.getModel()     // Catch: java.lang.Throwable -> L89
            boolean r4 = r4.equals(r5)     // Catch: java.lang.Throwable -> L89
            if (r4 != 0) goto L66
        L26:
            if (r1 >= r3) goto L68
            java.lang.String r1 = com.tencent.liteav.base.system.LiteavSystemInfo.getModel()     // Catch: java.lang.Throwable -> L89
            r3 = -1
            int r4 = r1.hashCode()     // Catch: java.lang.Throwable -> L89
            r5 = -594534941(0xffffffffdc901de3, float:-3.2452206E17)
            r6 = 2
            if (r4 == r5) goto L56
            r5 = 2006354(0x1e9d52, float:2.811501E-39)
            if (r4 == r5) goto L4c
            r5 = 2006367(0x1e9d5f, float:2.811519E-39)
            if (r4 == r5) goto L42
            goto L5f
        L42:
            java.lang.String r4 = "AFTN"
            boolean r1 = r1.equals(r4)     // Catch: java.lang.Throwable -> L89
            if (r1 == 0) goto L5f
            r3 = 1
            goto L5f
        L4c:
            java.lang.String r4 = "AFTA"
            boolean r1 = r1.equals(r4)     // Catch: java.lang.Throwable -> L89
            if (r1 == 0) goto L5f
            r3 = 0
            goto L5f
        L56:
            java.lang.String r4 = "JSN-L21"
            boolean r1 = r1.equals(r4)     // Catch: java.lang.Throwable -> L89
            if (r1 == 0) goto L5f
            r3 = 2
        L5f:
            if (r3 == 0) goto L66
            if (r3 == r2) goto L66
            if (r3 == r6) goto L66
            goto L68
        L66:
            com.tencent.tmediacodec.f.c.f34625c = r2     // Catch: java.lang.Throwable -> L89
        L68:
            boolean r1 = com.tencent.tmediacodec.f.a.a()     // Catch: java.lang.Throwable -> L89
            if (r1 == 0) goto L83
            java.lang.String r1 = "TUtils"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L89
            java.lang.String r4 = "deviceNeedsSetOutputSurfaceWorkaround:"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L89
            boolean r4 = com.tencent.tmediacodec.f.c.f34625c     // Catch: java.lang.Throwable -> L89
            r3.append(r4)     // Catch: java.lang.Throwable -> L89
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L89
            com.tencent.tmediacodec.f.a.b(r1, r3)     // Catch: java.lang.Throwable -> L89
        L83:
            com.tencent.tmediacodec.f.c.f34624b = r2     // Catch: java.lang.Throwable -> L89
        L85:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L89
            boolean r0 = com.tencent.tmediacodec.f.c.f34625c
            return r0
        L89:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L89
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tmediacodec.f.c.a():boolean");
    }

    public static boolean a(@NonNull MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }
}
