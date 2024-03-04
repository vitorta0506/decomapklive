package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderListener;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class NativeCustomRenderListener implements VideoRenderListener {
    public static final String TAG = "NativeCustomRenderListener";
    private long mNativeVideoCustomRenderListener;

    @CalledByNative
    private NativeCustomRenderListener(long j10) {
        this.mNativeVideoCustomRenderListener = j10;
    }

    private native void nativeOnCustomRenderFrame(long j10, PixelFrame pixelFrame, int i9, int i10, long j11, int i11);

    @CalledByNative
    private synchronized void reset() {
        this.mNativeVideoCustomRenderListener = 0L;
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
    public void onFocusAtPoint(int i9, int i10, int i11, int i12) {
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
    public void onRenderFirstFrameOnView(int i9, int i10) {
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
    public synchronized void onRenderFrame(PixelFrame pixelFrame) {
        if (this.mNativeVideoCustomRenderListener != 0) {
            if (pixelFrame.getPixelFormatType() == null) {
                LiteavLog.i(TAG, "PixelFrame PixelFormatType is null.");
                return;
            }
            nativeOnCustomRenderFrame(this.mNativeVideoCustomRenderListener, pixelFrame, pixelFrame.getWidth(), pixelFrame.getHeight(), pixelFrame.getTimestamp(), pixelFrame.getPixelFormatType().getValue());
        }
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
    public void onRenderTargetSizeChanged(int i9, int i10) {
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
    public void onZoom(float f10) {
    }
}
