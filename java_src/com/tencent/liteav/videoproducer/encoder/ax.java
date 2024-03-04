package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ax implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32861a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoEncodeParams f32862b;

    /* renamed from: c  reason: collision with root package name */
    private final VideoEncoderDef.VideoEncoderDataListener f32863c;

    private ax(ah ahVar, VideoEncodeParams videoEncodeParams, VideoEncoderDef.VideoEncoderDataListener videoEncoderDataListener) {
        this.f32861a = ahVar;
        this.f32862b = videoEncodeParams;
        this.f32863c = videoEncoderDataListener;
    }

    public static Runnable a(ah ahVar, VideoEncodeParams videoEncodeParams, VideoEncoderDef.VideoEncoderDataListener videoEncoderDataListener) {
        return new ax(ahVar, videoEncodeParams, videoEncoderDataListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.a(this.f32861a, this.f32862b, this.f32863c);
    }
}
