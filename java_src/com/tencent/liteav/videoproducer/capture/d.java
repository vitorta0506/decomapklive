package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32706a;

    /* renamed from: b  reason: collision with root package name */
    private final float f32707b;

    private d(CameraCaptureSingleton cameraCaptureSingleton, float f10) {
        this.f32706a = cameraCaptureSingleton;
        this.f32707b = f10;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton, float f10) {
        return new d(cameraCaptureSingleton, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.lambda$setExposureCompensation$10(this.f32706a, this.f32707b);
    }
}
