package com.tencent.liteav.audio.route;
/* loaded from: classes4.dex */
final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final AudioRouteManager f30831a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30832b;

    private f(AudioRouteManager audioRouteManager, int i9) {
        this.f30831a = audioRouteManager;
        this.f30832b = i9;
    }

    public static Runnable a(AudioRouteManager audioRouteManager, int i9) {
        return new f(audioRouteManager, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        AudioRouteManager.lambda$notifyAudioIOSceneChanged$2(this.f30831a, this.f30832b);
    }
}
