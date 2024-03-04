package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
/* loaded from: classes4.dex */
final /* synthetic */ class t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32131a;

    private t(j jVar) {
        this.f32131a = jVar;
    }

    public static Runnable a(j jVar) {
        return new t(jVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32131a;
        if (jVar.f32081f == null) {
            LiteavLog.i(jVar.f32076a, "initialize mVideoDecodeController");
            VideoDecodeController videoDecodeController = new VideoDecodeController(jVar.f32078c, false);
            jVar.f32081f = videoDecodeController;
            videoDecodeController.a(jVar.f32095t);
            jVar.f32081f.a(jVar.f32096u);
            jVar.f32081f.a();
        }
        if (jVar.f32079d == null) {
            jVar.f32079d = new com.tencent.liteav.videoconsumer.renderer.p(jVar.f32077b, jVar.f32078c);
        }
    }
}
