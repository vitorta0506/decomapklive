package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFilePixelFrameProvider f34927a;

    private fa(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        this.f34927a = uGCSingleFilePixelFrameProvider;
    }

    public static Runnable a(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        return new fa(uGCSingleFilePixelFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34927a.onDecodeCompletedInternal();
    }
}
