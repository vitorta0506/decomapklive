package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ao implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34717a;

    private ao(TXVideoEditer tXVideoEditer) {
        this.f34717a = tXVideoEditer;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer) {
        return new ao(tXVideoEditer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$previewAtTime$44(this.f34717a);
    }
}
