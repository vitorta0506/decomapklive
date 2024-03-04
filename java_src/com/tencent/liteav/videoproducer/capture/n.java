package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32724a;

    private n(CameraCaptureSingleton cameraCaptureSingleton) {
        this.f32724a = cameraCaptureSingleton;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton) {
        return new n(cameraCaptureSingleton);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.lambda$switchCamera$3(this.f32724a);
    }
}
