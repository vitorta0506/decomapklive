package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34685a;

    /* renamed from: b  reason: collision with root package name */
    private final TXVideoEditer.TXVideoProcessListener f34686b;

    private aa(TXVideoEditer tXVideoEditer, TXVideoEditer.TXVideoProcessListener tXVideoProcessListener) {
        this.f34685a = tXVideoEditer;
        this.f34686b = tXVideoProcessListener;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, TXVideoEditer.TXVideoProcessListener tXVideoProcessListener) {
        return new aa(tXVideoEditer, tXVideoProcessListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setVideoProcessListener$32(this.f34685a, this.f34686b);
    }
}
