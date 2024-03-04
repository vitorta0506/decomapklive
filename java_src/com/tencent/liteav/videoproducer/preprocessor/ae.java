package com.tencent.liteav.videoproducer.preprocessor;

import com.tencent.liteav.videobase.base.GLConstants;
/* loaded from: classes4.dex */
final /* synthetic */ class ae implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoPreprocessor f33024a;

    /* renamed from: b  reason: collision with root package name */
    private final GLConstants.GLScaleType f33025b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f33026c;

    private ae(VideoPreprocessor videoPreprocessor, GLConstants.GLScaleType gLScaleType, boolean z10) {
        this.f33024a = videoPreprocessor;
        this.f33025b = gLScaleType;
        this.f33026c = z10;
    }

    public static Runnable a(VideoPreprocessor videoPreprocessor, GLConstants.GLScaleType gLScaleType, boolean z10) {
        return new ae(videoPreprocessor, gLScaleType, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoPreprocessor.lambda$setGreenScreenParam$6(this.f33024a, this.f33025b, this.f33026c);
    }
}
