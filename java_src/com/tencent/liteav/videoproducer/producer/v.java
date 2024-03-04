package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
final /* synthetic */ class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33330a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoProducerDef.StreamType f33331b;

    /* renamed from: c  reason: collision with root package name */
    private final int f33332c;

    /* renamed from: d  reason: collision with root package name */
    private final int f33333d;

    private v(f fVar, VideoProducerDef.StreamType streamType, int i9, int i10) {
        this.f33330a = fVar;
        this.f33331b = streamType;
        this.f33332c = i9;
        this.f33333d = i10;
    }

    public static Runnable a(f fVar, VideoProducerDef.StreamType streamType, int i9, int i10) {
        return new v(fVar, streamType, i9, i10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33330a, this.f33331b, this.f33332c, this.f33333d);
    }
}
