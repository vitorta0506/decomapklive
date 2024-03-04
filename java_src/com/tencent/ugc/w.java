package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35085a;

    /* renamed from: b  reason: collision with root package name */
    private final int f35086b;

    /* renamed from: c  reason: collision with root package name */
    private final long f35087c;

    private w(TXVideoEditer tXVideoEditer, int i9, long j10) {
        this.f35085a = tXVideoEditer;
        this.f35086b = i9;
        this.f35087c = j10;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9, long j10) {
        return new w(tXVideoEditer, i9, j10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$stopEffect$29(this.f35085a, this.f35086b, this.f35087c);
    }
}
