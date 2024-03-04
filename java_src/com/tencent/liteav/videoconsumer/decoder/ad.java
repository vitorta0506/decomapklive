package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ad implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32186a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoDecodeController.DecodeStrategy f32187b;

    private ad(VideoDecodeController videoDecodeController, VideoDecodeController.DecodeStrategy decodeStrategy) {
        this.f32186a = videoDecodeController;
        this.f32187b = decodeStrategy;
    }

    public static Runnable a(VideoDecodeController videoDecodeController, VideoDecodeController.DecodeStrategy decodeStrategy) {
        return new ad(videoDecodeController, decodeStrategy);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDecodeController videoDecodeController = this.f32186a;
        VideoDecodeController.DecodeStrategy decodeStrategy = this.f32187b;
        d dVar = videoDecodeController.f32144c;
        if (dVar.f32251g != decodeStrategy) {
            dVar.f32251g = decodeStrategy;
            dVar.f32252h = null;
            if (decodeStrategy == VideoDecodeController.DecodeStrategy.FORCE_HARDWARE) {
                dVar.H = 3;
            } else {
                dVar.H = 1;
            }
            LiteavLog.i(dVar.f32245a, "set decode strategy to %s", decodeStrategy);
        }
    }
}
