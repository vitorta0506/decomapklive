package com.tencent.liteav.videoproducer.capture;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32722a;

    /* renamed from: b  reason: collision with root package name */
    private final CaptureCloudConfig f32723b;

    private m(CameraCaptureSingleton cameraCaptureSingleton, CaptureCloudConfig captureCloudConfig) {
        this.f32722a = cameraCaptureSingleton;
        this.f32723b = captureCloudConfig;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton, CaptureCloudConfig captureCloudConfig) {
        return new m(cameraCaptureSingleton, captureCloudConfig);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.lambda$setCaptureCloudConfig$2(this.f32722a, this.f32723b);
    }
}
