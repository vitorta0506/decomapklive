package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class fh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFilePixelFrameProvider f34938a;

    private fh(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        this.f34938a = uGCSingleFilePixelFrameProvider;
    }

    public static Runnable a(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        return new fh(uGCSingleFilePixelFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34938a.decodeInternal();
    }
}
