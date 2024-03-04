package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ef implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMultiFilePixelFrameProvider f34891a;

    private ef(UGCMultiFilePixelFrameProvider uGCMultiFilePixelFrameProvider) {
        this.f34891a = uGCMultiFilePixelFrameProvider;
    }

    public static Runnable a(UGCMultiFilePixelFrameProvider uGCMultiFilePixelFrameProvider) {
        return new ef(uGCMultiFilePixelFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMultiFilePixelFrameProvider.lambda$stop$1(this.f34891a);
    }
}
