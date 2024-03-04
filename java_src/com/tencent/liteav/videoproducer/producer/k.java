package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
final /* synthetic */ class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33303a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoProducerDef.StreamType f33304b;

    /* renamed from: c  reason: collision with root package name */
    private final VideoEncoderDef.EncodeStrategy f33305c;

    private k(f fVar, VideoProducerDef.StreamType streamType, VideoEncoderDef.EncodeStrategy encodeStrategy) {
        this.f33303a = fVar;
        this.f33304b = streamType;
        this.f33305c = encodeStrategy;
    }

    public static Runnable a(f fVar, VideoProducerDef.StreamType streamType, VideoEncoderDef.EncodeStrategy encodeStrategy) {
        return new k(fVar, streamType, encodeStrategy);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33303a, this.f33304b, this.f33305c);
    }
}
