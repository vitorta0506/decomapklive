package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.videobase.h;
/* loaded from: classes4.dex */
final /* synthetic */ class aj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32196a;

    private aj(VideoDecodeController videoDecodeController) {
        this.f32196a = videoDecodeController;
    }

    public static Runnable a(VideoDecodeController videoDecodeController) {
        return new aj(videoDecodeController);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDecodeController videoDecodeController = this.f32196a;
        LiteavLog.i(videoDecodeController.f32142a, "on decode failed, type: %s", videoDecodeController.f());
        videoDecodeController.f32144c.f32263s = true;
        ax axVar = videoDecodeController.f32145d;
        axVar.f32224j++;
        axVar.b();
        videoDecodeController.f32143b.notifyWarning(h.c.WARNING_VIDEO_DECODE_ABNORMAL, "decode error try restart", new Object[0]);
    }
}
