package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35025a;

    /* renamed from: b  reason: collision with root package name */
    private final float f35026b;

    private h(TXVideoEditer tXVideoEditer, float f10) {
        this.f35025a = tXVideoEditer;
        this.f35026b = f10;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, float f10) {
        return new h(tXVideoEditer, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setBGMVolume$15(this.f35025a, this.f35026b);
    }
}
