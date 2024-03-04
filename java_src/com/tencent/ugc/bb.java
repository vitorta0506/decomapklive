package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34745a;

    private bb(TXVideoEditer tXVideoEditer) {
        this.f34745a = tXVideoEditer;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer) {
        return new bb(tXVideoEditer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$onVideoEncodedFrameComplete$56(this.f34745a);
    }
}
