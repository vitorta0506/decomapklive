package com.tencent.liteav.videoproducer.encoder;
/* loaded from: classes4.dex */
final /* synthetic */ class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final o f32949a;

    private p(o oVar) {
        this.f32949a = oVar;
    }

    public static Runnable a(o oVar) {
        return new p(oVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        o.a(this.f32949a);
    }
}
