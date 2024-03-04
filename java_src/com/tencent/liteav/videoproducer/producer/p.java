package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
final /* synthetic */ class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33315a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoProducerDef.GSensorMode f33316b;

    private p(f fVar, VideoProducerDef.GSensorMode gSensorMode) {
        this.f33315a = fVar;
        this.f33316b = gSensorMode;
    }

    public static Runnable a(f fVar, VideoProducerDef.GSensorMode gSensorMode) {
        return new p(fVar, gSensorMode);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33315a, this.f33316b);
    }
}
