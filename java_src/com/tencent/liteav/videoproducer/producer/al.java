package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class al implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33196a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f33197b;

    private al(f fVar, boolean z10) {
        this.f33196a = fVar;
        this.f33197b = z10;
    }

    public static Runnable a(f fVar, boolean z10) {
        return new al(fVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33196a, this.f33197b);
    }
}
