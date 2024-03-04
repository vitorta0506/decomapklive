package com.tencent.liteav.audio.route;
/* loaded from: classes4.dex */
final /* synthetic */ class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final AudioRouteManager f30837a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f30838b;

    private i(AudioRouteManager audioRouteManager, boolean z10) {
        this.f30837a = audioRouteManager;
        this.f30838b = z10;
    }

    public static Runnable a(AudioRouteManager audioRouteManager, boolean z10) {
        return new i(audioRouteManager, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f30837a.handleBluetoothHeadsetChangedInternal(this.f30838b);
    }
}
