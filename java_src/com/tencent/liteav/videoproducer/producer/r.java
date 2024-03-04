package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33319a;

    private r(f fVar) {
        this.f33319a = fVar;
    }

    public static Runnable a(f fVar) {
        return new r(fVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.b(this.f33319a);
    }
}
