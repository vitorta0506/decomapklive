package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32708a;

    /* renamed from: b  reason: collision with root package name */
    private final ah f32709b;

    private e(CameraCaptureSingleton cameraCaptureSingleton, ah ahVar) {
        this.f32708a = cameraCaptureSingleton;
        this.f32709b = ahVar;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton, ah ahVar) {
        return new e(cameraCaptureSingleton, ahVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.lambda$onCameraError$11(this.f32708a, this.f32709b);
    }
}
