package com.tencent.ugc;

import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.ugc.UGCVideoProcessor;
/* loaded from: classes4.dex */
final /* synthetic */ class gl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor.AnonymousClass3 f35003a;

    /* renamed from: b  reason: collision with root package name */
    private final EncodedVideoFrame f35004b;

    private gl(UGCVideoProcessor.AnonymousClass3 anonymousClass3, EncodedVideoFrame encodedVideoFrame) {
        this.f35003a = anonymousClass3;
        this.f35004b = encodedVideoFrame;
    }

    public static Runnable a(UGCVideoProcessor.AnonymousClass3 anonymousClass3, EncodedVideoFrame encodedVideoFrame) {
        return new gl(anonymousClass3, encodedVideoFrame);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCVideoProcessor.AnonymousClass3.a(this.f35003a, this.f35004b);
    }
}
