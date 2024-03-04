package com.tencent.thumbplayer.core.common;

import android.content.Context;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.core.common.TPCodecCapability;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class TPPlayerDecoderCapability {
    private static String TAG = "TPPlayerDecoderCapability";
    private static boolean mIsLibLoaded;
    private long mNativeContext = 0;

    static {
        try {
            TPNativeLibraryLoader.loadLibIfNeeded(null);
            mIsLibLoaded = true;
        } catch (UnsupportedOperationException e10) {
            TPNativeLog.printLog(4, e10.getMessage());
            mIsLibLoaded = false;
        }
    }

    private static native boolean _addACodecBlacklist(int i9, int i10, TPCodecCapability.TPACodecPropertyRange tPACodecPropertyRange);

    private static native boolean _addACodecWhitelist(int i9, int i10, TPCodecCapability.TPACodecPropertyRange tPACodecPropertyRange);

    private static native boolean _addVCodecBlacklist(int i9, int i10, TPCodecCapability.TPVCodecPropertyRange tPVCodecPropertyRange);

    private static native boolean _addVCodecWhitelist(int i9, int i10, TPCodecCapability.TPVCodecPropertyRange tPVCodecPropertyRange);

    private static native HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> _getDecoderMaxCapabilityMap(int i9);

    private static native boolean _isACodecCapabilitySupport(int i9, int i10, int i11, int i12, int i13, int i14, int i15);

    private static native boolean _isVCodecCapabilitySupport(int i9, int i10, int i11, int i12, int i13, int i14, int i15);

    public static boolean addACodecBlacklist(int i9, int i10, TPCodecCapability.TPACodecPropertyRange tPACodecPropertyRange) {
        if (isLibLoaded()) {
            try {
                return _addACodecBlacklist(i9, i10, tPACodecPropertyRange);
            } catch (Throwable th2) {
                TPNativeLog.printLog(4, th2.getMessage());
                throw new TPNativeLibraryException("Failed to call _addACodecBlacklist.");
            }
        }
        throw new TPNativeLibraryException("addACodecBlacklist: Failed to load native library.");
    }

    public static boolean addACodecWhitelist(int i9, int i10, TPCodecCapability.TPACodecPropertyRange tPACodecPropertyRange) {
        if (isLibLoaded()) {
            try {
                return _addACodecWhitelist(i9, i10, tPACodecPropertyRange);
            } catch (Throwable th2) {
                TPNativeLog.printLog(4, th2.getMessage());
                throw new TPNativeLibraryException("Failed to call _addVCodecWhitelist.");
            }
        }
        throw new TPNativeLibraryException("addACodecWhitelist: Failed to load native library.");
    }

    public static boolean addDRMLevel1Blacklist(int i9) {
        return TPCodecUtils.addDRMLevel1Blacklist(i9);
    }

    public static boolean addHDRBlackList(int i9, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        return TPCodecUtils.addHDRBlackList(i9, TPSystemInfo.getDeviceName(), tPHdrSupportVersionRange);
    }

    public static boolean addHDRVideoDecoderTypeWhiteList(int i9, int i10, @NonNull TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        return TPCodecUtils.addHDRVideoDecoderTypeWhiteList(i9, i10, tPHdrSupportVersionRange);
    }

    public static boolean addHDRWhiteList(int i9, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        return TPCodecUtils.addHDRWhiteList(i9, TPSystemInfo.getDeviceName(), tPHdrSupportVersionRange);
    }

    public static boolean addVCodecBlacklist(int i9, int i10, TPCodecCapability.TPVCodecPropertyRange tPVCodecPropertyRange) {
        if (isLibLoaded()) {
            try {
                return _addVCodecBlacklist(i9, i10, tPVCodecPropertyRange);
            } catch (Throwable th2) {
                TPNativeLog.printLog(4, th2.getMessage());
                throw new TPNativeLibraryException("Failed to call _addVCodecBlacklist.");
            }
        }
        throw new TPNativeLibraryException("addVCodecBlacklist: Failed to load native library.");
    }

    public static boolean addVCodecWhitelist(int i9, int i10, TPCodecCapability.TPVCodecPropertyRange tPVCodecPropertyRange) {
        if (isLibLoaded()) {
            try {
                return _addVCodecWhitelist(i9, i10, tPVCodecPropertyRange);
            } catch (Throwable th2) {
                TPNativeLog.printLog(4, th2.getMessage());
                throw new TPNativeLibraryException("Failed to call _addVCodecWhitelist.");
            }
        }
        throw new TPNativeLibraryException("addVCodecWhitelist :Failed to load native library.");
    }

    public static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getVCodecDecoderMaxCapabilityMap(int i9) {
        if (isLibLoaded()) {
            try {
                return _getDecoderMaxCapabilityMap(i9);
            } catch (Throwable th2) {
                TPNativeLog.printLog(4, th2.getMessage());
                throw new TPNativeLibraryException("Failed to call _getDecoderMaxCapabilityMap.");
            }
        }
        throw new TPNativeLibraryException("Failed to load native library.");
    }

    public static synchronized void init(Context context, boolean z10) {
        synchronized (TPPlayerDecoderCapability.class) {
            TPCodecUtils.init(context, z10);
        }
    }

    public static boolean isACodecCapabilitySupport(int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
        String str;
        if (2 == i9) {
            if (i10 == 5012) {
                str = "audio/flac";
            } else if (i10 != 5040) {
                switch (i10) {
                    case 5002:
                        str = "audio/aac";
                        break;
                    case 5003:
                        str = "audio/ac3";
                        break;
                    case 5004:
                        str = "audio/dts";
                        break;
                    default:
                        str = "";
                        break;
                }
            } else {
                str = "audio/eac3";
            }
            if (TPCodecUtils.isInMediaCodecWhiteList(str)) {
                return true;
            }
            if (TPCodecUtils.isAMediaCodecBlackListModel() || TPCodecUtils.isBlackListType(str)) {
                return false;
            }
        }
        if (isLibLoaded()) {
            try {
                return _isACodecCapabilitySupport(i9, i10, i11, i12, i13, i14, i15);
            } catch (Throwable th2) {
                TPNativeLog.printLog(4, th2.getMessage());
                throw new TPNativeLibraryException("Failed to call _isACodecCapabilitySupport.");
            }
        }
        throw new TPNativeLibraryException("Failed to load native library.");
    }

    public static boolean isDDPlusSupported() {
        return TPCodecUtils.isMediaCodecDDPlusSupported();
    }

    public static boolean isDolbyDSSupported() {
        return TPCodecUtils.isMediaCodecDolbyDSSupported();
    }

    public static boolean isHDRsupport(int i9, int i10, int i11) {
        return TPCodecUtils.isHDRsupport(i9, i10, i11);
    }

    private static boolean isLibLoaded() {
        return mIsLibLoaded;
    }

    public static boolean isVCodecCapabilitySupport(int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
        if (102 == i9) {
            String str = i10 != 26 ? i10 != 138 ? i10 != 166 ? i10 != 172 ? i10 != 1029 ? "" : TPDecoderType.TP_CODEC_MIMETYPE_AV1 : "video/hevc" : TPDecoderType.TP_CODEC_MIMETYPE_VP9 : TPDecoderType.TP_CODEC_MIMETYPE_VP8 : TPDecoderType.TP_CODEC_MIMETYPE_AVC;
            if (TPCodecUtils.isInMediaCodecWhiteList(str)) {
                return true;
            }
            if (TPCodecUtils.isVMediaCodecBlackListModel() || TPCodecUtils.isBlackListType(str)) {
                return false;
            }
        }
        if (isLibLoaded()) {
            try {
                return _isVCodecCapabilitySupport(i9, i10, i11, i12, i13, i14, i15);
            } catch (Throwable th2) {
                TPNativeLog.printLog(4, th2.getMessage());
                throw new TPNativeLibraryException("Failed to call _isVCodecCapabilitySupport.");
            }
        }
        throw new TPNativeLibraryException("Failed to load native library.");
    }

    public static void setMediaCodecPreferredSoftwareComponent(boolean z10) {
        TPCodecUtils.setMediaCodecPreferredSoftwareComponent(z10);
    }
}
