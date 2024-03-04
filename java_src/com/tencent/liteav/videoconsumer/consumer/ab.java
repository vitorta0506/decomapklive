package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
import com.tencent.liteav.videoconsumer.decoder.VideoDecoderDef;
/* loaded from: classes4.dex */
final /* synthetic */ class ab implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32054a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoDecoderDef.ConsumerScene f32055b;

    private ab(j jVar, VideoDecoderDef.ConsumerScene consumerScene) {
        this.f32054a = jVar;
        this.f32055b = consumerScene;
    }

    public static Runnable a(j jVar, VideoDecoderDef.ConsumerScene consumerScene) {
        return new ab(jVar, consumerScene);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32054a;
        VideoDecoderDef.ConsumerScene consumerScene = this.f32055b;
        jVar.f32095t = consumerScene;
        VideoDecodeController videoDecodeController = jVar.f32081f;
        if (videoDecodeController != null) {
            videoDecodeController.a(consumerScene);
        }
    }
}
