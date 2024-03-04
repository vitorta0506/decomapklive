package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35059a;

    /* renamed from: b  reason: collision with root package name */
    private final int f35060b;

    /* renamed from: c  reason: collision with root package name */
    private final long f35061c;

    private v(TXVideoEditer tXVideoEditer, int i9, long j10) {
        this.f35059a = tXVideoEditer;
        this.f35060b = i9;
        this.f35061c = j10;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9, long j10) {
        return new v(tXVideoEditer, i9, j10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$startEffect$28(this.f35059a, this.f35060b, this.f35061c);
    }
}
