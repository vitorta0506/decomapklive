package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class ct implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCImageProvider f34833a;

    private ct(UGCImageProvider uGCImageProvider) {
        this.f34833a = uGCImageProvider;
    }

    public static Runnable a(UGCImageProvider uGCImageProvider) {
        return new ct(uGCImageProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34833a.decodeBitmapFrame();
    }
}
