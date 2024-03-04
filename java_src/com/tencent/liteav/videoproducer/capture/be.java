package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class be implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ScreenCapturer f32665a;

    private be(ScreenCapturer screenCapturer) {
        this.f32665a = screenCapturer;
    }

    public static Runnable a(ScreenCapturer screenCapturer) {
        return new be(screenCapturer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScreenCapturer.b(this.f32665a);
    }
}
