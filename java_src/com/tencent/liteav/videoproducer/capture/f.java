package com.tencent.liteav.videoproducer.capture;

import android.graphics.SurfaceTexture;
/* loaded from: classes4.dex */
final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32710a;

    /* renamed from: b  reason: collision with root package name */
    private final SurfaceTexture f32711b;

    private f(CameraCaptureSingleton cameraCaptureSingleton, SurfaceTexture surfaceTexture) {
        this.f32710a = cameraCaptureSingleton;
        this.f32711b = surfaceTexture;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton, SurfaceTexture surfaceTexture) {
        return new f(cameraCaptureSingleton, surfaceTexture);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.lambda$onFrameAvailable$12(this.f32710a, this.f32711b);
    }
}
