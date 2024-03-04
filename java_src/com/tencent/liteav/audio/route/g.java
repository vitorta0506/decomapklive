package com.tencent.liteav.audio.route;
/* loaded from: classes4.dex */
final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final AudioRouteManager f30833a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f30834b;

    private g(AudioRouteManager audioRouteManager, boolean z10) {
        this.f30833a = audioRouteManager;
        this.f30834b = z10;
    }

    public static Runnable a(AudioRouteManager audioRouteManager, boolean z10) {
        return new g(audioRouteManager, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f30833a.setHandFreeModeEnabledInternal(this.f30834b);
    }
}
