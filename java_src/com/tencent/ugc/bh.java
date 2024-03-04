package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final int f34755a;

    /* renamed from: b  reason: collision with root package name */
    private final TXVideoEditer.TXVideoProcessListener f34756b;

    private bh(int i9, TXVideoEditer.TXVideoProcessListener tXVideoProcessListener) {
        this.f34755a = i9;
        this.f34756b = tXVideoProcessListener;
    }

    public static Runnable a(int i9, TXVideoEditer.TXVideoProcessListener tXVideoProcessListener) {
        return new bh(i9, tXVideoProcessListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$notifyProcessComplete$60(this.f34755a, this.f34756b);
    }
}
