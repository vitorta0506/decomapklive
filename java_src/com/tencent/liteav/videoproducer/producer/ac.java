package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class ac implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33171a;

    /* renamed from: b  reason: collision with root package name */
    private final ServerVideoProducerConfig f33172b;

    private ac(f fVar, ServerVideoProducerConfig serverVideoProducerConfig) {
        this.f33171a = fVar;
        this.f33172b = serverVideoProducerConfig;
    }

    public static Runnable a(f fVar, ServerVideoProducerConfig serverVideoProducerConfig) {
        return new ac(fVar, serverVideoProducerConfig);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33171a, this.f33172b);
    }
}
