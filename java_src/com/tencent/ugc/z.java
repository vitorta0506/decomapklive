package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35091a;

    private z(TXVideoEditer tXVideoEditer) {
        this.f35091a = tXVideoEditer;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer) {
        return new z(tXVideoEditer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$deleteAllEffect$31(this.f35091a);
    }
}
