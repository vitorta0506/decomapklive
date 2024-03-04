package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.base.util.p;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class at implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32210a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoDecodeController.a f32211b;

    private at(VideoDecodeController videoDecodeController, VideoDecodeController.a aVar) {
        this.f32210a = videoDecodeController;
        this.f32211b = aVar;
    }

    public static Runnable a(VideoDecodeController videoDecodeController, VideoDecodeController.a aVar) {
        return new at(videoDecodeController, aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        final VideoDecodeController videoDecodeController = this.f32210a;
        VideoDecodeController.a aVar = this.f32211b;
        if (videoDecodeController.f32152k) {
            return;
        }
        com.tencent.liteav.base.util.j jVar = videoDecodeController.f32147f;
        if (jVar != null) {
            jVar.a(15);
        }
        videoDecodeController.b();
        videoDecodeController.f32152k = true;
        videoDecodeController.f32149h = aVar;
        videoDecodeController.f32155n.set(0);
        videoDecodeController.f32144c.b();
        videoDecodeController.f32145d.a();
        if (videoDecodeController.f32148g == null) {
            videoDecodeController.f32148g = new com.tencent.liteav.base.util.p(videoDecodeController.f32147f, new p.a(videoDecodeController) { // from class: com.tencent.liteav.videoconsumer.decoder.au

                /* renamed from: a  reason: collision with root package name */
                private final VideoDecodeController f32212a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32212a = videoDecodeController;
                }

                @Override // com.tencent.liteav.base.util.p.a
                public final void a() {
                    az azVar;
                    VideoDecodeController videoDecodeController2 = this.f32212a;
                    if (videoDecodeController2.f32152k) {
                        if (videoDecodeController2.e() > 0) {
                            videoDecodeController2.d();
                        } else if (!videoDecodeController2.f32146e || videoDecodeController2.f32155n.get() <= 0 || (azVar = videoDecodeController2.f32153l) == null) {
                        } else {
                            azVar.decode(null);
                        }
                    }
                }
            });
        }
        videoDecodeController.f32148g.a();
    }
}
