package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class bm implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34771a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34772b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34773c;

    private bm(TXVideoEditer tXVideoEditer, int i9, int i10) {
        this.f34771a = tXVideoEditer;
        this.f34772b = i9;
        this.f34773c = i10;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9, int i10) {
        return new bm(tXVideoEditer, i9, i10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setBeautyFilter$8(this.f34771a, this.f34772b, this.f34773c);
    }
}
