package com.tencent.ugc;

import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.ugc.UGCVideoProcessor;
/* loaded from: classes4.dex */
final /* synthetic */ class gm implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor.AnonymousClass4 f35005a;

    /* renamed from: b  reason: collision with root package name */
    private final PixelFrame f35006b;

    private gm(UGCVideoProcessor.AnonymousClass4 anonymousClass4, PixelFrame pixelFrame) {
        this.f35005a = anonymousClass4;
        this.f35006b = pixelFrame;
    }

    public static Runnable a(UGCVideoProcessor.AnonymousClass4 anonymousClass4, PixelFrame pixelFrame) {
        return new gm(anonymousClass4, pixelFrame);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCVideoProcessor.AnonymousClass4.a(this.f35005a, this.f35006b);
    }
}
