package com.tencent.liteav.videoconsumer.renderer;

import android.view.Surface;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoconsumer.renderer.b;
/* loaded from: classes4.dex */
final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final c f32385a;

    /* renamed from: b  reason: collision with root package name */
    private final Surface f32386b;

    private d(c cVar, Surface surface) {
        this.f32385a = cVar;
        this.f32386b = surface;
    }

    public static Runnable a(c cVar, Surface surface) {
        return new d(cVar, surface);
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar = this.f32385a;
        Surface surface = this.f32386b;
        LiteavLog.i(cVar.f32381a, "construct,surface=".concat(String.valueOf(surface)));
        b.a aVar = cVar.f32382b;
        if (aVar != null) {
            aVar.a(surface, false);
        }
    }
}
