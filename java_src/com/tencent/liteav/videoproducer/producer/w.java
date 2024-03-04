package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
final /* synthetic */ class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33334a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoProducerDef.StreamType f33335b;

    private w(f fVar, VideoProducerDef.StreamType streamType) {
        this.f33334a = fVar;
        this.f33335b = streamType;
    }

    public static Runnable a(f fVar, VideoProducerDef.StreamType streamType) {
        return new w(fVar, streamType);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33334a, this.f33335b);
    }
}
