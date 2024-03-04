package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
/* loaded from: classes4.dex */
public final /* synthetic */ class aw implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32214a;

    private aw(VideoDecodeController videoDecodeController) {
        this.f32214a = videoDecodeController;
    }

    public static Runnable a(VideoDecodeController videoDecodeController) {
        return new aw(videoDecodeController);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDecodeController videoDecodeController = this.f32214a;
        LiteavLog.i(videoDecodeController.f32142a, "signalEndOfStream");
        if (videoDecodeController.f32153l != null) {
            EncodedVideoFrame encodedVideoFrame = new EncodedVideoFrame();
            encodedVideoFrame.isEosFrame = true;
            videoDecodeController.b(encodedVideoFrame);
            return;
        }
        videoDecodeController.onDecodeCompleted();
    }
}
