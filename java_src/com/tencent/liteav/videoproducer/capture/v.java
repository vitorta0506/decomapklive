package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CaptureCloudConfig f32746a;

    private v(CaptureCloudConfig captureCloudConfig) {
        this.f32746a = captureCloudConfig;
    }

    public static Runnable a(CaptureCloudConfig captureCloudConfig) {
        return new v(captureCloudConfig);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.getInstance().setCaptureCloudConfig(this.f32746a);
    }
}
