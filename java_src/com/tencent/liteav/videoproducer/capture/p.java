package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32727a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32728b;

    private p(CameraCaptureSingleton cameraCaptureSingleton, boolean z10) {
        this.f32727a = cameraCaptureSingleton;
        this.f32728b = z10;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton, boolean z10) {
        return new p(cameraCaptureSingleton, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.lambda$enableTapToFocus$5(this.f32727a, this.f32728b);
    }
}
