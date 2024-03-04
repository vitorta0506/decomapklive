package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
/* loaded from: classes4.dex */
final /* synthetic */ class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32129a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f32130b;

    private s(j jVar, Object obj) {
        this.f32129a = jVar;
        this.f32130b = obj;
    }

    public static Runnable a(j jVar, Object obj) {
        return new s(jVar, obj);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32129a;
        Object obj = this.f32130b;
        jVar.f32096u = obj;
        VideoDecodeController videoDecodeController = jVar.f32081f;
        if (videoDecodeController != null) {
            videoDecodeController.a(obj);
        }
    }
}
