package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.videobase.frame.PixelFrame;
/* loaded from: classes4.dex */
final /* synthetic */ class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f32074a;

    /* renamed from: b  reason: collision with root package name */
    private final PixelFrame f32075b;

    private i(a aVar, PixelFrame pixelFrame) {
        this.f32074a = aVar;
        this.f32075b = pixelFrame;
    }

    public static Runnable a(a aVar, PixelFrame pixelFrame) {
        return new i(aVar, pixelFrame);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f32074a, this.f32075b);
    }
}
