package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class bh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ScreenCapturer f32670a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32671b;

    private bh(ScreenCapturer screenCapturer, boolean z10) {
        this.f32670a = screenCapturer;
        this.f32671b = z10;
    }

    public static Runnable a(ScreenCapturer screenCapturer, boolean z10) {
        return new bh(screenCapturer, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScreenCapturer.a(this.f32670a, this.f32671b);
    }
}
