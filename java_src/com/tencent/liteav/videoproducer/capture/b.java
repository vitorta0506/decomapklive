package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32616a;

    /* renamed from: b  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureSourceListener f32617b;

    private b(CameraCaptureSingleton cameraCaptureSingleton, CaptureSourceInterface.CaptureSourceListener captureSourceListener) {
        this.f32616a = cameraCaptureSingleton;
        this.f32617b = captureSourceListener;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton, CaptureSourceInterface.CaptureSourceListener captureSourceListener) {
        return new b(cameraCaptureSingleton, captureSourceListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32616a.mListenerManager.b(this.f32617b);
    }
}
