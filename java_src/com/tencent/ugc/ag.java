package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ag implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34704a;

    private ag(TXVideoEditer tXVideoEditer) {
        this.f34704a = tXVideoEditer;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer) {
        return new ag(tXVideoEditer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$release$37(this.f34704a);
    }
}
