package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34925a;

    /* renamed from: b  reason: collision with root package name */
    private final long f34926b;

    private f(TXVideoEditer tXVideoEditer, long j10) {
        this.f34925a = tXVideoEditer;
        this.f34926b = j10;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, long j10) {
        return new f(tXVideoEditer, j10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setBGMAtVideoTime$13(this.f34925a, this.f34926b);
    }
}
