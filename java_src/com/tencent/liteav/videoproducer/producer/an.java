package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
final /* synthetic */ class an implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33201a;

    /* renamed from: b  reason: collision with root package name */
    private final CaptureSourceInterface.SourceType f33202b;

    /* renamed from: c  reason: collision with root package name */
    private final VideoProducerDef.ProducerMode f33203c;

    /* renamed from: d  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureParams f33204d;

    private an(f fVar, CaptureSourceInterface.SourceType sourceType, VideoProducerDef.ProducerMode producerMode, CaptureSourceInterface.CaptureParams captureParams) {
        this.f33201a = fVar;
        this.f33202b = sourceType;
        this.f33203c = producerMode;
        this.f33204d = captureParams;
    }

    public static Runnable a(f fVar, CaptureSourceInterface.SourceType sourceType, VideoProducerDef.ProducerMode producerMode, CaptureSourceInterface.CaptureParams captureParams) {
        return new an(fVar, sourceType, producerMode, captureParams);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.b(this.f33201a, this.f33202b, this.f33203c, this.f33204d);
    }
}
