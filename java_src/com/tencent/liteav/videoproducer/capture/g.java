package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32712a;

    /* renamed from: b  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureSourceListener f32713b;

    /* renamed from: c  reason: collision with root package name */
    private final CameraCaptureParams f32714c;

    private g(CameraCaptureSingleton cameraCaptureSingleton, CaptureSourceInterface.CaptureSourceListener captureSourceListener, CameraCaptureParams cameraCaptureParams) {
        this.f32712a = cameraCaptureSingleton;
        this.f32713b = captureSourceListener;
        this.f32714c = cameraCaptureParams;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton, CaptureSourceInterface.CaptureSourceListener captureSourceListener, CameraCaptureParams cameraCaptureParams) {
        return new g(cameraCaptureSingleton, captureSourceListener, cameraCaptureParams);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.lambda$start$13(this.f32712a, this.f32713b, this.f32714c);
    }
}
