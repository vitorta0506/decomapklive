package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface;
/* loaded from: classes4.dex */
final /* synthetic */ class ac implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32056a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32057b;

    private ac(j jVar, boolean z10) {
        this.f32056a = jVar;
        this.f32057b = z10;
    }

    public static Runnable a(j jVar, boolean z10) {
        return new ac(jVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32056a;
        boolean z10 = this.f32057b;
        LiteavLog.i(jVar.f32076a, "setRenderMirrorEnabled: ".concat(String.valueOf(z10)));
        jVar.f32087l = z10;
        for (VideoRenderInterface videoRenderInterface : jVar.a()) {
            if (videoRenderInterface != null) {
                videoRenderInterface.setHorizontalMirror(jVar.f32087l);
            }
        }
    }
}
