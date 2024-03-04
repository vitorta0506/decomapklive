package com.tencent.ugc;

import com.tencent.ugc.TXVideoJoiner;
/* loaded from: classes4.dex */
final /* synthetic */ class cb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34807a;

    /* renamed from: b  reason: collision with root package name */
    private final TXVideoJoiner.TXVideoPreviewListener f34808b;

    private cb(TXVideoJoiner tXVideoJoiner, TXVideoJoiner.TXVideoPreviewListener tXVideoPreviewListener) {
        this.f34807a = tXVideoJoiner;
        this.f34808b = tXVideoPreviewListener;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner, TXVideoJoiner.TXVideoPreviewListener tXVideoPreviewListener) {
        return new cb(tXVideoJoiner, tXVideoPreviewListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34807a.mTXVideoPreviewListener = this.f34808b;
    }
}
