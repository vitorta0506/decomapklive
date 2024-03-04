package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final int f34759a;

    /* renamed from: b  reason: collision with root package name */
    private final TXVideoEditer.TXVideoGenerateListener f34760b;

    private bj(int i9, TXVideoEditer.TXVideoGenerateListener tXVideoGenerateListener) {
        this.f34759a = i9;
        this.f34760b = tXVideoGenerateListener;
    }

    public static Runnable a(int i9, TXVideoEditer.TXVideoGenerateListener tXVideoGenerateListener) {
        return new bj(i9, tXVideoGenerateListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$notifyGenerateComplete$62(this.f34759a, this.f34760b);
    }
}
