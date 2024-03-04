package com.tencent.liteav.videoproducer.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final BeautyProcessor f33031a;

    /* renamed from: b  reason: collision with root package name */
    private final float f33032b;

    private b(BeautyProcessor beautyProcessor, float f10) {
        this.f33031a = beautyProcessor;
        this.f33032b = f10;
    }

    public static Runnable a(BeautyProcessor beautyProcessor, float f10) {
        return new b(beautyProcessor, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        BeautyProcessor.lambda$setBeautyLevel$1(this.f33031a, this.f33032b);
    }
}
