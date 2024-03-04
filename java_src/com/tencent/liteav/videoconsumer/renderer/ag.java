package com.tencent.liteav.videoconsumer.renderer;
/* loaded from: classes4.dex */
final /* synthetic */ class ag implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32376a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32377b;

    private ag(p pVar, boolean z10) {
        this.f32376a = pVar;
        this.f32377b = z10;
    }

    public static Runnable a(p pVar, boolean z10) {
        return new ag(pVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.c(this.f32376a, this.f32377b);
    }
}
