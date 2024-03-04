package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ap implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34718a;

    /* renamed from: b  reason: collision with root package name */
    private final TXVideoEditer.TXVideoGenerateListener f34719b;

    private ap(TXVideoEditer tXVideoEditer, TXVideoEditer.TXVideoGenerateListener tXVideoGenerateListener) {
        this.f34718a = tXVideoEditer;
        this.f34719b = tXVideoGenerateListener;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, TXVideoEditer.TXVideoGenerateListener tXVideoGenerateListener) {
        return new ap(tXVideoEditer, tXVideoGenerateListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setVideoGenerateListener$45(this.f34718a, this.f34719b);
    }
}
