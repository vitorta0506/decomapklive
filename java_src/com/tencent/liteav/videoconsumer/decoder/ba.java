package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.videobase.frame.PixelFrame;
/* loaded from: classes4.dex */
public interface ba {
    void onAbandonDecodingFramesCompleted();

    void onDecodeCompleted();

    void onDecodeFailed();

    void onDecodeFrame(PixelFrame pixelFrame, long j10);

    void onDecodeLatencyChanged(boolean z10);

    void onFrameEnqueuedToDecoder();

    void onRequestKeyFrame();
}
