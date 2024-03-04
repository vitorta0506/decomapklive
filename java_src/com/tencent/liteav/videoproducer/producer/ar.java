package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class ar implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33217a;

    /* renamed from: b  reason: collision with root package name */
    private final float f33218b;

    private ar(f fVar, float f10) {
        this.f33217a = fVar;
        this.f33218b = f10;
    }

    public static Runnable a(f fVar, float f10) {
        return new ar(fVar, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33217a, this.f33218b);
    }
}
