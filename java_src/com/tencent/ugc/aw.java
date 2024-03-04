package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class aw implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34733a;

    private aw(TXVideoEditer tXVideoEditer) {
        this.f34733a = tXVideoEditer;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer) {
        return new aw(tXVideoEditer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34733a.mVideoProcessor.refreshOneFrame();
    }
}
