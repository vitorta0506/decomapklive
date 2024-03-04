package com.tencent.liteav.videoconsumer.decoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ag implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32191a;

    private ag(VideoDecodeController videoDecodeController) {
        this.f32191a = videoDecodeController;
    }

    public static Runnable a(VideoDecodeController videoDecodeController) {
        return new ag(videoDecodeController);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32191a.c();
    }
}
