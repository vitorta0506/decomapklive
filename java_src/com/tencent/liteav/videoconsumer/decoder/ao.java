package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ao implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32201a;

    private ao(VideoDecodeController videoDecodeController) {
        this.f32201a = videoDecodeController;
    }

    public static Runnable a(VideoDecodeController videoDecodeController) {
        return new ao(videoDecodeController);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDecodeController.a aVar = this.f32201a.f32149h;
        if (aVar != null) {
            aVar.onDecodeCompleted();
        }
    }
}
