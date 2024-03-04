package com.tencent.liteav.videoproducer.capture;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCaptureSingleton f32729a;

    /* renamed from: b  reason: collision with root package name */
    private final int f32730b;

    /* renamed from: c  reason: collision with root package name */
    private final int f32731c;

    private q(CameraCaptureSingleton cameraCaptureSingleton, int i9, int i10) {
        this.f32729a = cameraCaptureSingleton;
        this.f32730b = i9;
        this.f32731c = i10;
    }

    public static Runnable a(CameraCaptureSingleton cameraCaptureSingleton, int i9, int i10) {
        return new q(cameraCaptureSingleton, i9, i10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.lambda$startAutoFocusAtPosition$6(this.f32729a, this.f32730b, this.f32731c);
    }
}
