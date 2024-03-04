package com.tencent.liteav.videoconsumer.renderer;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.videobase.frame.PixelFrame;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
class NativeVideoRenderListener implements VideoRenderListener {
    private long mNativeHandler;

    @CalledByNative
    public NativeVideoRenderListener(long j10) {
        this.mNativeHandler = j10;
    }

    private static native void nativeOnFocusAtPoint(long j10, int i9, int i10, int i11, int i12);

    private static native void nativeOnRenderFirstFrameOnView(long j10, int i9, int i10);

    private static native void nativeOnRenderFrame(long j10, PixelFrame pixelFrame);

    private static native void nativeOnRenderTargetSizeChanged(long j10, int i9, int i10);

    private static native void nativeOnZoom(long j10, float f10);

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
    public synchronized void onFocusAtPoint(int i9, int i10, int i11, int i12) {
        long j10 = this.mNativeHandler;
        if (j10 != 0) {
            nativeOnFocusAtPoint(j10, i9, i10, i11, i12);
        }
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
    public synchronized void onRenderFirstFrameOnView(int i9, int i10) {
        long j10 = this.mNativeHandler;
        if (j10 != 0) {
            nativeOnRenderFirstFrameOnView(j10, i9, i10);
        }
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
    public synchronized void onRenderFrame(PixelFrame pixelFrame) {
        long j10 = this.mNativeHandler;
        if (j10 != 0) {
            nativeOnRenderFrame(j10, pixelFrame);
        }
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
    public synchronized void onRenderTargetSizeChanged(int i9, int i10) {
        long j10 = this.mNativeHandler;
        if (j10 != 0) {
            nativeOnRenderTargetSizeChanged(j10, i9, i10);
        }
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
    public synchronized void onZoom(float f10) {
        long j10 = this.mNativeHandler;
        if (j10 != 0) {
            nativeOnZoom(j10, f10);
        }
    }

    @CalledByNative
    public synchronized void resetNativeHandle() {
        this.mNativeHandler = 0L;
    }
}
