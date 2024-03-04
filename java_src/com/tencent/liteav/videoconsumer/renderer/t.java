package com.tencent.liteav.videoconsumer.renderer;
/* loaded from: classes4.dex */
final /* synthetic */ class t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32456a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32457b;

    private t(p pVar, boolean z10) {
        this.f32456a = pVar;
        this.f32457b = z10;
    }

    public static Runnable a(p pVar, boolean z10) {
        return new t(pVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.a(this.f32456a, this.f32457b);
    }
}
