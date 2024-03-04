package com.tencent.liteav.videoproducer.producer;

import android.os.HandlerThread;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoproducer.capture.ay;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class NativeVideoContext {
    private static final String TAG = "NativeVideoContext";
    private CustomHandler mCustomHandler = null;

    @CalledByNative
    private NativeVideoContext() {
    }

    @CalledByNative
    private synchronized CustomHandler getCustomHandler() {
        return this.mCustomHandler;
    }

    @CalledByNative
    private Object getGLContext() {
        return ay.a().b();
    }

    @CalledByNative
    private synchronized void initialize() {
        if (this.mCustomHandler != null) {
            LiteavLog.e(TAG, "NativeVideoContext is initialized");
        }
        HandlerThread handlerThread = new HandlerThread("producer-shared-thread");
        handlerThread.start();
        this.mCustomHandler = new CustomHandler(handlerThread.getLooper());
    }

    @CalledByNative
    private synchronized void uninitialize() {
        CustomHandler customHandler = this.mCustomHandler;
        if (customHandler != null) {
            customHandler.a();
            this.mCustomHandler = null;
        }
    }
}
