package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
/* loaded from: classes4.dex */
final /* synthetic */ class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final t f32542a;

    /* renamed from: b  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureParams f32543b;

    private aa(t tVar, CaptureSourceInterface.CaptureParams captureParams) {
        this.f32542a = tVar;
        this.f32543b = captureParams;
    }

    public static Runnable a(t tVar, CaptureSourceInterface.CaptureParams captureParams) {
        return new aa(tVar, captureParams);
    }

    @Override // java.lang.Runnable
    public final void run() {
        t.a(this.f32542a, this.f32543b);
    }
}
