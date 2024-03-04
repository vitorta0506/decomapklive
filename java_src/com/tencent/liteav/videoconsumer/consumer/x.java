package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoconsumer.consumer.j;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface;
/* loaded from: classes4.dex */
final /* synthetic */ class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32137a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32138b;

    private x(j jVar, boolean z10) {
        this.f32137a = jVar;
        this.f32138b = z10;
    }

    public static Runnable a(j jVar, boolean z10) {
        return new x(jVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32137a;
        boolean z10 = this.f32138b;
        LiteavLog.i(jVar.f32076a, "Stop");
        j.a aVar = jVar.f32091p;
        j.a aVar2 = j.a.STOPPED;
        if (aVar != aVar2) {
            jVar.f32077b.a(1);
            jVar.f32091p = aVar2;
            jVar.f32089n = false;
            jVar.f32090o.b();
            jVar.f32097v.getAndSet(0L);
            VideoDecodeController videoDecodeController = jVar.f32081f;
            if (videoDecodeController != null) {
                videoDecodeController.g();
            }
            for (VideoRenderInterface videoRenderInterface : jVar.a()) {
                if (videoRenderInterface != null) {
                    videoRenderInterface.stop(z10);
                }
            }
            jVar.f32099x.b();
            com.tencent.liteav.videoconsumer.renderer.o oVar = jVar.f32098w;
            oVar.f32422f = false;
            oVar.f32418b.b();
            oVar.f32417a.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_FRAME, 0);
            oVar.f32417a.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_RESET_FREEZE_TIME, 0);
            jVar.f32096u = null;
            jVar.f32093r = 0;
            jVar.f32094s = 0;
        }
    }
}
