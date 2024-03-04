package com.tencent.liteav.videoconsumer.renderer;
/* loaded from: classes4.dex */
final /* synthetic */ class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32469a;

    private y(p pVar) {
        this.f32469a = pVar;
    }

    public static Runnable a(p pVar) {
        return new y(pVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.a(this.f32469a);
    }
}
