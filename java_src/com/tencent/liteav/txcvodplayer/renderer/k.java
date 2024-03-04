package com.tencent.liteav.txcvodplayer.renderer;
/* loaded from: classes4.dex */
public final /* synthetic */ class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f31662a;

    private k(d dVar) {
        this.f31662a = dVar;
    }

    public static Runnable a(d dVar) {
        return new k(dVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.a(this.f31662a);
    }
}
