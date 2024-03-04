package com.tencent.liteav.videoproducer.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ac implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoPreprocessor f33018a;

    /* renamed from: b  reason: collision with root package name */
    private final int f33019b;

    /* renamed from: c  reason: collision with root package name */
    private final ah f33020c;

    private ac(VideoPreprocessor videoPreprocessor, int i9, ah ahVar) {
        this.f33018a = videoPreprocessor;
        this.f33019b = i9;
        this.f33020c = ahVar;
    }

    public static Runnable a(VideoPreprocessor videoPreprocessor, int i9, ah ahVar) {
        return new ac(videoPreprocessor, i9, ahVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoPreprocessor.lambda$unregisterVideoProcessedListener$4(this.f33018a, this.f33019b, this.f33020c);
    }
}
