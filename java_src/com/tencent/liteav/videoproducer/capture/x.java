package com.tencent.liteav.videoproducer.capture;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final float f32749a;

    private x(float f10) {
        this.f32749a = f10;
    }

    public static Runnable a(float f10) {
        return new x(f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.getInstance().setPercentOfMaxZoomLevel(this.f32749a);
    }
}
