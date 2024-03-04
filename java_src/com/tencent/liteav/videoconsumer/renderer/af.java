package com.tencent.liteav.videoconsumer.renderer;
/* loaded from: classes4.dex */
final /* synthetic */ class af implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32374a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32375b;

    private af(p pVar, boolean z10) {
        this.f32374a = pVar;
        this.f32375b = z10;
    }

    public static Runnable a(p pVar, boolean z10) {
        return new af(pVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.d(this.f32374a, this.f32375b);
    }
}
