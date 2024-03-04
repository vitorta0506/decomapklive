package com.tencent.ugc;

import com.tencent.ugc.TXVideoJoiner;
/* loaded from: classes4.dex */
final /* synthetic */ class cg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34813a;

    /* renamed from: b  reason: collision with root package name */
    private final TXVideoJoiner.TXVideoJoinerListener f34814b;

    private cg(TXVideoJoiner tXVideoJoiner, TXVideoJoiner.TXVideoJoinerListener tXVideoJoinerListener) {
        this.f34813a = tXVideoJoiner;
        this.f34814b = tXVideoJoinerListener;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner, TXVideoJoiner.TXVideoJoinerListener tXVideoJoinerListener) {
        return new cg(tXVideoJoiner, tXVideoJoinerListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34813a.mTXVideoJoinerListener = this.f34814b;
    }
}
