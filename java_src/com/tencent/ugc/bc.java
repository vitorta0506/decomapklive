package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34746a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioFrame f34747b;

    private bc(TXVideoEditer tXVideoEditer, AudioFrame audioFrame) {
        this.f34746a = tXVideoEditer;
        this.f34747b = audioFrame;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, AudioFrame audioFrame) {
        return new bc(tXVideoEditer, audioFrame);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$onAudioEncodedFrame$57(this.f34746a, this.f34747b);
    }
}
