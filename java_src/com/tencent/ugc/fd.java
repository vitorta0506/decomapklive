package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class fd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFilePixelFrameProvider f34930a;

    private fd(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        this.f34930a = uGCSingleFilePixelFrameProvider;
    }

    public static Runnable a(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        return new fd(uGCSingleFilePixelFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34930a.stopInternal();
    }
}
