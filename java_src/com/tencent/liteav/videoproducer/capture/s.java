package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32734a;

    /* renamed from: b  reason: collision with root package name */
    private final float f32735b;

    private s(CameraCaptureSingleton cameraCaptureSingleton, float f10) {
        this.f32734a = cameraCaptureSingleton;
        this.f32735b = f10;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton, float f10) {
        return new s(cameraCaptureSingleton, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.lambda$setZoomLevel$8(this.f32734a, this.f32735b);
    }
}
