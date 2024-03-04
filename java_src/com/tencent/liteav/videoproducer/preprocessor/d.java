package com.tencent.liteav.videoproducer.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final BeautyProcessor f33035a;

    /* renamed from: b  reason: collision with root package name */
    private final float f33036b;

    private d(BeautyProcessor beautyProcessor, float f10) {
        this.f33035a = beautyProcessor;
        this.f33036b = f10;
    }

    public static Runnable a(BeautyProcessor beautyProcessor, float f10) {
        return new d(beautyProcessor, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        BeautyProcessor.lambda$setSharpenLevel$3(this.f33035a, this.f33036b);
    }
}
