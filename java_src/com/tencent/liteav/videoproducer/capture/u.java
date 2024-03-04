package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final t f32745a;

    private u(t tVar) {
        this.f32745a = tVar;
    }

    public static Runnable a(t tVar) {
        return new u(tVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        t.a(this.f32745a);
    }
}
