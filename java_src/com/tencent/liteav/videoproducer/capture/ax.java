package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class ax implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final av f32611a;

    private ax(av avVar) {
        this.f32611a = avVar;
    }

    public static Runnable a(av avVar) {
        return new ax(avVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32611a.a();
    }
}
