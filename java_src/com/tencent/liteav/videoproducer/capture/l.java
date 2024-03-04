package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32720a;

    /* renamed from: b  reason: collision with root package name */
    private final ServerVideoProducerConfig f32721b;

    private l(CameraCaptureSingleton cameraCaptureSingleton, ServerVideoProducerConfig serverVideoProducerConfig) {
        this.f32720a = cameraCaptureSingleton;
        this.f32721b = serverVideoProducerConfig;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton, ServerVideoProducerConfig serverVideoProducerConfig) {
        return new l(cameraCaptureSingleton, serverVideoProducerConfig);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.lambda$setServerConfig$1(this.f32720a, this.f32721b);
    }
}
