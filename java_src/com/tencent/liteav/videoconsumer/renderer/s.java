package com.tencent.liteav.videoconsumer.renderer;
/* loaded from: classes4.dex */
final /* synthetic */ class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32454a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32455b;

    private s(p pVar, boolean z10) {
        this.f32454a = pVar;
        this.f32455b = z10;
    }

    public static Runnable a(p pVar, boolean z10) {
        return new s(pVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.b(this.f32454a, this.f32455b);
    }
}
