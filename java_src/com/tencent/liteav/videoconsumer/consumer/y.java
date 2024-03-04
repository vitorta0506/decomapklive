package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoconsumer.consumer.j;
/* loaded from: classes4.dex */
final /* synthetic */ class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32139a;

    private y(j jVar) {
        this.f32139a = jVar;
    }

    public static Runnable a(j jVar) {
        return new y(jVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32139a;
        String str = jVar.f32076a;
        LiteavLog.i(str, "pause , current status is " + jVar.f32091p);
        if (jVar.f32091p == j.a.STARTED) {
            com.tencent.liteav.videoconsumer.renderer.o oVar = jVar.f32098w;
            oVar.f32417a.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_FRAME, 0);
            oVar.f32417a.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_RESET_FREEZE_TIME, 0);
            jVar.f32091p = j.a.PAUSED;
        }
        jVar.f32092q = true;
    }
}
