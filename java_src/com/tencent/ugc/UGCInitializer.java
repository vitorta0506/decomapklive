package com.tencent.ugc;

import android.os.Looper;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
@JNINamespace("liteav::ugc")
/* loaded from: classes4.dex */
public class UGCInitializer {
    private static final String TAG = "UGCInitializer";
    private static CustomHandler sInitializerHandler = new CustomHandler(Looper.getMainLooper());
    private static int sRefCount;

    public static synchronized void initialize() {
        synchronized (UGCInitializer.class) {
            if (sRefCount == 0) {
                LiteavLog.i(TAG, "initialize ".concat(String.valueOf(runAndWaitDownOnInitialThread(cw.a()))));
            }
            sRefCount++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeInitialize();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeUninitialize();

    private static boolean runAndWaitDownOnInitialThread(Runnable runnable) {
        if (Looper.myLooper() == sInitializerHandler.getLooper()) {
            runnable.run();
            return true;
        }
        return sInitializerHandler.a(runnable);
    }

    public static synchronized void uninitialize() {
        synchronized (UGCInitializer.class) {
            if (sRefCount == 1) {
                LiteavLog.i(TAG, "uninitialize ".concat(String.valueOf(runAndWaitDownOnInitialThread(cx.a()))));
            }
            int i9 = sRefCount;
            if (i9 > 0) {
                sRefCount = i9 - 1;
            }
        }
    }
}
