package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.videoconsumer.renderer.VideoRenderListener;
/* loaded from: classes4.dex */
final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f32063a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoRenderListener f32064b;

    private c(a aVar, VideoRenderListener videoRenderListener) {
        this.f32063a = aVar;
        this.f32064b = videoRenderListener;
    }

    public static Runnable a(a aVar, VideoRenderListener videoRenderListener) {
        return new c(aVar, videoRenderListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f32063a, this.f32064b);
    }
}
