package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
final /* synthetic */ class t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33324a;

    /* renamed from: b  reason: collision with root package name */
    private final int f33325b;

    /* renamed from: c  reason: collision with root package name */
    private final VideoProducerDef.StreamType f33326c;

    private t(f fVar, int i9, VideoProducerDef.StreamType streamType) {
        this.f33324a = fVar;
        this.f33325b = i9;
        this.f33326c = streamType;
    }

    public static Runnable a(f fVar, int i9, VideoProducerDef.StreamType streamType) {
        return new t(fVar, i9, streamType);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.b(this.f33324a, this.f33325b, this.f33326c);
    }
}
