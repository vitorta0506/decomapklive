package com.tencent.liteav.videoproducer.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final BeautyProcessor f33042a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f33043b;

    private g(BeautyProcessor beautyProcessor, boolean z10) {
        this.f33042a = beautyProcessor;
        this.f33043b = z10;
    }

    public static Runnable a(BeautyProcessor beautyProcessor, boolean z10) {
        return new g(beautyProcessor, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        BeautyProcessor.lambda$setPerformanceMode$6(this.f33042a, this.f33043b);
    }
}
