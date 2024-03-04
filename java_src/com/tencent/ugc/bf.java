package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34751a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34752b;

    /* renamed from: c  reason: collision with root package name */
    private final TXVideoEditer.TXVideoPreviewListener f34753c;

    private bf(TXVideoEditer tXVideoEditer, int i9, TXVideoEditer.TXVideoPreviewListener tXVideoPreviewListener) {
        this.f34751a = tXVideoEditer;
        this.f34752b = i9;
        this.f34753c = tXVideoPreviewListener;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9, TXVideoEditer.TXVideoPreviewListener tXVideoPreviewListener) {
        return new bf(tXVideoEditer, i9, tXVideoPreviewListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$notifyPreviewProgress$59(this.f34751a, this.f34752b, this.f34753c);
    }
}
