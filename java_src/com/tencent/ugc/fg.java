package com.tencent.ugc;

import com.tencent.liteav.videobase.frame.PixelFrame;
/* loaded from: classes4.dex */
final /* synthetic */ class fg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFilePixelFrameProvider f34936a;

    /* renamed from: b  reason: collision with root package name */
    private final PixelFrame f34937b;

    private fg(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider, PixelFrame pixelFrame) {
        this.f34936a = uGCSingleFilePixelFrameProvider;
        this.f34937b = pixelFrame;
    }

    public static Runnable a(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider, PixelFrame pixelFrame) {
        return new fg(uGCSingleFilePixelFrameProvider, pixelFrame);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34936a.onDecodeFrameInternal(this.f34937b);
    }
}
