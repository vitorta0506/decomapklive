package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
/* loaded from: classes4.dex */
final /* synthetic */ class an implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32200a;

    private an(VideoDecodeController videoDecodeController) {
        this.f32200a = videoDecodeController;
    }

    public static Runnable a(VideoDecodeController videoDecodeController) {
        return new an(videoDecodeController);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDecodeController.a aVar = this.f32200a.f32149h;
        if (aVar != null) {
            aVar.onFrameEnqueuedToDecoder();
        }
    }
}
