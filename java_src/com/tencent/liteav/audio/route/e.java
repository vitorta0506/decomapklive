package com.tencent.liteav.audio.route;
/* loaded from: classes4.dex */
final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final AudioRouteManager f30830a;

    private e(AudioRouteManager audioRouteManager) {
        this.f30830a = audioRouteManager;
    }

    public static Runnable a(AudioRouteManager audioRouteManager) {
        return new e(audioRouteManager);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f30830a.stopInternal();
    }
}
