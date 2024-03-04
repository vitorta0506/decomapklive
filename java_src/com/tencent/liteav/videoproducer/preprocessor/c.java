package com.tencent.liteav.videoproducer.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final BeautyProcessor f33033a;

    /* renamed from: b  reason: collision with root package name */
    private final float f33034b;

    private c(BeautyProcessor beautyProcessor, float f10) {
        this.f33033a = beautyProcessor;
        this.f33034b = f10;
    }

    public static Runnable a(BeautyProcessor beautyProcessor, float f10) {
        return new c(beautyProcessor, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        BeautyProcessor.lambda$setWhitenessLevel$2(this.f33033a, this.f33034b);
    }
}
