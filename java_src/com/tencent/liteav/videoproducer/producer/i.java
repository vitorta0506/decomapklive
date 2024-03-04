package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videoproducer.encoder.VideoEncodeParams;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
final /* synthetic */ class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33297a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoProducerDef.StreamType f33298b;

    /* renamed from: c  reason: collision with root package name */
    private final VideoEncodeParams f33299c;

    /* renamed from: d  reason: collision with root package name */
    private final VideoEncoderDef.VideoEncoderDataListener f33300d;

    private i(f fVar, VideoProducerDef.StreamType streamType, VideoEncodeParams videoEncodeParams, VideoEncoderDef.VideoEncoderDataListener videoEncoderDataListener) {
        this.f33297a = fVar;
        this.f33298b = streamType;
        this.f33299c = videoEncodeParams;
        this.f33300d = videoEncoderDataListener;
    }

    public static Runnable a(f fVar, VideoProducerDef.StreamType streamType, VideoEncodeParams videoEncodeParams, VideoEncoderDef.VideoEncoderDataListener videoEncoderDataListener) {
        return new i(fVar, streamType, videoEncodeParams, videoEncoderDataListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33297a, this.f33298b, this.f33299c, this.f33300d);
    }
}
