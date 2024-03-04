package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class al implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34714a;

    private al(TXVideoEditer tXVideoEditer) {
        this.f34714a = tXVideoEditer;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer) {
        return new al(tXVideoEditer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$pausePlay$41(this.f34714a);
    }
}
