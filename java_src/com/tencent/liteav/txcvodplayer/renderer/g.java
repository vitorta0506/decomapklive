package com.tencent.liteav.txcvodplayer.renderer;

import com.tencent.liteav.videobase.videobase.DisplayTarget;
/* loaded from: classes4.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f31653a;

    /* renamed from: b  reason: collision with root package name */
    private final DisplayTarget f31654b;

    private g(d dVar, DisplayTarget displayTarget) {
        this.f31653a = dVar;
        this.f31654b = displayTarget;
    }

    public static Runnable a(d dVar, DisplayTarget displayTarget) {
        return new g(dVar, displayTarget);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.a(this.f31653a, this.f31654b);
    }
}
