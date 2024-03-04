package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ez implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFilePixelFrameProvider f34924a;

    private ez(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        this.f34924a = uGCSingleFilePixelFrameProvider;
    }

    public static Runnable a(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        return new ez(uGCSingleFilePixelFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34924a.onDecodeCompletedInternal();
    }
}
