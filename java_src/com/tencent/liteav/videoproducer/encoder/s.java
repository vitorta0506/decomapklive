package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videobase.common.EncodedVideoFrame;
/* loaded from: classes4.dex */
final /* synthetic */ class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final o f32954a;

    /* renamed from: b  reason: collision with root package name */
    private final EncodedVideoFrame f32955b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f32956c;

    private s(o oVar, EncodedVideoFrame encodedVideoFrame, boolean z10) {
        this.f32954a = oVar;
        this.f32955b = encodedVideoFrame;
        this.f32956c = z10;
    }

    public static Runnable a(o oVar, EncodedVideoFrame encodedVideoFrame, boolean z10) {
        return new s(oVar, encodedVideoFrame, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        o.a(this.f32954a, this.f32955b, this.f32956c);
    }
}
