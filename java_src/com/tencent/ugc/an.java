package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class an implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34716a;

    private an(TXVideoEditer tXVideoEditer) {
        this.f34716a = tXVideoEditer;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer) {
        return new an(tXVideoEditer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$stopPlay$43(this.f34716a);
    }
}
