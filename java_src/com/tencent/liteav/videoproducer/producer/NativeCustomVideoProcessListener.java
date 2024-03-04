package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.videobase.frame.PixelFrame;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class NativeCustomVideoProcessListener implements CustomVideoProcessListener {
    private long mNativeVideoCustomProcessListener;

    @CalledByNative
    private NativeCustomVideoProcessListener(long j10) {
        this.mNativeVideoCustomProcessListener = j10;
    }

    private native void nativeOnGLContextCreated(long j10);

    private native void nativeOnGLContextDestroy(long j10);

    private native void nativeOnProcessFrame(long j10, PixelFrame pixelFrame, PixelFrame pixelFrame2, int i9, int i10, long j11, int i11);

    @CalledByNative
    private synchronized void reset() {
        this.mNativeVideoCustomProcessListener = 0L;
    }

    @Override // com.tencent.liteav.videoproducer.producer.CustomVideoProcessListener
    public synchronized void onGLContextCreated() {
        long j10 = this.mNativeVideoCustomProcessListener;
        if (j10 != 0) {
            nativeOnGLContextCreated(j10);
        }
    }

    @Override // com.tencent.liteav.videoproducer.producer.CustomVideoProcessListener
    public synchronized void onGLContextDestroy() {
        long j10 = this.mNativeVideoCustomProcessListener;
        if (j10 != 0) {
            nativeOnGLContextDestroy(j10);
        }
    }

    @Override // com.tencent.liteav.videoproducer.producer.CustomVideoProcessListener
    public synchronized void onProcessFrame(PixelFrame pixelFrame, PixelFrame pixelFrame2) {
        long j10 = this.mNativeVideoCustomProcessListener;
        if (j10 != 0) {
            nativeOnProcessFrame(j10, pixelFrame, pixelFrame2, pixelFrame.getWidth(), pixelFrame.getHeight(), pixelFrame.getTimestamp(), pixelFrame.getPixelFormatType().getValue());
        }
    }
}
