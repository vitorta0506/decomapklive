package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fz implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34973a;

    /* renamed from: b  reason: collision with root package name */
    private final TXVideoEditer.TXVideoCustomProcessListener f34974b;

    private fz(UGCVideoProcessor uGCVideoProcessor, TXVideoEditer.TXVideoCustomProcessListener tXVideoCustomProcessListener) {
        this.f34973a = uGCVideoProcessor;
        this.f34974b = tXVideoCustomProcessListener;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor, TXVideoEditer.TXVideoCustomProcessListener tXVideoCustomProcessListener) {
        return new fz(uGCVideoProcessor, tXVideoCustomProcessListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34973a.mTXVideoCustomProcessListener = this.f34974b;
    }
}
