package com.tencent.liteav.videoconsumer.renderer;
/* loaded from: classes4.dex */
final /* synthetic */ class ae implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32372a;

    /* renamed from: b  reason: collision with root package name */
    private final float f32373b;

    private ae(p pVar, float f10) {
        this.f32372a = pVar;
        this.f32373b = f10;
    }

    public static Runnable a(p pVar, float f10) {
        return new ae(pVar, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.a(this.f32372a, this.f32373b);
    }
}
