package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class av implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34732a;

    private av(TXVideoEditer tXVideoEditer) {
        this.f34732a = tXVideoEditer;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer) {
        return new av(tXVideoEditer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$cancel$50(this.f34732a);
    }
}
