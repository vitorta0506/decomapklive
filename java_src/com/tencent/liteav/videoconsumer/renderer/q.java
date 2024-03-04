package com.tencent.liteav.videoconsumer.renderer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32450a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoRenderListener f32451b;

    private q(p pVar, VideoRenderListener videoRenderListener) {
        this.f32450a = pVar;
        this.f32451b = videoRenderListener;
    }

    public static Runnable a(p pVar, VideoRenderListener videoRenderListener) {
        return new q(pVar, videoRenderListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.a(this.f32450a, this.f32451b);
    }
}
