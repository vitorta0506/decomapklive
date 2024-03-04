package com.tencent.liteav.videoconsumer.decoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ac implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32185a;

    private ac(VideoDecodeController videoDecodeController) {
        this.f32185a = videoDecodeController;
    }

    public static Runnable a(VideoDecodeController videoDecodeController) {
        return new ac(videoDecodeController);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDecodeController videoDecodeController = this.f32185a;
        videoDecodeController.f32152k = false;
        com.tencent.liteav.base.util.j jVar = videoDecodeController.f32147f;
        if (jVar != null) {
            jVar.a(1);
        }
        videoDecodeController.f32149h = null;
        com.tencent.liteav.base.util.p pVar = videoDecodeController.f32148g;
        if (pVar != null) {
            pVar.b();
            videoDecodeController.f32148g = null;
        }
        videoDecodeController.f32145d.a();
        videoDecodeController.h();
        videoDecodeController.j();
        videoDecodeController.c();
    }
}
