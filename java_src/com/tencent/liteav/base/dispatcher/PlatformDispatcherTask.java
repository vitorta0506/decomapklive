package com.tencent.liteav.base.dispatcher;

import android.os.Handler;
import android.os.Looper;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
@JNINamespace("liteav")
/* loaded from: classes4.dex */
class PlatformDispatcherTask implements Runnable {
    private long mNativePlatformDispatcherTask;

    @CalledByNative
    public PlatformDispatcherTask(long j10) {
        this.mNativePlatformDispatcherTask = j10;
    }

    private void destroyTask() {
        long j10 = this.mNativePlatformDispatcherTask;
        if (j10 != 0) {
            nativeDestroyTask(j10);
            this.mNativePlatformDispatcherTask = 0L;
        }
    }

    @CalledByNative
    public static Handler getMainHandler() {
        return new Handler(Looper.getMainLooper());
    }

    private static native void nativeDestroyTask(long j10);

    private static native void nativeRunTask(long j10);

    protected void finalize() throws Throwable {
        destroyTask();
        super.finalize();
    }

    @Override // java.lang.Runnable
    public void run() {
        long j10 = this.mNativePlatformDispatcherTask;
        if (j10 != 0) {
            nativeRunTask(j10);
            destroyTask();
        }
    }
}
