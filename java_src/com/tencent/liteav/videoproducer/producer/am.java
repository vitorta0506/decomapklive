package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
/* loaded from: classes4.dex */
final /* synthetic */ class am implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33198a;

    /* renamed from: b  reason: collision with root package name */
    private final PixelFrame f33199b;

    /* renamed from: c  reason: collision with root package name */
    private final CaptureSourceInterface f33200c;

    private am(f fVar, PixelFrame pixelFrame, CaptureSourceInterface captureSourceInterface) {
        this.f33198a = fVar;
        this.f33199b = pixelFrame;
        this.f33200c = captureSourceInterface;
    }

    public static Runnable a(f fVar, PixelFrame pixelFrame, CaptureSourceInterface captureSourceInterface) {
        return new am(fVar, pixelFrame, captureSourceInterface);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33198a, this.f33199b, this.f33200c);
    }
}
