package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ai implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34707a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34708b;

    private ai(TXVideoEditer tXVideoEditer, int i9) {
        this.f34707a = tXVideoEditer;
        this.f34708b = i9;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9) {
        return new ai(tXVideoEditer, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setProfile$4(this.f34707a, this.f34708b);
    }
}
