package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class bc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ScreenCapturer f32663a;

    private bc(ScreenCapturer screenCapturer) {
        this.f32663a = screenCapturer;
    }

    public static Runnable a(ScreenCapturer screenCapturer) {
        return new bc(screenCapturer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScreenCapturer.d(this.f32663a);
    }
}
