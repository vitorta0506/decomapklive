package com.tencent.liteav.videoconsumer.decoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class av implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32213a;

    private av(VideoDecodeController videoDecodeController) {
        this.f32213a = videoDecodeController;
    }

    public static Runnable a(VideoDecodeController videoDecodeController) {
        return new av(videoDecodeController);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32213a.d();
    }
}
