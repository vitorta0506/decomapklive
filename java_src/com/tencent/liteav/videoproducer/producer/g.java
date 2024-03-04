package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33294a;

    private g(f fVar) {
        this.f33294a = fVar;
    }

    public static Runnable a(f fVar) {
        return new g(fVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.c(this.f33294a);
    }
}
