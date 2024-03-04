package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
/* loaded from: classes4.dex */
final /* synthetic */ class al implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32198a;

    private al(VideoDecodeController videoDecodeController) {
        this.f32198a = videoDecodeController;
    }

    public static Runnable a(VideoDecodeController videoDecodeController) {
        return new al(videoDecodeController);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDecodeController.a aVar = this.f32198a.f32149h;
        if (aVar != null) {
            aVar.onRequestKeyFrame();
        }
    }
}
