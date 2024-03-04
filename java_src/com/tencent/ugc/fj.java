package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class fj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFilePixelFrameProvider f34940a;

    private fj(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        this.f34940a = uGCSingleFilePixelFrameProvider;
    }

    public static Runnable a(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        return new fj(uGCSingleFilePixelFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCSingleFilePixelFrameProvider.lambda$onAbandonDecodingFramesCompleted$4(this.f34940a);
    }
}
