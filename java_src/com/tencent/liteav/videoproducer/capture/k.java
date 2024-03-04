package com.tencent.liteav.videoproducer.capture;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32718a;

    /* renamed from: b  reason: collision with root package name */
    private final CameraCaptureParams f32719b;

    private k(CameraCaptureSingleton cameraCaptureSingleton, CameraCaptureParams cameraCaptureParams) {
        this.f32718a = cameraCaptureSingleton;
        this.f32719b = cameraCaptureParams;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton, CameraCaptureParams cameraCaptureParams) {
        return new k(cameraCaptureSingleton, cameraCaptureParams);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.lambda$updateParams$16(this.f32718a, this.f32719b);
    }
}
