package com.tencent.liteav.videoproducer.capture;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final int f32747a;

    /* renamed from: b  reason: collision with root package name */
    private final int f32748b;

    private w(int i9, int i10) {
        this.f32747a = i9;
        this.f32748b = i10;
    }

    public static Runnable a(int i9, int i10) {
        return new w(i9, i10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CameraCaptureSingleton.getInstance().startAutoFocusAtPosition(this.f32747a, this.f32748b);
    }
}
