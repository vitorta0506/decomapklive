package com.tencent.liteav.videoconsumer.renderer;

import com.tencent.liteav.base.util.LiteavLog;
/* loaded from: classes4.dex */
final /* synthetic */ class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f32396a;

    private h(f fVar) {
        this.f32396a = fVar;
    }

    public static Runnable a(f fVar) {
        return new h(fVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f fVar = this.f32396a;
        String str = fVar.f32388a;
        LiteavLog.i(str, "release,mSurfaceView=" + fVar.f32389b);
        if (fVar.f32389b != null) {
            fVar.a();
            fVar.f32389b.getHolder().removeCallback(fVar.f32390c);
            fVar.f32389b = null;
        }
    }
}
