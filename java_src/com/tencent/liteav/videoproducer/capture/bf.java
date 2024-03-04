package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class bf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ScreenCapturer f32666a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32667b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f32668c;

    private bf(ScreenCapturer screenCapturer, boolean z10, boolean z11) {
        this.f32666a = screenCapturer;
        this.f32667b = z10;
        this.f32668c = z11;
    }

    public static Runnable a(ScreenCapturer screenCapturer, boolean z10, boolean z11) {
        return new bf(screenCapturer, z10, z11);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScreenCapturer.a(this.f32666a, this.f32667b, this.f32668c);
    }
}
