package com.tencent.liteav.videoconsumer.renderer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoconsumer.renderer.b;
/* loaded from: classes4.dex */
final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final c f32387a;

    private e(c cVar) {
        this.f32387a = cVar;
    }

    public static Runnable a(c cVar) {
        return new e(cVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar = this.f32387a;
        String str = cVar.f32381a;
        LiteavLog.i(str, "release,mSurface=" + cVar.f32383c);
        if (cVar.f32383c != null) {
            b.a aVar = cVar.f32382b;
            if (aVar != null) {
                aVar.a();
            }
            cVar.f32383c = null;
        }
    }
}
