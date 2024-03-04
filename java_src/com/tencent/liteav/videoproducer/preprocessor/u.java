package com.tencent.liteav.videoproducer.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoPreprocessor f33118a;

    /* renamed from: b  reason: collision with root package name */
    private final float f33119b;

    private u(VideoPreprocessor videoPreprocessor, float f10) {
        this.f33118a = videoPreprocessor;
        this.f33119b = f10;
    }

    public static Runnable a(VideoPreprocessor videoPreprocessor, float f10) {
        return new u(videoPreprocessor, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoPreprocessor.lambda$setGaussianBlurLevel$12(this.f33118a, this.f33119b);
    }
}
