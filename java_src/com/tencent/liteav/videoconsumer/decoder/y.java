package com.tencent.liteav.videoconsumer.decoder;
/* loaded from: classes4.dex */
final /* synthetic */ class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final s f32350a;

    private y(s sVar) {
        this.f32350a = sVar;
    }

    public static Runnable a(s sVar) {
        return new y(sVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        s.f(this.f32350a);
    }
}
