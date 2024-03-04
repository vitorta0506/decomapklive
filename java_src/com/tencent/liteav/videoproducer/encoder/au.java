package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videobase.common.EncodedVideoFrame;
/* loaded from: classes4.dex */
final /* synthetic */ class au implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32854a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32855b;

    /* renamed from: c  reason: collision with root package name */
    private final EncodedVideoFrame f32856c;

    private au(ah ahVar, boolean z10, EncodedVideoFrame encodedVideoFrame) {
        this.f32854a = ahVar;
        this.f32855b = z10;
        this.f32856c = encodedVideoFrame;
    }

    public static Runnable a(ah ahVar, boolean z10, EncodedVideoFrame encodedVideoFrame) {
        return new au(ahVar, z10, encodedVideoFrame);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.a(this.f32854a, this.f32855b, this.f32856c);
    }
}
