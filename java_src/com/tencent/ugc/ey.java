package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class ey implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFilePixelFrameProvider f34923a;

    private ey(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        this.f34923a = uGCSingleFilePixelFrameProvider;
    }

    public static Runnable a(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        return new ey(uGCSingleFilePixelFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34923a.onDecodeCompletedInternal();
    }
}
