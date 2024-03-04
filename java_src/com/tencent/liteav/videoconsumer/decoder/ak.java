package com.tencent.liteav.videoconsumer.decoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ak implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32197a;

    private ak(VideoDecodeController videoDecodeController) {
        this.f32197a = videoDecodeController;
    }

    public static Runnable a(VideoDecodeController videoDecodeController) {
        return new ak(videoDecodeController);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32197a.b();
    }
}
