package com.tencent.liteav.audio.route;
/* loaded from: classes4.dex */
final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final AudioRouteManager f30827a;

    private c(AudioRouteManager audioRouteManager) {
        this.f30827a = audioRouteManager;
    }

    public static Runnable a(AudioRouteManager audioRouteManager) {
        return new c(audioRouteManager);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f30827a.autoCheckRouteUpdate(true);
    }
}
