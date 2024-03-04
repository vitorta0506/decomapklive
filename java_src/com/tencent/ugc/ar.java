package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ar implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34723a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34724b;

    private ar(TXVideoEditer tXVideoEditer, int i9) {
        this.f34723a = tXVideoEditer;
        this.f34724b = i9;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9) {
        return new ar(tXVideoEditer, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setVideoBitrate$47(this.f34723a, this.f34724b);
    }
}
