package com.tencent.liteav.videoproducer.capture;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32715a;

    private h(CameraCaptureSingleton cameraCaptureSingleton) {
        this.f32715a = cameraCaptureSingleton;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton) {
        return new h(cameraCaptureSingleton);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.lambda$stop$14(this.f32715a);
    }
}
