package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface;
/* loaded from: classes4.dex */
final /* synthetic */ class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32112a;

    /* renamed from: b  reason: collision with root package name */
    private final Rotation f32113b;

    private l(j jVar, Rotation rotation) {
        this.f32112a = jVar;
        this.f32113b = rotation;
    }

    public static Runnable a(j jVar, Rotation rotation) {
        return new l(jVar, rotation);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32112a;
        Rotation rotation = this.f32113b;
        LiteavLog.i(jVar.f32076a, "setRenderRotation: ".concat(String.valueOf(rotation)));
        jVar.f32086k = rotation;
        for (VideoRenderInterface videoRenderInterface : jVar.a()) {
            if (videoRenderInterface != null) {
                videoRenderInterface.setRenderRotation(jVar.f32086k);
            }
        }
    }
}
