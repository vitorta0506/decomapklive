package com.tencent.liteav.videoconsumer.decoder;
/* loaded from: classes4.dex */
final /* synthetic */ class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final s f32348a;

    private w(s sVar) {
        this.f32348a = sVar;
    }

    public static Runnable a(s sVar) {
        return new w(sVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32348a.a();
    }
}
