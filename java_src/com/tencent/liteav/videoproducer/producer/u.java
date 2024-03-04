package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
final /* synthetic */ class u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33327a;

    /* renamed from: b  reason: collision with root package name */
    private final int f33328b;

    /* renamed from: c  reason: collision with root package name */
    private final VideoProducerDef.StreamType f33329c;

    private u(f fVar, int i9, VideoProducerDef.StreamType streamType) {
        this.f33327a = fVar;
        this.f33328b = i9;
        this.f33329c = streamType;
    }

    public static Runnable a(f fVar, int i9, VideoProducerDef.StreamType streamType) {
        return new u(fVar, i9, streamType);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33327a, this.f33328b, this.f33329c);
    }
}
