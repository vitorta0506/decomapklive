package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoconsumer.consumer.ServerVideoConsumerConfig;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
/* loaded from: classes4.dex */
final /* synthetic */ class u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32132a;

    /* renamed from: b  reason: collision with root package name */
    private final ServerVideoConsumerConfig f32133b;

    private u(j jVar, ServerVideoConsumerConfig serverVideoConsumerConfig) {
        this.f32132a = jVar;
        this.f32133b = serverVideoConsumerConfig;
    }

    public static Runnable a(j jVar, ServerVideoConsumerConfig serverVideoConsumerConfig) {
        return new u(jVar, serverVideoConsumerConfig);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32132a;
        final ServerVideoConsumerConfig serverVideoConsumerConfig = this.f32133b;
        LiteavLog.i(jVar.f32076a, "setServerConfig=".concat(String.valueOf(serverVideoConsumerConfig)));
        final VideoDecodeController videoDecodeController = jVar.f32081f;
        if (videoDecodeController != null) {
            videoDecodeController.a(new Runnable(videoDecodeController, serverVideoConsumerConfig) { // from class: com.tencent.liteav.videoconsumer.decoder.ar

                /* renamed from: a  reason: collision with root package name */
                private final VideoDecodeController f32206a;

                /* renamed from: b  reason: collision with root package name */
                private final ServerVideoConsumerConfig f32207b;

                {
                    this.f32206a = videoDecodeController;
                    this.f32207b = serverVideoConsumerConfig;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    VideoDecodeController videoDecodeController2 = this.f32206a;
                    ServerVideoConsumerConfig serverVideoConsumerConfig2 = this.f32207b;
                    videoDecodeController2.f32157p = serverVideoConsumerConfig2;
                    d dVar = videoDecodeController2.f32144c;
                    if (serverVideoConsumerConfig2 != null) {
                        int i9 = serverVideoConsumerConfig2.hwDecoderMaxCacheForHighRes;
                        dVar.f32257m = i9;
                        dVar.f32258n = serverVideoConsumerConfig2.hwDecoderMaxCacheForLowRes;
                        dVar.f32259o = serverVideoConsumerConfig2.enableMediaCodecReusing;
                        LiteavLog.i(dVar.f32245a, "set hardware decoder max cache to highResolution: %d, lowResolution: %d, enableMediaCodecReusing:%b", Integer.valueOf(i9), Integer.valueOf(dVar.f32258n), Boolean.valueOf(dVar.f32259o));
                    }
                }
            });
        }
    }
}
