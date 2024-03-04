package com.tencent.liteav.videoconsumer.decoder;

import android.graphics.SurfaceTexture;
/* loaded from: classes4.dex */
final /* synthetic */ class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final s f32182a;

    /* renamed from: b  reason: collision with root package name */
    private final SurfaceTexture f32183b;

    private aa(s sVar, SurfaceTexture surfaceTexture) {
        this.f32182a = sVar;
        this.f32183b = surfaceTexture;
    }

    public static Runnable a(s sVar, SurfaceTexture surfaceTexture) {
        return new aa(sVar, surfaceTexture);
    }

    @Override // java.lang.Runnable
    public final void run() {
        s.a(this.f32182a, this.f32183b);
    }
}
