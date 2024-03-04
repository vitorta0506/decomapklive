package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.frame.PixelFrame;
/* loaded from: classes4.dex */
final /* synthetic */ class ao implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33205a;

    /* renamed from: b  reason: collision with root package name */
    private final int f33206b;

    /* renamed from: c  reason: collision with root package name */
    private final PixelFrame f33207c;

    private ao(f fVar, int i9, PixelFrame pixelFrame) {
        this.f33205a = fVar;
        this.f33206b = i9;
        this.f33207c = pixelFrame;
    }

    public static Runnable a(f fVar, int i9, PixelFrame pixelFrame) {
        return new ao(fVar, i9, pixelFrame);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33205a, this.f33206b, this.f33207c);
    }
}
