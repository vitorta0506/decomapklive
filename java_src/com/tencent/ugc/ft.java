package com.tencent.ugc;

import com.tencent.ugc.UGCVideoProcessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ft implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34956a;

    /* renamed from: b  reason: collision with root package name */
    private final UGCVideoProcessor.VideoEncodedFrameListener f34957b;

    private ft(UGCVideoProcessor uGCVideoProcessor, UGCVideoProcessor.VideoEncodedFrameListener videoEncodedFrameListener) {
        this.f34956a = uGCVideoProcessor;
        this.f34957b = videoEncodedFrameListener;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor, UGCVideoProcessor.VideoEncodedFrameListener videoEncodedFrameListener) {
        return new ft(uGCVideoProcessor, videoEncodedFrameListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34956a.mVideoEncodedFrameListener = this.f34957b;
    }
}
