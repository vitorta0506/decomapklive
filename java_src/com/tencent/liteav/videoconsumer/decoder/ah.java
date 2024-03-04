package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.base.util.LiteavLog;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ah implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32192a;

    private ah(VideoDecodeController videoDecodeController) {
        this.f32192a = videoDecodeController;
    }

    public static Runnable a(VideoDecodeController videoDecodeController) {
        return new ah(videoDecodeController);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDecodeController videoDecodeController = this.f32192a;
        String str = videoDecodeController.f32142a;
        LiteavLog.i(str, "pixelFrameQueue:" + videoDecodeController.f32156o.c());
    }
}
