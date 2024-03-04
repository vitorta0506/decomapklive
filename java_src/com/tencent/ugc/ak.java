package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ak implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34711a;

    /* renamed from: b  reason: collision with root package name */
    private final long f34712b;

    /* renamed from: c  reason: collision with root package name */
    private final long f34713c;

    private ak(TXVideoEditer tXVideoEditer, long j10, long j11) {
        this.f34711a = tXVideoEditer;
        this.f34712b = j10;
        this.f34713c = j11;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, long j10, long j11) {
        return new ak(tXVideoEditer, j10, j11);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$startPlayFromTime$40(this.f34711a, this.f34712b, this.f34713c);
    }
}
