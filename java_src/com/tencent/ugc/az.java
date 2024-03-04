package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class az implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34739a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34740b;

    /* renamed from: c  reason: collision with root package name */
    private final long f34741c;

    private az(TXVideoEditer tXVideoEditer, int i9, long j10) {
        this.f34739a = tXVideoEditer;
        this.f34740b = i9;
        this.f34741c = j10;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9, long j10) {
        return new az(tXVideoEditer, i9, j10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$handleWriteMP4Completed$54(this.f34739a, this.f34740b, this.f34741c);
    }
}
