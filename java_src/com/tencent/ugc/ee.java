package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class ee implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMultiFilePixelFrameProvider f34890a;

    private ee(UGCMultiFilePixelFrameProvider uGCMultiFilePixelFrameProvider) {
        this.f34890a = uGCMultiFilePixelFrameProvider;
    }

    public static Runnable a(UGCMultiFilePixelFrameProvider uGCMultiFilePixelFrameProvider) {
        return new ee(uGCMultiFilePixelFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMultiFilePixelFrameProvider.lambda$start$0(this.f34890a);
    }
}
