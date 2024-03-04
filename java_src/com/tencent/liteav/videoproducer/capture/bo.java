package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class bo implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final bi f32703a;

    private bo(bi biVar) {
        this.f32703a = biVar;
    }

    public static Runnable a(bi biVar) {
        return new bo(biVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        bi.d(this.f32703a);
    }
}
