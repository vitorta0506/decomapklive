package com.tencent.liteav.videoconsumer.renderer;

import android.graphics.Rect;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.tencent.liteav.base.util.LiteavLog;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f32394a;

    /* renamed from: b  reason: collision with root package name */
    private final SurfaceView f32395b;

    private g(f fVar, SurfaceView surfaceView) {
        this.f32394a = fVar;
        this.f32395b = surfaceView;
    }

    public static Runnable a(f fVar, SurfaceView surfaceView) {
        return new g(fVar, surfaceView);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f fVar = this.f32394a;
        SurfaceHolder holder = this.f32395b.getHolder();
        if (holder.getSurface().isValid()) {
            Surface surface = holder.getSurface();
            Rect surfaceFrame = holder.getSurfaceFrame();
            LiteavLog.i(fVar.f32388a, "construct,surface=%s,Size(%dx%d)", surface, Integer.valueOf(surfaceFrame.width()), Integer.valueOf(surfaceFrame.height()));
            fVar.a(surface);
        } else {
            LiteavLog.i(fVar.f32388a, "construct,surfaceView not valid.");
        }
        holder.addCallback(fVar.f32390c);
    }
}
