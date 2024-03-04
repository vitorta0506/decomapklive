package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bk implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34761a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34762b;

    /* renamed from: c  reason: collision with root package name */
    private final long f34763c;

    /* renamed from: d  reason: collision with root package name */
    private final int f34764d;

    private bk(TXVideoEditer tXVideoEditer, int i9, long j10, int i10) {
        this.f34761a = tXVideoEditer;
        this.f34762b = i9;
        this.f34763c = j10;
        this.f34764d = i10;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9, long j10, int i10) {
        return new bk(tXVideoEditer, i9, j10, i10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$null$0(this.f34761a, this.f34762b, this.f34763c, this.f34764d);
    }
}
