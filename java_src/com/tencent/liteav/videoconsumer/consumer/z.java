package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoconsumer.consumer.j;
/* loaded from: classes4.dex */
final /* synthetic */ class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32140a;

    private z(j jVar) {
        this.f32140a = jVar;
    }

    public static Runnable a(j jVar) {
        return new z(jVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32140a;
        String str = jVar.f32076a;
        LiteavLog.i(str, "resume , current status is " + jVar.f32091p);
        if (jVar.f32091p == j.a.PAUSED) {
            jVar.f32098w.f32417a.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_RESET_FREEZE_TIME, 0);
            jVar.f32091p = j.a.STARTED;
        }
        jVar.f32092q = false;
    }
}
