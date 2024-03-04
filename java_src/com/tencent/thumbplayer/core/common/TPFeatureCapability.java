package com.tencent.thumbplayer.core.common;
/* loaded from: classes4.dex */
public class TPFeatureCapability {
    private static String TAG = "TPFeatureCapability";
    private static boolean mIsLibLoaded;

    static {
        try {
            TPNativeLibraryLoader.loadLibIfNeeded(null);
            mIsLibLoaded = true;
        } catch (UnsupportedOperationException e10) {
            TPNativeLog.printLog(4, e10.getMessage());
            mIsLibLoaded = false;
        }
    }

    private static native boolean _isFeatureSupport(int i9);

    public static boolean isFeatureSupport(int i9) {
        if (isLibLoaded()) {
            try {
                return _isFeatureSupport(i9);
            } catch (Throwable th2) {
                TPNativeLog.printLog(4, th2.getMessage());
                throw new TPNativeLibraryException("Failed to call _isFeatureSupport.");
            }
        }
        throw new TPNativeLibraryException("isFeatureSupport: Failed to load native library.");
    }

    private static boolean isLibLoaded() {
        return mIsLibLoaded;
    }
}
