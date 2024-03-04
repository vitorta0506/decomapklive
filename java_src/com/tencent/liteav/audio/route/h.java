package com.tencent.liteav.audio.route;
/* loaded from: classes4.dex */
final /* synthetic */ class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final AudioRouteManager f30835a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f30836b;

    private h(AudioRouteManager audioRouteManager, boolean z10) {
        this.f30835a = audioRouteManager;
        this.f30836b = z10;
    }

    public static Runnable a(AudioRouteManager audioRouteManager, boolean z10) {
        return new h(audioRouteManager, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f30835a.handleWiredHeadsetChangedInternal(this.f30836b);
    }
}
