package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35090a;

    private y(TXVideoEditer tXVideoEditer) {
        this.f35090a = tXVideoEditer;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer) {
        return new y(tXVideoEditer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$deleteLastEffect$30(this.f35090a);
    }
}
