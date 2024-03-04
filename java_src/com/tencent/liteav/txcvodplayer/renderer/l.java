package com.tencent.liteav.txcvodplayer.renderer;

import android.graphics.SurfaceTexture;
/* loaded from: classes4.dex */
final /* synthetic */ class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f31663a;

    /* renamed from: b  reason: collision with root package name */
    private final SurfaceTexture f31664b;

    private l(d dVar, SurfaceTexture surfaceTexture) {
        this.f31663a = dVar;
        this.f31664b = surfaceTexture;
    }

    public static Runnable a(d dVar, SurfaceTexture surfaceTexture) {
        return new l(dVar, surfaceTexture);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.a(this.f31663a, this.f31664b);
    }
}
