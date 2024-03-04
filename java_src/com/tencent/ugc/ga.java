package com.tencent.ugc;

import com.tencent.ugc.UGCVideoProcessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ga implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34978a;

    /* renamed from: b  reason: collision with root package name */
    private final UGCVideoProcessor.VideoProcessListener f34979b;

    private ga(UGCVideoProcessor uGCVideoProcessor, UGCVideoProcessor.VideoProcessListener videoProcessListener) {
        this.f34978a = uGCVideoProcessor;
        this.f34979b = videoProcessListener;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor, UGCVideoProcessor.VideoProcessListener videoProcessListener) {
        return new ga(uGCVideoProcessor, videoProcessListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34978a.mVideoProcessListener = this.f34979b;
    }
}
