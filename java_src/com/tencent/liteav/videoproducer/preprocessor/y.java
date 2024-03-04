package com.tencent.liteav.videoproducer.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoPreprocessor f33124a;

    /* renamed from: b  reason: collision with root package name */
    private final com.tencent.liteav.videobase.a.a f33125b;

    private y(VideoPreprocessor videoPreprocessor, com.tencent.liteav.videobase.a.a aVar) {
        this.f33124a = videoPreprocessor;
        this.f33125b = aVar;
    }

    public static Runnable a(VideoPreprocessor videoPreprocessor, com.tencent.liteav.videobase.a.a aVar) {
        return new y(videoPreprocessor, aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33124a.mPreprocessor.a(this.f33125b);
    }
}
