package com.tencent.thumbplayer.core.common;
/* loaded from: classes4.dex */
public final class TPDrm {
    private static final String TAG = "TPDrm";
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

    public static int[] getDRMCapabilities() {
        if (isLibLoaded()) {
            try {
                int[] native_getDRMCapabilities = native_getDRMCapabilities();
                return native_getDRMCapabilities == null ? new int[0] : native_getDRMCapabilities;
            } catch (Throwable th2) {
                TPNativeLog.printLog(4, th2.toString());
                throw new TPNativeLibraryException("Failed to call native func.");
            }
        }
        throw new TPNativeLibraryException("Failed to load native library.");
    }

    private static boolean isLibLoaded() {
        return mIsLibLoaded;
    }

    static native int[] native_getDRMCapabilities();
}
