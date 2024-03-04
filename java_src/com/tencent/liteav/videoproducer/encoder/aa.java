package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final w f32791a;

    /* renamed from: b  reason: collision with root package name */
    private final ServerVideoProducerConfig f32792b;

    private aa(w wVar, ServerVideoProducerConfig serverVideoProducerConfig) {
        this.f32791a = wVar;
        this.f32792b = serverVideoProducerConfig;
    }

    public static Runnable a(w wVar, ServerVideoProducerConfig serverVideoProducerConfig) {
        return new aa(wVar, serverVideoProducerConfig);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32791a.f32985i = this.f32792b;
    }
}
