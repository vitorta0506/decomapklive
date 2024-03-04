package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ax implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34734a;

    /* renamed from: b  reason: collision with root package name */
    private final float f34735b;

    private ax(TXVideoEditer tXVideoEditer, float f10) {
        this.f34734a = tXVideoEditer;
        this.f34735b = f10;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, float f10) {
        return new ax(tXVideoEditer, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setVideoVolume$52(this.f34734a, this.f34735b);
    }
}
