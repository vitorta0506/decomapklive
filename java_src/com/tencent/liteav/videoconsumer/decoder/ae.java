package com.tencent.liteav.videoconsumer.decoder;
/* loaded from: classes4.dex */
public final /* synthetic */ class ae implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32188a;

    private ae(VideoDecodeController videoDecodeController) {
        this.f32188a = videoDecodeController;
    }

    public static Runnable a(VideoDecodeController videoDecodeController) {
        return new ae(videoDecodeController);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDecodeController videoDecodeController = this.f32188a;
        videoDecodeController.j();
        az azVar = videoDecodeController.f32153l;
        if (azVar != null) {
            azVar.abandonDecodingFrames();
        } else {
            videoDecodeController.onAbandonDecodingFramesCompleted();
        }
        videoDecodeController.f32144c.f32262r = 0;
    }
}
