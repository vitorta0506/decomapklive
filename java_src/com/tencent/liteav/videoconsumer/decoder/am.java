package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class am implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32199a;

    private am(VideoDecodeController videoDecodeController) {
        this.f32199a = videoDecodeController;
    }

    public static Runnable a(VideoDecodeController videoDecodeController) {
        return new am(videoDecodeController);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDecodeController videoDecodeController = this.f32199a;
        LiteavLog.i(videoDecodeController.f32142a, "decoder onAbandonDecodingFramesCompleted");
        videoDecodeController.f32156o.b();
        videoDecodeController.f32155n.set(0);
        VideoDecodeController.a aVar = videoDecodeController.f32149h;
        if (aVar != null) {
            aVar.onAbandonDecodingFramesCompleted();
        }
    }
}
