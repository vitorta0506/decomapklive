package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32913a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoEncoderDef.EncodeStrategy f32914b;

    private bb(ah ahVar, VideoEncoderDef.EncodeStrategy encodeStrategy) {
        this.f32913a = ahVar;
        this.f32914b = encodeStrategy;
    }

    public static Runnable a(ah ahVar, VideoEncoderDef.EncodeStrategy encodeStrategy) {
        return new bb(ahVar, encodeStrategy);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.a(this.f32913a, this.f32914b);
    }
}
