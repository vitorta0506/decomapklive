package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class fc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFilePixelFrameProvider f34929a;

    private fc(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        this.f34929a = uGCSingleFilePixelFrameProvider;
    }

    public static Runnable a(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        return new fc(uGCSingleFilePixelFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34929a.startInternal();
    }
}
