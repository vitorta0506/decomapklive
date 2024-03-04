package com.tencent.liteav.videoconsumer.decoder;
/* loaded from: classes4.dex */
final /* synthetic */ class u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final s f32344a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f32345b;

    /* renamed from: c  reason: collision with root package name */
    private final ba f32346c;

    private u(s sVar, Object obj, ba baVar) {
        this.f32344a = sVar;
        this.f32345b = obj;
        this.f32346c = baVar;
    }

    public static Runnable a(s sVar, Object obj, ba baVar) {
        return new u(sVar, obj, baVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        s.a(this.f32344a, this.f32345b, this.f32346c);
    }
}
