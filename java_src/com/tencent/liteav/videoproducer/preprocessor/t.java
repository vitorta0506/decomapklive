package com.tencent.liteav.videoproducer.preprocessor;

import java.util.List;
/* loaded from: classes4.dex */
final /* synthetic */ class t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoPreprocessor f33116a;

    /* renamed from: b  reason: collision with root package name */
    private final List f33117b;

    private t(VideoPreprocessor videoPreprocessor, List list) {
        this.f33116a = videoPreprocessor;
        this.f33117b = list;
    }

    public static Runnable a(VideoPreprocessor videoPreprocessor, List list) {
        return new t(videoPreprocessor, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoPreprocessor.lambda$setWatermarkList$11(this.f33116a, this.f33117b);
    }
}
