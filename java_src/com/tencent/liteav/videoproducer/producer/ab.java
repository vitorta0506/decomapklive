package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class ab implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33170a;

    private ab(f fVar) {
        this.f33170a = fVar;
    }

    public static Runnable a(f fVar) {
        return new ab(fVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.g(this.f33170a);
    }
}
