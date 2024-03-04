package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class aq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34720a;

    /* renamed from: b  reason: collision with root package name */
    private final long f34721b;

    /* renamed from: c  reason: collision with root package name */
    private final long f34722c;

    private aq(TXVideoEditer tXVideoEditer, long j10, long j11) {
        this.f34720a = tXVideoEditer;
        this.f34721b = j10;
        this.f34722c = j11;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, long j10, long j11) {
        return new aq(tXVideoEditer, j10, j11);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setCutFromTime$46(this.f34720a, this.f34721b, this.f34722c);
    }
}
