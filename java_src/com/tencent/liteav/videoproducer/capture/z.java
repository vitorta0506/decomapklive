package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final t f32754a;

    private z(t tVar) {
        this.f32754a = tVar;
    }

    public static Runnable a(t tVar) {
        return new z(tVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        t.c(this.f32754a);
    }
}
