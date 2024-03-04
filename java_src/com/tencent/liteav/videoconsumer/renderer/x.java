package com.tencent.liteav.videoconsumer.renderer;
/* loaded from: classes4.dex */
final /* synthetic */ class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32468a;

    private x(p pVar) {
        this.f32468a = pVar;
    }

    public static Runnable a(p pVar) {
        return new x(pVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.b(this.f32468a);
    }
}
