package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class ab implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final t f32544a;

    private ab(t tVar) {
        this.f32544a = tVar;
    }

    public static Runnable a(t tVar) {
        return new ab(tVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        t.b(this.f32544a);
    }
}
