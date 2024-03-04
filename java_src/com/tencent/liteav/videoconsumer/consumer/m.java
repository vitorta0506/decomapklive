package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface;
/* loaded from: classes4.dex */
final /* synthetic */ class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32114a;

    /* renamed from: b  reason: collision with root package name */
    private final GLConstants.GLScaleType f32115b;

    private m(j jVar, GLConstants.GLScaleType gLScaleType) {
        this.f32114a = jVar;
        this.f32115b = gLScaleType;
    }

    public static Runnable a(j jVar, GLConstants.GLScaleType gLScaleType) {
        return new m(jVar, gLScaleType);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32114a;
        GLConstants.GLScaleType gLScaleType = this.f32115b;
        LiteavLog.i(jVar.f32076a, "setScaleType: ".concat(String.valueOf(gLScaleType)));
        jVar.f32085j = gLScaleType;
        for (VideoRenderInterface videoRenderInterface : jVar.a()) {
            if (videoRenderInterface != null) {
                videoRenderInterface.setScaleType(gLScaleType);
            }
        }
    }
}
