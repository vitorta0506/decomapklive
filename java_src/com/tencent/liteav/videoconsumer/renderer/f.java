package com.tencent.liteav.videoconsumer.renderer;

import android.graphics.Rect;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videoconsumer.renderer.b;
/* loaded from: classes4.dex */
public final class f extends b {

    /* renamed from: a  reason: collision with root package name */
    final String f32388a;

    /* renamed from: b  reason: collision with root package name */
    SurfaceView f32389b;

    /* renamed from: c  reason: collision with root package name */
    final SurfaceHolder.Callback f32390c;

    /* renamed from: d  reason: collision with root package name */
    private final CustomHandler f32391d;

    /* renamed from: e  reason: collision with root package name */
    private final b.a f32392e;

    public f(SurfaceView surfaceView, b.a aVar) {
        String str = "SurfaceViewRenderHelper_" + hashCode();
        this.f32388a = str;
        CustomHandler customHandler = new CustomHandler(Looper.getMainLooper());
        this.f32391d = customHandler;
        this.f32390c = new SurfaceHolder.Callback() { // from class: com.tencent.liteav.videoconsumer.renderer.f.1
            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceChanged(SurfaceHolder surfaceHolder, int i9, int i10, int i11) {
                if (surfaceHolder != null) {
                    LiteavLog.i(f.this.f32388a, "surfaceChanged,format=%d,Size(%dx%d)", Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11));
                    f.this.a(surfaceHolder.getSurface());
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceCreated(SurfaceHolder surfaceHolder) {
                if (surfaceHolder != null) {
                    Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
                    LiteavLog.i(f.this.f32388a, "surfaceCreated,Size(%dx%d)", Integer.valueOf(surfaceFrame.width()), Integer.valueOf(surfaceFrame.height()));
                    f.this.a(surfaceHolder.getSurface());
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                LiteavLog.i(f.this.f32388a, "surfaceDestroyed");
                f.this.a();
            }
        };
        this.f32392e = aVar;
        if (surfaceView == null) {
            LiteavLog.w(str, "surfaceView is null.");
            return;
        }
        this.f32389b = surfaceView;
        customHandler.post(g.a(this, surfaceView));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.b
    public final void a(GLConstants.GLScaleType gLScaleType, int i9, int i10) {
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.b
    public final void a(boolean z10) {
        this.f32391d.post(h.a(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Surface surface) {
        b.a aVar = this.f32392e;
        if (aVar != null) {
            aVar.a(surface, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        b.a aVar = this.f32392e;
        if (aVar != null) {
            aVar.a();
        }
    }
}
