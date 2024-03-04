package com.tencent.liteav.videoproducer.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class af implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoPreprocessor f33027a;

    /* renamed from: b  reason: collision with root package name */
    private final float f33028b;

    private af(VideoPreprocessor videoPreprocessor, float f10) {
        this.f33027a = videoPreprocessor;
        this.f33028b = f10;
    }

    public static Runnable a(VideoPreprocessor videoPreprocessor, float f10) {
        return new af(videoPreprocessor, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33027a.mPreprocessor.a(this.f33028b);
    }
}
