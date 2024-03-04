package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35058a;

    private u(TXVideoEditer tXVideoEditer) {
        this.f35058a = tXVideoEditer;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer) {
        return new u(tXVideoEditer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$deleteLastTransitionEffect$27(this.f35058a);
    }
}
