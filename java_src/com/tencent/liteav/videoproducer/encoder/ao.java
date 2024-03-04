package com.tencent.liteav.videoproducer.encoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ao implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32843a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoEncodeParams f32844b;

    private ao(ah ahVar, VideoEncodeParams videoEncodeParams) {
        this.f32843a = ahVar;
        this.f32844b = videoEncodeParams;
    }

    public static Runnable a(ah ahVar, VideoEncodeParams videoEncodeParams) {
        return new ao(ahVar, videoEncodeParams);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.a(this.f32843a, this.f32844b);
    }
}
