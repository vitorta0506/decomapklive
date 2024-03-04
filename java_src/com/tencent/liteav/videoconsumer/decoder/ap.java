package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.base.util.LiteavLog;
/* loaded from: classes4.dex */
final /* synthetic */ class ap implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32202a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32203b;

    private ap(VideoDecodeController videoDecodeController, boolean z10) {
        this.f32202a = videoDecodeController;
        this.f32203b = z10;
    }

    public static Runnable a(VideoDecodeController videoDecodeController, boolean z10) {
        return new ap(videoDecodeController, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDecodeController videoDecodeController = this.f32202a;
        boolean z10 = this.f32203b;
        d dVar = videoDecodeController.f32144c;
        dVar.f32267w = z10;
        String str = dVar.f32245a;
        LiteavLog.i(str, "setUsingLowLatencyDecoder:" + dVar.f32267w);
    }
}
