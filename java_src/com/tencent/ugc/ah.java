package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ah implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34705a;

    /* renamed from: b  reason: collision with root package name */
    private final TXVideoEditer.TXVideoPreviewListener f34706b;

    private ah(TXVideoEditer tXVideoEditer, TXVideoEditer.TXVideoPreviewListener tXVideoPreviewListener) {
        this.f34705a = tXVideoEditer;
        this.f34706b = tXVideoPreviewListener;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, TXVideoEditer.TXVideoPreviewListener tXVideoPreviewListener) {
        return new ah(tXVideoEditer, tXVideoPreviewListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setTXVideoPreviewListener$38(this.f34705a, this.f34706b);
    }
}
