package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.videoconsumer.consumer.ServerVideoConsumerConfig;
/* loaded from: classes4.dex */
final /* synthetic */ class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final s f32351a;

    /* renamed from: b  reason: collision with root package name */
    private final ServerVideoConsumerConfig f32352b;

    private z(s sVar, ServerVideoConsumerConfig serverVideoConsumerConfig) {
        this.f32351a = sVar;
        this.f32352b = serverVideoConsumerConfig;
    }

    public static Runnable a(s sVar, ServerVideoConsumerConfig serverVideoConsumerConfig) {
        return new z(sVar, serverVideoConsumerConfig);
    }

    @Override // java.lang.Runnable
    public final void run() {
        s.a(this.f32351a, this.f32352b);
    }
}
