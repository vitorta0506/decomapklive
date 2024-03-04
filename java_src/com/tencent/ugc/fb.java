package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class fb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFilePixelFrameProvider f34928a;

    private fb(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        this.f34928a = uGCSingleFilePixelFrameProvider;
    }

    public static Runnable a(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        return new fb(uGCSingleFilePixelFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCSingleFilePixelFrameProvider.lambda$onDecodeFailed$5(this.f34928a);
    }
}
