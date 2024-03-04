package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class at implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34727a;

    /* renamed from: b  reason: collision with root package name */
    private final float f34728b;

    private at(TXVideoEditer tXVideoEditer, float f10) {
        this.f34727a = tXVideoEditer;
        this.f34728b = f10;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, float f10) {
        return new at(tXVideoEditer, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setSpecialRatio$5(this.f34727a, this.f34728b);
    }
}
