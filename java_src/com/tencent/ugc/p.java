package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35045a;

    /* renamed from: b  reason: collision with root package name */
    private final int f35046b;

    private p(TXVideoEditer tXVideoEditer, int i9) {
        this.f35045a = tXVideoEditer;
        this.f35046b = i9;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9) {
        return new p(tXVideoEditer, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setRenderRotation$22(this.f35045a, this.f35046b);
    }
}
