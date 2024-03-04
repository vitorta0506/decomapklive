package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class ai implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33191a;

    private ai(f fVar) {
        this.f33191a = fVar;
    }

    public static Runnable a(f fVar) {
        return new ai(fVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33191a.h();
    }
}
