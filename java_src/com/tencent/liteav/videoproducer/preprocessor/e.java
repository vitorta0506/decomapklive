package com.tencent.liteav.videoproducer.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final BeautyProcessor f33037a;

    /* renamed from: b  reason: collision with root package name */
    private final float f33038b;

    private e(BeautyProcessor beautyProcessor, float f10) {
        this.f33037a = beautyProcessor;
        this.f33038b = f10;
    }

    public static Runnable a(BeautyProcessor beautyProcessor, float f10) {
        return new e(beautyProcessor, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        BeautyProcessor.lambda$setRuddyLevel$4(this.f33037a, this.f33038b);
    }
}
