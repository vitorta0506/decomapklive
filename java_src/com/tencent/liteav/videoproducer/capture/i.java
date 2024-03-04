package com.tencent.liteav.videoproducer.capture;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32716a;

    private i(CameraCaptureSingleton cameraCaptureSingleton) {
        this.f32716a = cameraCaptureSingleton;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton) {
        return new i(cameraCaptureSingleton);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32716a.pauseInternal();
    }
}
