package com.tencent.thumbplayer.core.common;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class TPUnitendCodecUtils {
    private static int DolbyVisionProfileDvavPen = 1;
    private static int DolbyVisionProfileDvavPer = 0;
    private static int DolbyVisionProfileDvavSe = 9;
    private static int DolbyVisionProfileDvheDen = 3;
    private static int DolbyVisionProfileDvheDer = 2;
    private static int DolbyVisionProfileDvheDtb = 7;
    private static int DolbyVisionProfileDvheDth = 6;
    private static int DolbyVisionProfileDvheDtr = 4;
    private static int DolbyVisionProfileDvheSt = 8;
    private static int DolbyVisionProfileDvheStn = 5;
    private static HashMap<String, String> mSecureDecoderNameMaps;

    public static int convertOmxProfileToDolbyVision(int i9) {
        int i10 = i9 != 1 ? i9 != 2 ? i9 != 4 ? i9 != 8 ? i9 != 16 ? i9 != 32 ? i9 != 64 ? i9 != 128 ? i9 != 256 ? i9 != 512 ? 0 : DolbyVisionProfileDvavSe : DolbyVisionProfileDvheSt : DolbyVisionProfileDvheDtb : DolbyVisionProfileDvheDth : DolbyVisionProfileDvheStn : DolbyVisionProfileDvheDtr : DolbyVisionProfileDvheDen : DolbyVisionProfileDvheDer : DolbyVisionProfileDvavPen : DolbyVisionProfileDvavPer;
        TPNativeLog.printLog(2, "TPUnitendCodecUtils", "convertOmxProfileToDolbyVision omxProfile:" + i9 + " dolbyVisionProfile:" + i10);
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00af, code lost:
        com.tencent.thumbplayer.core.common.TPNativeLog.printLog(2, "TPUnitendCodecUtils", "getDolbyVisionDecoderName name:".concat(r9));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized java.lang.String getDolbyVisionDecoderName(java.lang.String r16, int r17, int r18, boolean r19) {
        /*
            r0 = r16
            r1 = r17
            r2 = r19
            java.lang.Class<com.tencent.thumbplayer.core.common.TPUnitendCodecUtils> r3 = com.tencent.thumbplayer.core.common.TPUnitendCodecUtils.class
            monitor-enter(r3)
            java.lang.String r4 = "video/dolby-vision"
            boolean r4 = android.text.TextUtils.equals(r4, r0)     // Catch: java.lang.Throwable -> Lc3
            r5 = 0
            if (r4 != 0) goto L15
            monitor-exit(r3)
            return r5
        L15:
            android.media.MediaCodecList r4 = new android.media.MediaCodecList     // Catch: java.lang.Throwable -> Lc3
            r6 = 1
            r4.<init>(r6)     // Catch: java.lang.Throwable -> Lc3
            android.media.MediaCodecInfo[] r4 = r4.getCodecInfos()     // Catch: java.lang.Throwable -> Lc3
            if (r4 != 0) goto L23
            monitor-exit(r3)
            return r5
        L23:
            int r6 = r4.length     // Catch: java.lang.Throwable -> Lc3
            r9 = r5
            r8 = 0
        L26:
            if (r8 >= r6) goto Lc1
            r10 = r4[r8]     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r11 = "TPUnitendCodecUtils"
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r13 = "getDolbyVisionDecoderName name:"
            r12.<init>(r13)     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r13 = r10.getName()     // Catch: java.lang.Throwable -> Lc3
            r12.append(r13)     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r12 = r12.toString()     // Catch: java.lang.Throwable -> Lc3
            r13 = 2
            com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r13, r11, r12)     // Catch: java.lang.Throwable -> Lc3
            boolean r11 = r10.isEncoder()     // Catch: java.lang.Throwable -> Lc3
            if (r11 != 0) goto Lbc
            android.media.MediaCodecInfo$CodecCapabilities r11 = r10.getCapabilitiesForType(r0)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> Lc3
            goto L4e
        L4d:
            r11 = r5
        L4e:
            if (r11 == 0) goto Lbc
            android.media.MediaCodecInfo$CodecProfileLevel[] r12 = r11.profileLevels     // Catch: java.lang.Throwable -> Lc3
            r14 = 0
        L53:
            int r15 = r12.length     // Catch: java.lang.Throwable -> Lc3
            if (r14 >= r15) goto Lad
            r15 = r12[r14]     // Catch: java.lang.Throwable -> Lc3
            int r15 = r15.profile     // Catch: java.lang.Throwable -> Lc3
            int r15 = convertOmxProfileToDolbyVision(r15)     // Catch: java.lang.Throwable -> Lc3
            if (r15 != r1) goto La8
            java.lang.String r5 = "TPUnitendCodecUtils"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r13 = "getDolbyVisionDecoderName i:"
            r7.<init>(r13)     // Catch: java.lang.Throwable -> Lc3
            r7.append(r14)     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r13 = " profile:"
            r7.append(r13)     // Catch: java.lang.Throwable -> Lc3
            r7.append(r15)     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r13 = " dvProfile:"
            r7.append(r13)     // Catch: java.lang.Throwable -> Lc3
            r7.append(r1)     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r13 = " bSecure:"
            r7.append(r13)     // Catch: java.lang.Throwable -> Lc3
            r7.append(r2)     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r13 = " name:"
            r7.append(r13)     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r13 = r10.getName()     // Catch: java.lang.Throwable -> Lc3
            r7.append(r13)     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> Lc3
            r13 = 2
            com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r13, r5, r7)     // Catch: java.lang.Throwable -> Lc3
            if (r2 == 0) goto La2
            java.lang.String r5 = "secure-playback"
            boolean r5 = r11.isFeatureSupported(r5)     // Catch: java.lang.Throwable -> Lc3
            if (r5 == 0) goto La8
        La2:
            java.lang.String r5 = r10.getName()     // Catch: java.lang.Throwable -> Lc3
            r9 = r5
            goto Lad
        La8:
            int r14 = r14 + 1
            r5 = 0
            r13 = 2
            goto L53
        Lad:
            if (r9 == 0) goto Lbc
            java.lang.String r0 = "TPUnitendCodecUtils"
            java.lang.String r1 = "getDolbyVisionDecoderName name:"
            java.lang.String r1 = r1.concat(r9)     // Catch: java.lang.Throwable -> Lc3
            r2 = 2
            com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r2, r0, r1)     // Catch: java.lang.Throwable -> Lc3
            goto Lc1
        Lbc:
            int r8 = r8 + 1
            r5 = 0
            goto L26
        Lc1:
            monitor-exit(r3)
            return r9
        Lc3:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPUnitendCodecUtils.getDolbyVisionDecoderName(java.lang.String, int, int, boolean):java.lang.String");
    }

    public static synchronized String getSecureDecoderName(String str) {
        MediaCodecInfo.CodecCapabilities codecCapabilities;
        synchronized (TPUnitendCodecUtils.class) {
            String str2 = null;
            if (TextUtils.equals(TPDecoderType.TP_CODEC_MIMETYPE_AVC, str) || TextUtils.equals("video/hevc", str) || TextUtils.equals(TPDecoderType.TP_CODEC_MIMETYPE_DOLBYVISION, str)) {
                if (mSecureDecoderNameMaps == null) {
                    mSecureDecoderNameMaps = new HashMap<>();
                }
                if (mSecureDecoderNameMaps.containsKey(str)) {
                    return mSecureDecoderNameMaps.get(str);
                }
                MediaCodecInfo[] codecInfos = new MediaCodecList(1).getCodecInfos();
                if (codecInfos == null) {
                    return null;
                }
                int length = codecInfos.length;
                int i9 = 0;
                while (true) {
                    if (i9 >= length) {
                        break;
                    }
                    MediaCodecInfo mediaCodecInfo = codecInfos[i9];
                    if (!mediaCodecInfo.isEncoder()) {
                        try {
                            codecCapabilities = mediaCodecInfo.getCapabilitiesForType(str);
                        } catch (Exception unused) {
                            codecCapabilities = null;
                        }
                        if (codecCapabilities != null && codecCapabilities.isFeatureSupported("secure-playback")) {
                            str2 = mediaCodecInfo.getName();
                            break;
                        }
                    }
                    i9++;
                }
                mSecureDecoderNameMaps.put(str, str2);
                return str2;
            }
            return null;
        }
    }
}
