package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class ba implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ScreenCapturer f32660a;

    private ba(ScreenCapturer screenCapturer) {
        this.f32660a = screenCapturer;
    }

    public static Runnable a(ScreenCapturer screenCapturer) {
        return new ba(screenCapturer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32660a.a();
    }
}
