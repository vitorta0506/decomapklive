package com.tencent.liteav.videoconsumer.consumer;
/* loaded from: classes4.dex */
final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f32068a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32069b;

    private f(a aVar, boolean z10) {
        this.f32068a = aVar;
        this.f32069b = z10;
    }

    public static Runnable a(a aVar, boolean z10) {
        return new f(aVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.b(this.f32068a, this.f32069b);
    }
}
