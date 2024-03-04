package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class am implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34715a;

    private am(TXVideoEditer tXVideoEditer) {
        this.f34715a = tXVideoEditer;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer) {
        return new am(tXVideoEditer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$resumePlay$42(this.f34715a);
    }
}
