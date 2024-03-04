package com.tencent.liteav.videoconsumer.decoder;
/* loaded from: classes4.dex */
final /* synthetic */ class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final s f32349a;

    private x(s sVar) {
        this.f32349a = sVar;
    }

    public static Runnable a(s sVar) {
        return new x(sVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        s.e(this.f32349a);
    }
}
