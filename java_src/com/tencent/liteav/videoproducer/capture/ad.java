package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videoproducer.capture.t;
/* loaded from: classes4.dex */
final /* synthetic */ class ad implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final t.AnonymousClass1 f32547a;

    /* renamed from: b  reason: collision with root package name */
    private final PixelFrame f32548b;

    private ad(t.AnonymousClass1 anonymousClass1, PixelFrame pixelFrame) {
        this.f32547a = anonymousClass1;
        this.f32548b = pixelFrame;
    }

    public static Runnable a(t.AnonymousClass1 anonymousClass1, PixelFrame pixelFrame) {
        return new ad(anonymousClass1, pixelFrame);
    }

    @Override // java.lang.Runnable
    public final void run() {
        t.AnonymousClass1.a(this.f32547a, this.f32548b);
    }
}
