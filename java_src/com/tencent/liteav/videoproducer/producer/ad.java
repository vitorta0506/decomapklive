package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.frame.PixelFrame;
/* loaded from: classes4.dex */
final /* synthetic */ class ad implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33173a;

    /* renamed from: b  reason: collision with root package name */
    private final PixelFrame f33174b;

    /* renamed from: c  reason: collision with root package name */
    private final int f33175c;

    /* renamed from: d  reason: collision with root package name */
    private final int f33176d;

    private ad(f fVar, PixelFrame pixelFrame, int i9, int i10) {
        this.f33173a = fVar;
        this.f33174b = pixelFrame;
        this.f33175c = i9;
        this.f33176d = i10;
    }

    public static Runnable a(f fVar, PixelFrame pixelFrame, int i9, int i10) {
        return new ad(fVar, pixelFrame, i9, i10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33173a, this.f33174b, this.f33175c, this.f33176d);
    }
}
