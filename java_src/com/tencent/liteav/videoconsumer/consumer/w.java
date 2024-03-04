package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoconsumer.consumer.j;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
/* loaded from: classes4.dex */
final /* synthetic */ class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32136a;

    private w(j jVar) {
        this.f32136a = jVar;
    }

    public static Runnable a(j jVar) {
        return new w(jVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32136a;
        LiteavLog.i(jVar.f32076a, "Start");
        if (jVar.f32091p != j.a.STOPPED) {
            LiteavLog.w(jVar.f32076a, "video consumer is started.");
            return;
        }
        jVar.f32077b.a(15);
        jVar.a(jVar.f32079d);
        com.tencent.liteav.videoconsumer.renderer.o oVar = jVar.f32098w;
        oVar.f32422f = false;
        oVar.f32417a.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_RESET_FREEZE_TIME, 0);
        VideoDecodeController videoDecodeController = jVar.f32081f;
        if (videoDecodeController != null) {
            videoDecodeController.a(jVar.f32101z);
        }
        jVar.f32088m.a();
        jVar.f32091p = jVar.f32092q ? j.a.PAUSED : j.a.STARTED;
    }
}
