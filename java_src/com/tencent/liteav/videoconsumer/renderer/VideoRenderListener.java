package com.tencent.liteav.videoconsumer.renderer;

import com.tencent.liteav.videobase.frame.PixelFrame;
/* loaded from: classes4.dex */
public interface VideoRenderListener {
    void onFocusAtPoint(int i9, int i10, int i11, int i12);

    void onRenderFirstFrameOnView(int i9, int i10);

    void onRenderFrame(PixelFrame pixelFrame);

    void onRenderTargetSizeChanged(int i9, int i10);

    void onZoom(float f10);
}
