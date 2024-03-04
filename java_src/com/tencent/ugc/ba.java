package com.tencent.ugc;

import com.tencent.liteav.videobase.common.EncodedVideoFrame;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ba implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34743a;

    /* renamed from: b  reason: collision with root package name */
    private final EncodedVideoFrame f34744b;

    private ba(TXVideoEditer tXVideoEditer, EncodedVideoFrame encodedVideoFrame) {
        this.f34743a = tXVideoEditer;
        this.f34744b = encodedVideoFrame;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, EncodedVideoFrame encodedVideoFrame) {
        return new ba(tXVideoEditer, encodedVideoFrame);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$onVideoEncodedFrame$55(this.f34743a, this.f34744b);
    }
}
