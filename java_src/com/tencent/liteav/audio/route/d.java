package com.tencent.liteav.audio.route;
/* loaded from: classes4.dex */
final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final AudioRouteManager f30828a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30829b;

    private d(AudioRouteManager audioRouteManager, String str) {
        this.f30828a = audioRouteManager;
        this.f30829b = str;
    }

    public static Runnable a(AudioRouteManager audioRouteManager, String str) {
        return new d(audioRouteManager, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f30828a.startInternal(this.f30829b);
    }
}
