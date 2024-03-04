package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.frame.PixelFrame;
/* loaded from: classes4.dex */
public interface CustomVideoProcessListener {
    void onGLContextCreated();

    void onGLContextDestroy();

    void onProcessFrame(PixelFrame pixelFrame, PixelFrame pixelFrame2);
}
