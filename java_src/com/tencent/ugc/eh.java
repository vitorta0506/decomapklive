package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class eh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMultiFilePixelFrameProvider f34895a;

    private eh(UGCMultiFilePixelFrameProvider uGCMultiFilePixelFrameProvider) {
        this.f34895a = uGCMultiFilePixelFrameProvider;
    }

    public static Runnable a(UGCMultiFilePixelFrameProvider uGCMultiFilePixelFrameProvider) {
        return new eh(uGCMultiFilePixelFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34895a.readFrameToQueue();
    }
}
