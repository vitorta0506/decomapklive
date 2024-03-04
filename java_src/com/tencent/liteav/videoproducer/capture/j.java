package com.tencent.liteav.videoproducer.capture;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32717a;

    private j(CameraCaptureSingleton cameraCaptureSingleton) {
        this.f32717a = cameraCaptureSingleton;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton) {
        return new j(cameraCaptureSingleton);
    }

    @Override // java.lang.Runnable
    public final void run() {
        r0.resumeInternal(this.f32717a.mCurrentCaptureParams);
    }
}
