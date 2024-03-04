package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class ex implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFilePixelFrameProvider f34922a;

    private ex(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        this.f34922a = uGCSingleFilePixelFrameProvider;
    }

    public static Runnable a(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        return new ex(uGCSingleFilePixelFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34922a.uninitializeInternal();
    }
}
