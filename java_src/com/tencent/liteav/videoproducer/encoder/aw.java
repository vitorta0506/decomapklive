package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class aw implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32859a;

    /* renamed from: b  reason: collision with root package name */
    private final ServerVideoProducerConfig f32860b;

    private aw(ah ahVar, ServerVideoProducerConfig serverVideoProducerConfig) {
        this.f32859a = ahVar;
        this.f32860b = serverVideoProducerConfig;
    }

    public static Runnable a(ah ahVar, ServerVideoProducerConfig serverVideoProducerConfig) {
        return new aw(ahVar, serverVideoProducerConfig);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32859a.f32816m = this.f32860b;
    }
}
