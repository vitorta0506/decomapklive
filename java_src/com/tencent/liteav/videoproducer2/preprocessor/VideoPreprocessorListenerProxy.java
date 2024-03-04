package com.tencent.liteav.videoproducer2.preprocessor;

import android.opengl.GLES20;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.base.b;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videoproducer.preprocessor.ah;
import com.tencent.liteav.videoproducer.producer.CustomVideoProcessListener;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class VideoPreprocessorListenerProxy implements ah, CustomVideoProcessListener {
    private long mNativeVideoPreprocessorListener;
    private final CustomProcessParams mParams;

    @CalledByNative
    private VideoPreprocessorListenerProxy(long j10, CustomProcessParams customProcessParams) {
        this.mNativeVideoPreprocessorListener = j10;
        this.mParams = customProcessParams;
    }

    private static native void nativeOnGLContextCreated(long j10);

    private static native void nativeOnGLContextDestroy(long j10);

    private static native void nativeOnProcessFrame(long j10, int i9, PixelFrame pixelFrame, PixelFrame pixelFrame2);

    @CalledByNative
    private synchronized void reset() {
        this.mNativeVideoPreprocessorListener = 0L;
    }

    public synchronized void didDetectFacePoints(int i9, b bVar) {
    }

    @Override // com.tencent.liteav.videoproducer.preprocessor.ah
    public synchronized void didProcessFrame(int i9, PixelFrame pixelFrame) {
        if (this.mNativeVideoPreprocessorListener != 0) {
            if (pixelFrame.getPixelBufferType() == GLConstants.PixelBufferType.TEXTURE_2D) {
                GLES20.glFinish();
            }
            nativeOnProcessFrame(this.mNativeVideoPreprocessorListener, i9, pixelFrame, null);
        }
    }

    public CustomProcessParams getCustomProcessParams() {
        return this.mParams;
    }

    @Override // com.tencent.liteav.videoproducer.producer.CustomVideoProcessListener
    public synchronized void onGLContextCreated() {
        long j10 = this.mNativeVideoPreprocessorListener;
        if (j10 != 0) {
            nativeOnGLContextCreated(j10);
        }
    }

    @Override // com.tencent.liteav.videoproducer.producer.CustomVideoProcessListener
    public synchronized void onGLContextDestroy() {
        long j10 = this.mNativeVideoPreprocessorListener;
        if (j10 != 0) {
            nativeOnGLContextDestroy(j10);
        }
    }

    @Override // com.tencent.liteav.videoproducer.producer.CustomVideoProcessListener
    public synchronized void onProcessFrame(PixelFrame pixelFrame, PixelFrame pixelFrame2) {
        long j10 = this.mNativeVideoPreprocessorListener;
        if (j10 != 0) {
            nativeOnProcessFrame(j10, 0, pixelFrame, pixelFrame2);
        }
    }
}
