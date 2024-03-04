package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
/* loaded from: classes4.dex */
final /* synthetic */ class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32116a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoDecodeController.DecodeStrategy f32117b;

    private n(j jVar, VideoDecodeController.DecodeStrategy decodeStrategy) {
        this.f32116a = jVar;
        this.f32117b = decodeStrategy;
    }

    public static Runnable a(j jVar, VideoDecodeController.DecodeStrategy decodeStrategy) {
        return new n(jVar, decodeStrategy);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32116a;
        VideoDecodeController.DecodeStrategy decodeStrategy = this.f32117b;
        LiteavLog.i(jVar.f32076a, "setDecoderType: ".concat(String.valueOf(decodeStrategy)));
        VideoDecodeController videoDecodeController = jVar.f32081f;
        if (videoDecodeController != null) {
            videoDecodeController.a(decodeStrategy);
        }
    }
}
