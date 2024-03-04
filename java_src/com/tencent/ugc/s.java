package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35051a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f35052b;

    private s(TXVideoEditer tXVideoEditer, boolean z10) {
        this.f35051a = tXVideoEditer;
        this.f35052b = z10;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, boolean z10) {
        return new s(tXVideoEditer, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setReverse$25(this.f35051a, this.f35052b);
    }
}
