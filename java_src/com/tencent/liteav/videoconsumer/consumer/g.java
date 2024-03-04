package com.tencent.liteav.videoconsumer.consumer;
/* loaded from: classes4.dex */
final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f32070a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32071b;

    private g(a aVar, boolean z10) {
        this.f32070a = aVar;
        this.f32071b = z10;
    }

    public static Runnable a(a aVar, boolean z10) {
        return new g(aVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f32070a, this.f32071b);
    }
}
