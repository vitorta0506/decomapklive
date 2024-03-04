package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
final /* synthetic */ class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33317a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoProducerDef.HomeOrientation f33318b;

    private q(f fVar, VideoProducerDef.HomeOrientation homeOrientation) {
        this.f33317a = fVar;
        this.f33318b = homeOrientation;
    }

    public static Runnable a(f fVar, VideoProducerDef.HomeOrientation homeOrientation) {
        return new q(fVar, homeOrientation);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33317a, this.f33318b);
    }
}
