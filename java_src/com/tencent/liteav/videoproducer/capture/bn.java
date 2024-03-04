package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class bn implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final bi f32702a;

    private bn(bi biVar) {
        this.f32702a = biVar;
    }

    public static Runnable a(bi biVar) {
        return new bn(biVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        bi.c(this.f32702a);
    }
}
