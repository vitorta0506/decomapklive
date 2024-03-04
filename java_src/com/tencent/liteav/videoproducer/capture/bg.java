package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class bg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ScreenCapturer f32669a;

    private bg(ScreenCapturer screenCapturer) {
        this.f32669a = screenCapturer;
    }

    public static Runnable a(ScreenCapturer screenCapturer) {
        return new bg(screenCapturer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScreenCapturer.a(this.f32669a);
    }
}
