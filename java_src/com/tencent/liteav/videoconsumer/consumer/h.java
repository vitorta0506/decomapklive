package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.videobase.frame.PixelFrame;
/* loaded from: classes4.dex */
final /* synthetic */ class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f32072a;

    /* renamed from: b  reason: collision with root package name */
    private final PixelFrame f32073b;

    private h(a aVar, PixelFrame pixelFrame) {
        this.f32072a = aVar;
        this.f32073b = pixelFrame;
    }

    public static Runnable a(a aVar, PixelFrame pixelFrame) {
        return new h(aVar, pixelFrame);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.b(this.f32072a, this.f32073b);
    }
}
