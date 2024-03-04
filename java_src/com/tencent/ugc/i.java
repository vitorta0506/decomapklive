package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35027a;

    /* renamed from: b  reason: collision with root package name */
    private final long f35028b;

    /* renamed from: c  reason: collision with root package name */
    private final long f35029c;

    private i(TXVideoEditer tXVideoEditer, long j10, long j11) {
        this.f35027a = tXVideoEditer;
        this.f35028b = j10;
        this.f35029c = j11;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, long j10, long j11) {
        return new i(tXVideoEditer, j10, j11);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setBGMFadeInOutDuration$16(this.f35027a, this.f35028b, this.f35029c);
    }
}
