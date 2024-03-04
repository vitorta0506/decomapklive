package com.tencent.liteav.videoconsumer.renderer;

import android.os.Looper;
import android.view.Surface;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videoconsumer.renderer.b;
/* loaded from: classes4.dex */
public final class c extends b {

    /* renamed from: a  reason: collision with root package name */
    final String f32381a;

    /* renamed from: b  reason: collision with root package name */
    final b.a f32382b;

    /* renamed from: c  reason: collision with root package name */
    Surface f32383c;

    /* renamed from: d  reason: collision with root package name */
    private final CustomHandler f32384d;

    public c(Surface surface, b.a aVar) {
        String str = "SurfaceRenderHelper_" + hashCode();
        this.f32381a = str;
        CustomHandler customHandler = new CustomHandler(Looper.getMainLooper());
        this.f32384d = customHandler;
        this.f32382b = aVar;
        if (surface == null) {
            LiteavLog.w(str, "surface is null.");
            return;
        }
        this.f32383c = surface;
        customHandler.post(d.a(this, surface));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.b
    public final void a(GLConstants.GLScaleType gLScaleType, int i9, int i10) {
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.b
    public final void a(boolean z10) {
        this.f32384d.post(e.a(this));
    }
}
