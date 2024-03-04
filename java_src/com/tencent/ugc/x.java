package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
/* loaded from: classes4.dex */
final /* synthetic */ class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35088a;

    /* renamed from: b  reason: collision with root package name */
    private final TXVideoEditer.TXVideoCustomProcessListener f35089b;

    private x(TXVideoEditer tXVideoEditer, TXVideoEditer.TXVideoCustomProcessListener tXVideoCustomProcessListener) {
        this.f35088a = tXVideoEditer;
        this.f35089b = tXVideoCustomProcessListener;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, TXVideoEditer.TXVideoCustomProcessListener tXVideoCustomProcessListener) {
        return new x(tXVideoEditer, tXVideoCustomProcessListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setCustomVideoProcessListener$3(this.f35088a, this.f35089b);
    }
}
