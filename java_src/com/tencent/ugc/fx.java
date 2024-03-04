package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fx implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34965a;

    /* renamed from: b  reason: collision with root package name */
    private final float f34966b;

    private fx(UGCVideoProcessor uGCVideoProcessor, float f10) {
        this.f34965a = uGCVideoProcessor;
        this.f34966b = f10;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor, float f10) {
        return new fx(uGCVideoProcessor, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCVideoProcessor.lambda$setSpecialRatio$11(this.f34965a, this.f34966b);
    }
}
