package com.tencent.liteav.videoproducer.preprocessor;

import android.graphics.Bitmap;
/* loaded from: classes4.dex */
final /* synthetic */ class ag implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoPreprocessor f33029a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f33030b;

    private ag(VideoPreprocessor videoPreprocessor, Bitmap bitmap) {
        this.f33029a = videoPreprocessor;
        this.f33030b = bitmap;
    }

    public static Runnable a(VideoPreprocessor videoPreprocessor, Bitmap bitmap) {
        return new ag(videoPreprocessor, bitmap);
    }

    @Override // java.lang.Runnable
    public final void run() {
        r0.mPreprocessor.a(1.0f, this.f33030b, this.f33029a.mLookupMixLevel, null, 0.0f);
    }
}
