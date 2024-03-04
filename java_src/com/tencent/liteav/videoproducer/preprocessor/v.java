package com.tencent.liteav.videoproducer.preprocessor;
/* loaded from: classes4.dex */
final /* synthetic */ class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoPreprocessor f33120a;

    /* renamed from: b  reason: collision with root package name */
    private final int f33121b;

    private v(VideoPreprocessor videoPreprocessor, int i9) {
        this.f33120a = videoPreprocessor;
        this.f33121b = i9;
    }

    public static Runnable a(VideoPreprocessor videoPreprocessor, int i9) {
        return new v(videoPreprocessor, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33120a.mPreprocessor.f33046c.setHomeOrientation(this.f33121b);
    }
}
