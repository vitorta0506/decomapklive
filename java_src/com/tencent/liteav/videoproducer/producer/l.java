package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33306a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f33307b;

    private l(f fVar, boolean z10) {
        this.f33306a = fVar;
        this.f33307b = z10;
    }

    public static Runnable a(f fVar, boolean z10) {
        return new l(fVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.d(this.f33306a, this.f33307b);
    }
}
