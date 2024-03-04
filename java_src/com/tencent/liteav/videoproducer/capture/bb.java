package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
/* loaded from: classes4.dex */
final /* synthetic */ class bb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ScreenCapturer f32661a;

    /* renamed from: b  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureParams f32662b;

    private bb(ScreenCapturer screenCapturer, CaptureSourceInterface.CaptureParams captureParams) {
        this.f32661a = screenCapturer;
        this.f32662b = captureParams;
    }

    public static Runnable a(ScreenCapturer screenCapturer, CaptureSourceInterface.CaptureParams captureParams) {
        return new bb(screenCapturer, captureParams);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScreenCapturer.a(this.f32661a, this.f32662b);
    }
}
