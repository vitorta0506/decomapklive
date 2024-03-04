package com.tencent.thumbplayer.core.common;

import android.util.Log;
/* loaded from: classes4.dex */
public class TPNativeLog {
    public static final int LEVEL_DEBUG = 1;
    public static final int LEVEL_ERROR = 4;
    public static final int LEVEL_INFO = 2;
    public static final int LEVEL_VERBOSE = 0;
    public static final int LEVEL_WARN = 3;
    private static final String TAG = "PlayerCore";
    private static ITPNativeLogCallback mLogCallback;

    @TPMethodCalledByNative
    private static void onPrintLog(int i9, byte[] bArr, int i10, byte[] bArr2, int i11) {
        try {
            int i12 = 0;
            String str = new String(bArr, 0, i10, "UTF-8");
            String str2 = new String(bArr2, 0, i11, "UTF-8");
            if (i9 == 0) {
                i12 = 4;
            } else if (i9 == 1) {
                i12 = 3;
            } else if (i9 == 2) {
                i12 = 2;
            } else if (i9 == 3) {
                i12 = 1;
            }
            printLog(i12, str, str2);
        } catch (Exception e10) {
            printLog(4, e10.getMessage());
        }
    }

    public static void printLog(int i9, String str) {
        printLog(i9, TAG, str);
    }

    public static void printLog(int i9, String str, String str2) {
        ITPNativeLogCallback iTPNativeLogCallback = mLogCallback;
        if (iTPNativeLogCallback != null) {
            iTPNativeLogCallback.onPrintLog(i9, str, str2);
        } else {
            printLogDefault(i9, str, str2);
        }
    }

    public static void printLogDefault(int i9, String str, String str2) {
        if (i9 == 0) {
            Log.v(str, str2);
        } else if (i9 == 1) {
            Log.d(str, str2);
        } else if (i9 == 2) {
            Log.i(str, str2);
        } else if (i9 == 3) {
            Log.w(str, str2);
        } else if (i9 != 4) {
            Log.v(str, str2);
        } else {
            Log.e(str, str2);
        }
    }

    public static void setLogCallback(ITPNativeLogCallback iTPNativeLogCallback) {
        mLogCallback = iTPNativeLogCallback;
    }
}
