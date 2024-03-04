package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
final /* synthetic */ class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33301a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoProducerDef.StreamType f33302b;

    private j(f fVar, VideoProducerDef.StreamType streamType) {
        this.f33301a = fVar;
        this.f33302b = streamType;
    }

    public static Runnable a(f fVar, VideoProducerDef.StreamType streamType) {
        return new j(fVar, streamType);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.b(this.f33301a, this.f33302b);
    }
}
