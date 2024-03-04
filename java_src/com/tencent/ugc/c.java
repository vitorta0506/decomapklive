package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34803a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34804b;

    private c(TXVideoEditer tXVideoEditer, int i9) {
        this.f34803a = tXVideoEditer;
        this.f34804b = i9;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9) {
        return new c(tXVideoEditer, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setPictureTransition$10(this.f34803a, this.f34804b);
    }
}
