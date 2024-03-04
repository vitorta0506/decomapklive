package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class as implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34725a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34726b;

    private as(TXVideoEditer tXVideoEditer, int i9) {
        this.f34725a = tXVideoEditer;
        this.f34726b = i9;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9) {
        return new as(tXVideoEditer, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setAudioBitrate$48(this.f34725a, this.f34726b);
    }
}
