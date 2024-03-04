package com.tencent.ugc;

import com.tencent.liteav.videoproducer.encoder.VideoEncodeParams;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fs implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34954a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoEncodeParams f34955b;

    private fs(UGCVideoProcessor uGCVideoProcessor, VideoEncodeParams videoEncodeParams) {
        this.f34954a = uGCVideoProcessor;
        this.f34955b = videoEncodeParams;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor, VideoEncodeParams videoEncodeParams) {
        return new fs(uGCVideoProcessor, videoEncodeParams);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34954a.mVideoEncodeParams = this.f34955b;
    }
}
