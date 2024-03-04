package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.videoconsumer.decoder.VideoDecoderDef;
/* loaded from: classes4.dex */
final /* synthetic */ class t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final s f32342a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoDecoderDef.ConsumerScene f32343b;

    private t(s sVar, VideoDecoderDef.ConsumerScene consumerScene) {
        this.f32342a = sVar;
        this.f32343b = consumerScene;
    }

    public static Runnable a(s sVar, VideoDecoderDef.ConsumerScene consumerScene) {
        return new t(sVar, consumerScene);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32342a.f32328r = this.f32343b;
    }
}
