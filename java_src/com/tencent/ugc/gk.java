package com.tencent.ugc;

import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.ugc.UGCVideoProcessor;
/* loaded from: classes4.dex */
final /* synthetic */ class gk implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor.AnonymousClass2 f35001a;

    /* renamed from: b  reason: collision with root package name */
    private final PixelFrame f35002b;

    private gk(UGCVideoProcessor.AnonymousClass2 anonymousClass2, PixelFrame pixelFrame) {
        this.f35001a = anonymousClass2;
        this.f35002b = pixelFrame;
    }

    public static Runnable a(UGCVideoProcessor.AnonymousClass2 anonymousClass2, PixelFrame pixelFrame) {
        return new gk(anonymousClass2, pixelFrame);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCVideoProcessor.AnonymousClass2 anonymousClass2 = this.f35001a;
        PixelFrame pixelFrame = this.f35002b;
        if (UGCVideoProcessor.this.mVideoProcessManager != null) {
            UGCVideoProcessor.this.mVideoProcessManager.processByVideoEffect(pixelFrame);
        }
        pixelFrame.release();
    }
}
