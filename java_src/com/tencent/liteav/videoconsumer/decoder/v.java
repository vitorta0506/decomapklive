package com.tencent.liteav.videoconsumer.decoder;
/* loaded from: classes4.dex */
final /* synthetic */ class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final s f32347a;

    private v(s sVar) {
        this.f32347a = sVar;
    }

    public static Runnable a(s sVar) {
        return new v(sVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32347a.a();
    }
}
