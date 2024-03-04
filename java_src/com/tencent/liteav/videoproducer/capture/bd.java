package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class bd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ScreenCapturer f32664a;

    private bd(ScreenCapturer screenCapturer) {
        this.f32664a = screenCapturer;
    }

    public static Runnable a(ScreenCapturer screenCapturer) {
        return new bd(screenCapturer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScreenCapturer.c(this.f32664a);
    }
}
