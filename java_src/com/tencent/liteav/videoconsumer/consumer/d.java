package com.tencent.liteav.videoconsumer.consumer;
/* loaded from: classes4.dex */
final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f32065a;

    private d(a aVar) {
        this.f32065a = aVar;
    }

    public static Runnable a(a aVar) {
        return new d(aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f32065a);
    }
}
