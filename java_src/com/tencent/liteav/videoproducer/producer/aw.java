package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class aw implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33228a;

    private aw(f fVar) {
        this.f33228a = fVar;
    }

    public static Runnable a(f fVar) {
        return new aw(fVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.f(this.f33228a);
    }
}
