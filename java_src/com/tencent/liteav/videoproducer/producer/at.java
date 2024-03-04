package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
final /* synthetic */ class at implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33220a;

    /* renamed from: b  reason: collision with root package name */
    private final CaptureSourceInterface.SourceType f33221b;

    /* renamed from: c  reason: collision with root package name */
    private final VideoProducerDef.ProducerMode f33222c;

    /* renamed from: d  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureParams f33223d;

    private at(f fVar, CaptureSourceInterface.SourceType sourceType, VideoProducerDef.ProducerMode producerMode, CaptureSourceInterface.CaptureParams captureParams) {
        this.f33220a = fVar;
        this.f33221b = sourceType;
        this.f33222c = producerMode;
        this.f33223d = captureParams;
    }

    public static Runnable a(f fVar, CaptureSourceInterface.SourceType sourceType, VideoProducerDef.ProducerMode producerMode, CaptureSourceInterface.CaptureParams captureParams) {
        return new at(fVar, sourceType, producerMode, captureParams);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33220a, this.f33221b, this.f33222c, this.f33223d);
    }
}
