package com.tencent.liteav.videoproducer.preprocessor;
/* loaded from: classes4.dex */
final /* synthetic */ class ad implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoPreprocessor f33021a;

    /* renamed from: b  reason: collision with root package name */
    private final String f33022b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f33023c;

    private ad(VideoPreprocessor videoPreprocessor, String str, boolean z10) {
        this.f33021a = videoPreprocessor;
        this.f33022b = str;
        this.f33023c = z10;
    }

    public static Runnable a(VideoPreprocessor videoPreprocessor, String str, boolean z10) {
        return new ad(videoPreprocessor, str, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33021a.mPreprocessor.a(this.f33022b, this.f33023c);
    }
}
