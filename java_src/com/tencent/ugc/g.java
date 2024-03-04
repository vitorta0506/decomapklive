package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34975a;

    /* renamed from: b  reason: collision with root package name */
    private final long f34976b;

    /* renamed from: c  reason: collision with root package name */
    private final long f34977c;

    private g(TXVideoEditer tXVideoEditer, long j10, long j11) {
        this.f34975a = tXVideoEditer;
        this.f34976b = j10;
        this.f34977c = j11;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, long j10, long j11) {
        return new g(tXVideoEditer, j10, j11);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setBGMStartTime$14(this.f34975a, this.f34976b, this.f34977c);
    }
}
