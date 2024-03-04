package com.tencent.liteav.audio.route;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final AudioRouteManager f30841a;

    private k(AudioRouteManager audioRouteManager) {
        this.f30841a = audioRouteManager;
    }

    public static Runnable a(AudioRouteManager audioRouteManager) {
        return new k(audioRouteManager);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f30841a.notifyAudioIOSceneChangedInternal();
    }
}
