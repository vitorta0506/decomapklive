package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class fi implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFilePixelFrameProvider f34939a;

    private fi(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        this.f34939a = uGCSingleFilePixelFrameProvider;
    }

    public static Runnable a(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        return new fi(uGCSingleFilePixelFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCSingleFilePixelFrameProvider.lambda$onFrameDequeued$3(this.f34939a);
    }
}
