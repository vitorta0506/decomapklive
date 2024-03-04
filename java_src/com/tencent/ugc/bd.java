package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34748a;

    private bd(TXVideoEditer tXVideoEditer) {
        this.f34748a = tXVideoEditer;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer) {
        return new bd(tXVideoEditer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$onAudioEncodedFrameComplete$58(this.f34748a);
    }
}
