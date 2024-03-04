package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface;
/* loaded from: classes4.dex */
final /* synthetic */ class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32118a;

    /* renamed from: b  reason: collision with root package name */
    private final DisplayTarget f32119b;

    private o(j jVar, DisplayTarget displayTarget) {
        this.f32118a = jVar;
        this.f32119b = displayTarget;
    }

    public static Runnable a(j jVar, DisplayTarget displayTarget) {
        return new o(jVar, displayTarget);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32118a;
        DisplayTarget displayTarget = this.f32119b;
        LiteavLog.i(jVar.f32076a, "setDisplayTarget: ".concat(String.valueOf(displayTarget)));
        jVar.f32084i = displayTarget;
        if (displayTarget != null && displayTarget.getTXCloudVideoView() != null && jVar.f32084i.getTXCloudVideoView().getOpenGLContext() != null) {
            Object openGLContext = jVar.f32084i.getTXCloudVideoView().getOpenGLContext();
            jVar.f32096u = openGLContext;
            VideoDecodeController videoDecodeController = jVar.f32081f;
            if (videoDecodeController != null) {
                videoDecodeController.a(openGLContext);
            }
        }
        for (VideoRenderInterface videoRenderInterface : jVar.a()) {
            if (videoRenderInterface != null) {
                videoRenderInterface.setDisplayView(displayTarget, true);
            }
        }
    }
}
