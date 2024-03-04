package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32725a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32726b;

    private o(CameraCaptureSingleton cameraCaptureSingleton, boolean z10) {
        this.f32725a = cameraCaptureSingleton;
        this.f32726b = z10;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton, boolean z10) {
        return new o(cameraCaptureSingleton, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.lambda$turnOnTorch$4(this.f32725a, this.f32726b);
    }
}
