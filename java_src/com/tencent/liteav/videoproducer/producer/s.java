package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videoproducer.encoder.VideoEncodeParams;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
final /* synthetic */ class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33320a;

    /* renamed from: b  reason: collision with root package name */
    private final GLConstants.Orientation f33321b;

    /* renamed from: c  reason: collision with root package name */
    private final VideoProducerDef.StreamType f33322c;

    /* renamed from: d  reason: collision with root package name */
    private final VideoEncodeParams f33323d;

    private s(f fVar, GLConstants.Orientation orientation, VideoProducerDef.StreamType streamType, VideoEncodeParams videoEncodeParams) {
        this.f33320a = fVar;
        this.f33321b = orientation;
        this.f33322c = streamType;
        this.f33323d = videoEncodeParams;
    }

    public static Runnable a(f fVar, GLConstants.Orientation orientation, VideoProducerDef.StreamType streamType, VideoEncodeParams videoEncodeParams) {
        return new s(fVar, orientation, streamType, videoEncodeParams);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33320a, this.f33321b, this.f33322c, this.f33323d);
    }
}
