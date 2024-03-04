package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32732a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32733b;

    private r(CameraCaptureSingleton cameraCaptureSingleton, boolean z10) {
        this.f32732a = cameraCaptureSingleton;
        this.f32733b = z10;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton, boolean z10) {
        return new r(cameraCaptureSingleton, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.lambda$enableCameraZoom$7(this.f32732a, this.f32733b);
    }
}
