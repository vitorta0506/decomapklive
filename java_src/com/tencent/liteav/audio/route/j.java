package com.tencent.liteav.audio.route;
/* loaded from: classes4.dex */
final /* synthetic */ class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final AudioRouteManager f30839a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f30840b;

    private j(AudioRouteManager audioRouteManager, boolean z10) {
        this.f30839a = audioRouteManager;
        this.f30840b = z10;
    }

    public static Runnable a(AudioRouteManager audioRouteManager, boolean z10) {
        return new j(audioRouteManager, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f30839a.handleBluetoothSCOChangedInternal(this.f30840b);
    }
}
