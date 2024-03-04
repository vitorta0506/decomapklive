package com.tencent.liteav.videoproducer.capture;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32704a;

    /* renamed from: b  reason: collision with root package name */
    private final float f32705b;

    private c(CameraCaptureSingleton cameraCaptureSingleton, float f10) {
        this.f32704a = cameraCaptureSingleton;
        this.f32705b = f10;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton, float f10) {
        return new c(cameraCaptureSingleton, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32704a.setZoomInternal(this.f32705b);
    }
}
