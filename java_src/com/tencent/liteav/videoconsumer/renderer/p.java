package com.tencent.liteav.videoconsumer.renderer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import com.tencent.liteav.videobase.frame.FrameMetaData;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoconsumer.renderer.b;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public final class p extends VideoRenderInterface implements b.a, com.tencent.rtmp.ui.a, com.tencent.rtmp.ui.b {
    private TakeSnapshotListener A;
    private VideoRenderListener B;
    private boolean C;
    private Bitmap D;
    private boolean E;
    private boolean F;

    /* renamed from: c  reason: collision with root package name */
    private final CustomHandler f32426c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final IVideoReporter f32427d;

    /* renamed from: e  reason: collision with root package name */
    private final com.tencent.liteav.base.util.j f32428e;

    /* renamed from: k  reason: collision with root package name */
    private Object f32434k;

    /* renamed from: n  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.j f32437n;

    /* renamed from: p  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.e f32439p;

    /* renamed from: r  reason: collision with root package name */
    private Rotation f32441r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f32442s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f32443t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private DisplayTarget f32444u;

    /* renamed from: v  reason: collision with root package name */
    private b f32445v;

    /* renamed from: w  reason: collision with root package name */
    private final com.tencent.liteav.base.util.q f32446w;

    /* renamed from: x  reason: collision with root package name */
    private Rotation f32447x;

    /* renamed from: y  reason: collision with root package name */
    private volatile boolean f32448y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f32449z;

    /* renamed from: a  reason: collision with root package name */
    private final String f32424a = "VideoRenderer_" + hashCode();
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Handler f32425b = new Handler(Looper.getMainLooper());
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final com.tencent.liteav.base.util.j f32429f = new com.tencent.liteav.base.util.j(5);

    /* renamed from: g  reason: collision with root package name */
    private final com.tencent.liteav.base.b.b f32430g = new com.tencent.liteav.base.b.b();
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final com.tencent.liteav.base.util.q f32431h = new com.tencent.liteav.base.util.q();

    /* renamed from: i  reason: collision with root package name */
    private Surface f32432i = null;

    /* renamed from: j  reason: collision with root package name */
    private boolean f32433j = false;

    /* renamed from: l  reason: collision with root package name */
    private com.tencent.liteav.videobase.b.e f32435l = null;

    /* renamed from: m  reason: collision with root package name */
    private final com.tencent.liteav.videobase.frame.c f32436m = new com.tencent.liteav.videobase.frame.c();

    /* renamed from: o  reason: collision with root package name */
    private final com.tencent.liteav.videobase.utils.j f32438o = new com.tencent.liteav.videobase.utils.j(1);

    /* renamed from: q  reason: collision with root package name */
    private GLConstants.GLScaleType f32440q = GLConstants.GLScaleType.CENTER_CROP;

    public p(@NonNull Looper looper, @NonNull IVideoReporter iVideoReporter) {
        Rotation rotation = Rotation.NORMAL;
        this.f32441r = rotation;
        this.f32442s = false;
        this.f32443t = false;
        this.f32446w = new com.tencent.liteav.base.util.q();
        this.f32447x = rotation;
        this.f32448y = false;
        this.f32449z = false;
        this.C = false;
        this.E = false;
        this.F = false;
        this.f32426c = new CustomHandler(looper);
        this.f32428e = null;
        this.f32427d = iVideoReporter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(p pVar, VideoRenderListener videoRenderListener) {
        LiteavLog.i(pVar.f32424a, "Start");
        if (pVar.f32448y) {
            LiteavLog.w(pVar.f32424a, "renderer is started!");
            return;
        }
        pVar.f32448y = true;
        pVar.B = videoRenderListener;
        DisplayTarget displayTarget = pVar.f32444u;
        if (displayTarget != null) {
            pVar.a(displayTarget, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(p pVar, boolean z10) {
        if (pVar.f32442s != z10) {
            LiteavLog.i(pVar.f32424a, "setHorizontalMirror ".concat(String.valueOf(z10)));
        }
        pVar.f32442s = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(p pVar, boolean z10) {
        LiteavLog.i(pVar.f32424a, "enableZoomGesture enable:".concat(String.valueOf(z10)));
        TXCloudVideoView c10 = pVar.c();
        if (c10 != null) {
            com.tencent.liteav.videobase.videobase.g.a(c10, z10, (com.tencent.rtmp.ui.b) (z10 ? pVar : null));
        }
        pVar.F = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(p pVar, boolean z10) {
        LiteavLog.i(pVar.f32424a, "enableTapToFocusGesture enable:".concat(String.valueOf(z10)));
        TXCloudVideoView c10 = pVar.c();
        if (c10 != null) {
            com.tencent.liteav.videobase.videobase.g.a(c10, z10, (com.tencent.rtmp.ui.a) (z10 ? pVar : null));
        }
        pVar.E = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void e(p pVar, boolean z10) {
        Surface surface;
        LiteavLog.i(pVar.f32424a, "Stop,clearLastImage=".concat(String.valueOf(z10)));
        if (!pVar.f32448y) {
            LiteavLog.w(pVar.f32424a, "renderer is not started!");
            return;
        }
        pVar.f32448y = false;
        pVar.A = null;
        pVar.a(z10);
        DisplayTarget displayTarget = pVar.f32444u;
        if (displayTarget != null && z10) {
            displayTarget.hideAll();
        }
        pVar.f32438o.b();
        pVar.b();
        if (pVar.f32433j && (surface = pVar.f32432i) != null) {
            surface.release();
            pVar.f32433j = false;
        }
        pVar.f32432i = null;
        pVar.f32431h.a(0, 0);
        pVar.f32446w.a(0, 0);
        pVar.f32449z = false;
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void enableTapToFocusGesture(boolean z10) {
        a(af.a(this, z10));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void enableZoomGesture(boolean z10) {
        a(ag.a(this, z10));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void renderFrame(PixelFrame pixelFrame) {
        if (this.f32448y) {
            if (pixelFrame == null) {
                LiteavLog.w(this.f32424a, "renderFrame pixelFrame is null!");
                return;
            }
            if (!this.f32449z) {
                this.f32449z = true;
                LiteavLog.d(this.f32424a, "VideoRender receive first frame!");
            }
            pixelFrame.getGLContext();
            this.f32438o.a(pixelFrame);
            a(u.a(this));
        }
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void setDisplayView(DisplayTarget displayTarget, boolean z10) {
        a(ab.a(this, displayTarget, z10));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void setHorizontalMirror(boolean z10) {
        a(s.a(this, z10));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void setRenderRotation(Rotation rotation) {
        a(r.a(this, rotation));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void setScaleType(GLConstants.GLScaleType gLScaleType) {
        a(ah.a(this, gLScaleType));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void setVerticalMirror(boolean z10) {
        a(t.a(this, z10));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void start(VideoRenderListener videoRenderListener) {
        a(q.a(this, videoRenderListener));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void stop(boolean z10) {
        a(aa.a(this, z10));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void takeSnapshot(TakeSnapshotListener takeSnapshotListener) {
        a(ac.a(this, takeSnapshotListener));
    }

    private void b() {
        if (this.f32435l == null) {
            return;
        }
        com.tencent.liteav.base.b.a a10 = this.f32430g.a("uninitGL");
        String str = this.f32424a;
        Object[] objArr = new Object[2];
        Surface surface = this.f32432i;
        objArr[0] = Integer.valueOf(surface != null ? surface.hashCode() : 0);
        objArr[1] = this.f32431h;
        LiteavLog.i(a10, str, "uninitializeEGL %d %s", objArr);
        try {
            this.f32435l.a();
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.f32430g.a("makeCurrentError"), this.f32424a, "uninitializeEGL EGLCore makeCurrent failed.".concat(String.valueOf(e10)), new Object[0]);
        }
        e();
        this.f32436m.d();
        com.tencent.liteav.videobase.frame.e eVar = this.f32439p;
        if (eVar != null) {
            eVar.a();
            this.f32439p.b();
            this.f32439p = null;
        }
        com.tencent.liteav.videobase.b.e.a(this.f32435l);
        this.f32435l = null;
    }

    private TXCloudVideoView c() {
        DisplayTarget displayTarget = this.f32444u;
        if (displayTarget == null) {
            return null;
        }
        return displayTarget.getTXCloudVideoView();
    }

    private void d() {
        try {
            this.f32435l.c();
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.f32430g.a("swapBuffers"), this.f32424a, "EGLCore swapBuffers failed.".concat(String.valueOf(e10)), new Object[0]);
            this.f32427d.notifyWarning(h.c.WARNING_VIDEO_RENDER_SWAP_BUFFER, "VideoRender: swapBuffer error:".concat(String.valueOf(e10)), new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(p pVar) {
        PixelFrame a10 = pVar.f32438o.a();
        if (a10 == null) {
            LiteavLog.d(pVar.f32424a, "renderFrameInternal pixelFrame is null!");
            return;
        }
        pVar.f32446w.a(a10.getWidth(), a10.getHeight());
        FrameMetaData metaData = a10.getMetaData();
        if (metaData != null) {
            pVar.f32441r = metaData.getRenderRotation();
            pVar.f32442s = metaData.isRenderMirrorHorizontal();
            pVar.f32443t = metaData.isRenderMirrorVertical();
            pVar.f32446w.a(metaData.getCaptureRealSize());
            pVar.f32447x = Rotation.a(metaData.getCaptureRotation());
        }
        if (!pVar.b(a10)) {
            pVar.a(a10);
            a10.release();
            return;
        }
        com.tencent.liteav.videobase.b.e eVar = pVar.f32435l;
        if (eVar != null) {
            com.tencent.liteav.videobase.b.h<?> hVar = eVar.f31723a;
            com.tencent.liteav.base.util.q qVar = hVar == null ? new com.tencent.liteav.base.util.q(0, 0) : hVar.e();
            if (!pVar.f32431h.equals(qVar)) {
                String str = pVar.f32424a;
                LiteavLog.i(str, "surface size changed,old size=" + pVar.f32431h + ",new size=" + qVar);
                pVar.f32431h.a(qVar);
                pVar.e();
                if (pVar.f32432i != null) {
                    IVideoReporter iVideoReporter = pVar.f32427d;
                    com.tencent.liteav.videobase.videobase.i iVar = com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_RESOLUTION;
                    com.tencent.liteav.base.util.q qVar2 = pVar.f32431h;
                    iVideoReporter.updateStatus(iVar, Integer.valueOf(qVar2.f31030b | (qVar2.f31029a << 16)));
                }
                VideoRenderListener videoRenderListener = pVar.B;
                if (videoRenderListener != null) {
                    com.tencent.liteav.base.util.q qVar3 = pVar.f32431h;
                    videoRenderListener.onRenderTargetSizeChanged(qVar3.f31029a, qVar3.f31030b);
                }
            }
        }
        if (pVar.f32437n == null) {
            String str2 = pVar.f32424a;
            LiteavLog.i(str2, "create PixelFrameRenderer,surfaceSize=" + pVar.f32431h);
            com.tencent.liteav.base.util.q qVar4 = pVar.f32431h;
            pVar.f32437n = new com.tencent.liteav.videobase.frame.j(qVar4.f31029a, qVar4.f31030b);
        }
        com.tencent.liteav.base.util.q qVar5 = pVar.f32431h;
        OpenGlUtils.glViewport(0, 0, qVar5.f31029a, qVar5.f31030b);
        pVar.a(a10, pVar.f32442s, pVar.f32443t, pVar.f32441r, pVar.f32440q, true);
        if (pVar.A != null) {
            OpenGlUtils.bindFramebuffer(36160, 0);
            com.tencent.liteav.base.util.q qVar6 = pVar.f32431h;
            int i9 = qVar6.f31029a;
            int i10 = qVar6.f31030b;
            TakeSnapshotListener takeSnapshotListener = pVar.A;
            if (takeSnapshotListener != null) {
                pVar.A = null;
                int i11 = i9 * i10 * 4;
                try {
                    ByteBuffer order = ByteBuffer.allocateDirect(i11).order(ByteOrder.nativeOrder());
                    order.position(0);
                    GLES20.glReadPixels(0, 0, i9, i10, 6408, 5121, order);
                    pVar.f32425b.post(v.a(pVar, pVar.f32445v, order, i9, i10, takeSnapshotListener));
                } catch (Throwable unused) {
                    String str3 = pVar.f32424a;
                    LiteavLog.e(str3, "can't alloc buffer, size: " + i11);
                    takeSnapshotListener.onComplete(null);
                }
            }
        }
        pVar.d();
        pVar.a(a10);
        if (pVar.C) {
            pVar.f32427d.notifyEvent(h.b.EVT_VIDEO_RENDER_FIRST_FRAME_ON_VIEW, null, new Object[0]);
            VideoRenderListener videoRenderListener2 = pVar.B;
            if (videoRenderListener2 != null) {
                com.tencent.liteav.base.util.q qVar7 = pVar.f32431h;
                videoRenderListener2.onRenderFirstFrameOnView(qVar7.f31029a, qVar7.f31030b);
            }
            pVar.C = false;
        }
        a10.release();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(p pVar, TakeSnapshotListener takeSnapshotListener) {
        LiteavLog.i(pVar.f32424a, "takeSnapshot ");
        pVar.A = takeSnapshotListener;
    }

    @Override // com.tencent.rtmp.ui.a
    public final void a(int i9, int i10, int i11, int i12) {
        a(ad.a(this, i9, i10, i11, i12));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(p pVar, int i9, int i10, int i11, int i12) {
        if (pVar.E) {
            Point reverseMappingPoint = OpenGlUtils.reverseMappingPoint(GLConstants.GLScaleType.CENTER_CROP, pVar.f32447x, new Point(i9, i10), new com.tencent.liteav.base.util.q(i11, i12), pVar.f32446w);
            VideoRenderListener videoRenderListener = pVar.B;
            if (videoRenderListener != null) {
                videoRenderListener.onFocusAtPoint(reverseMappingPoint.x, reverseMappingPoint.y, i11, i12);
            }
            TXCloudVideoView c10 = pVar.c();
            if (c10 != null) {
                com.tencent.liteav.videobase.videobase.g.a(c10, i9, i10, i11, i12);
            }
        }
    }

    private boolean b(@NonNull PixelFrame pixelFrame) {
        Object gLContext = pixelFrame.getGLContext();
        if (this.f32435l == null || !(gLContext == null || CommonUtil.equals(this.f32434k, gLContext))) {
            b();
            Object gLContext2 = pixelFrame.getGLContext();
            if (this.f32432i != null) {
                try {
                    com.tencent.liteav.base.b.a a10 = this.f32430g.a("initGL");
                    String str = this.f32424a;
                    LiteavLog.i(a10, str, "initializeEGL surface=" + this.f32432i + ",size=" + this.f32431h, new Object[0]);
                    com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
                    this.f32435l = eVar;
                    Surface surface = this.f32432i;
                    com.tencent.liteav.base.util.q qVar = this.f32431h;
                    eVar.a(gLContext2, surface, qVar.f31029a, qVar.f31030b);
                    this.f32434k = gLContext2;
                    this.f32435l.a();
                    if (this.f32439p == null) {
                        this.f32439p = new com.tencent.liteav.videobase.frame.e();
                    }
                    this.f32436m.a();
                } catch (com.tencent.liteav.videobase.b.g e10) {
                    LiteavLog.e(this.f32430g.a("initGLError"), this.f32424a, "initializeEGL failed.", e10);
                    this.f32435l = null;
                    this.f32427d.notifyWarning(h.c.WARNING_VIDEO_RENDER_EGL_CORE_CREATE_FAILED, "VideoRender: create EGLCore fail:".concat(String.valueOf(e10)), new Object[0]);
                }
            }
        }
        com.tencent.liteav.videobase.b.e eVar2 = this.f32435l;
        if (eVar2 == null) {
            return false;
        }
        try {
            eVar2.a();
            return true;
        } catch (com.tencent.liteav.videobase.b.g e11) {
            LiteavLog.e(this.f32430g.a("makeCurrentForFrameError"), this.f32424a, "EGLCore makeCurrent failed.".concat(String.valueOf(e11)), new Object[0]);
            return false;
        }
    }

    private void e() {
        com.tencent.liteav.videobase.frame.j jVar = this.f32437n;
        if (jVar != null) {
            jVar.a();
            this.f32437n = null;
        }
    }

    @Override // com.tencent.rtmp.ui.b
    public final void a(float f10) {
        a(ae.a(this, f10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(p pVar, float f10) {
        VideoRenderListener videoRenderListener;
        if (pVar.F && (videoRenderListener = pVar.B) != null) {
            videoRenderListener.onZoom(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(p pVar, GLConstants.GLScaleType gLScaleType) {
        if (pVar.f32440q != gLScaleType) {
            LiteavLog.i(pVar.f32424a, "setScaleType ".concat(String.valueOf(gLScaleType)));
            pVar.f32440q = gLScaleType;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(p pVar, Rotation rotation) {
        if (pVar.f32441r != rotation) {
            LiteavLog.i(pVar.f32424a, "setRenderRotation ".concat(String.valueOf(rotation)));
            pVar.f32441r = rotation;
        }
    }

    public p(@NonNull com.tencent.liteav.base.util.j jVar, @NonNull IVideoReporter iVideoReporter) {
        Rotation rotation = Rotation.NORMAL;
        this.f32441r = rotation;
        this.f32442s = false;
        this.f32443t = false;
        this.f32446w = new com.tencent.liteav.base.util.q();
        this.f32447x = rotation;
        this.f32448y = false;
        this.f32449z = false;
        this.C = false;
        this.E = false;
        this.F = false;
        this.f32426c = null;
        this.f32428e = jVar;
        this.f32427d = iVideoReporter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(p pVar, boolean z10) {
        if (pVar.f32443t != z10) {
            LiteavLog.i(pVar.f32424a, "setVerticalMirror ".concat(String.valueOf(z10)));
        }
        pVar.f32443t = z10;
    }

    private void a(Runnable runnable) {
        com.tencent.liteav.base.util.j jVar = this.f32428e;
        if (jVar != null) {
            jVar.a(runnable);
        } else if (Looper.myLooper() == this.f32426c.getLooper()) {
            runnable.run();
        } else {
            this.f32426c.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(DisplayTarget displayTarget, boolean z10) {
        SurfaceView surfaceView;
        Surface surface;
        TXCloudVideoView tXCloudVideoView;
        TextureView textureView;
        LiteavLog.i(this.f32424a, "setDisplayViewInternal=" + displayTarget + ",clearLastImage=" + z10);
        boolean equals = CommonUtil.equals(this.f32444u, displayTarget);
        if (equals && displayTarget != null && this.f32445v != null) {
            LiteavLog.w(this.f32424a, "view is equal and RenderViewHelper is created.");
            return;
        }
        if (!equals) {
            this.C = true;
            DisplayTarget displayTarget2 = this.f32444u;
            if (displayTarget2 != null && z10) {
                displayTarget2.hideAll();
            }
        }
        a(z10);
        this.f32444u = displayTarget;
        if (displayTarget == null) {
            return;
        }
        displayTarget.showAll();
        b bVar = null;
        if (displayTarget.getType() == null) {
            LiteavLog.w("RenderViewHelperInterface", "displayTarget or type is null. displayTarget=".concat(String.valueOf(displayTarget)));
        } else {
            int i9 = b.AnonymousClass1.f32380a[displayTarget.getType().ordinal()];
            if (i9 == 1) {
                surfaceView = displayTarget.getSurfaceView();
                surface = null;
                tXCloudVideoView = null;
                textureView = null;
            } else if (i9 != 2) {
                if (i9 == 3) {
                    surface = displayTarget.getSurface();
                    tXCloudVideoView = null;
                } else if (i9 != 4) {
                    surface = null;
                    tXCloudVideoView = null;
                } else {
                    TXCloudVideoView tXCloudVideoView2 = displayTarget.getTXCloudVideoView();
                    if (tXCloudVideoView2 == null) {
                        LiteavLog.w("RenderViewHelperInterface", "txCloudVideoView is null.");
                        tXCloudVideoView = tXCloudVideoView2;
                        surface = null;
                        surfaceView = null;
                        textureView = surfaceView;
                    } else {
                        SurfaceView surfaceView2 = tXCloudVideoView2.getSurfaceView();
                        textureView = com.tencent.liteav.videobase.videobase.g.a(tXCloudVideoView2);
                        surfaceView = surfaceView2;
                        tXCloudVideoView = tXCloudVideoView2;
                        surface = null;
                    }
                }
                surfaceView = tXCloudVideoView;
                textureView = surfaceView;
            } else {
                surface = null;
                tXCloudVideoView = null;
                textureView = displayTarget.getTextureView();
                surfaceView = null;
            }
            if (surfaceView != null) {
                bVar = new f(surfaceView, this);
            } else if (textureView != null) {
                bVar = new i(textureView, this);
            } else if (surface != null) {
                bVar = new c(surface, this);
            } else if (tXCloudVideoView != null) {
                bVar = new i(tXCloudVideoView, this);
            } else {
                LiteavLog.w("RenderViewHelperInterface", "RenderViewHelper not created. displayTarget=".concat(String.valueOf(displayTarget)));
            }
        }
        this.f32445v = bVar;
    }

    private void b(Surface surface, boolean z10) {
        Surface surface2;
        if (com.tencent.liteav.base.util.h.a(this.f32432i, surface)) {
            LiteavLog.d(this.f32424a, "updateSurface same surface!");
            return;
        }
        b();
        if (this.f32433j && (surface2 = this.f32432i) != null) {
            surface2.release();
        }
        this.f32432i = surface;
        if (surface == null) {
            this.f32431h.a(0, 0);
        }
        this.f32433j = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(p pVar) {
        Bitmap b10 = pVar.b((Bitmap) null);
        if (b10 == null) {
            return;
        }
        PixelFrame createFromBitmap = PixelFrame.createFromBitmap(b10);
        if (!pVar.b(createFromBitmap)) {
            createFromBitmap.release();
            return;
        }
        com.tencent.liteav.base.util.q qVar = pVar.f32431h;
        OpenGlUtils.glViewport(0, 0, qVar.f31029a, qVar.f31030b);
        pVar.a(createFromBitmap, false, false, Rotation.NORMAL, pVar.f32440q, false);
        pVar.d();
    }

    private Bitmap b(Bitmap bitmap) {
        Bitmap bitmap2;
        synchronized (this) {
            bitmap2 = this.D;
            this.D = bitmap;
        }
        return bitmap2;
    }

    private void a(PixelFrame pixelFrame) {
        VideoRenderListener videoRenderListener = this.B;
        if (videoRenderListener != null) {
            videoRenderListener.onRenderFrame(pixelFrame);
        }
    }

    private void a(PixelFrame pixelFrame, boolean z10, boolean z11, Rotation rotation, GLConstants.GLScaleType gLScaleType, boolean z12) {
        b bVar;
        PixelFrame pixelFrame2 = new PixelFrame(pixelFrame);
        pixelFrame2.setRotation(Rotation.a((pixelFrame.getRotation().mValue + rotation.mValue) % 360));
        if (z10) {
            pixelFrame2.setMirrorHorizontal(!pixelFrame2.isMirrorHorizontal());
        }
        if (z11) {
            pixelFrame2.setMirrorVertical(!pixelFrame2.isMirrorVertical());
        }
        if (rotation == Rotation.ROTATION_90 || rotation == Rotation.ROTATION_270) {
            int width = pixelFrame2.getWidth();
            pixelFrame2.setWidth(pixelFrame2.getHeight());
            pixelFrame2.setHeight(width);
        }
        pixelFrame2.setMirrorVertical(!pixelFrame2.isMirrorVertical());
        if (pixelFrame2.getRotation() != Rotation.NORMAL) {
            Rotation rotation2 = pixelFrame2.getRotation();
            Rotation rotation3 = Rotation.ROTATION_180;
            if (rotation2 != rotation3) {
                pixelFrame2.setRotation(Rotation.a((pixelFrame2.getRotation().mValue + rotation3.mValue) % 360));
            }
        }
        if (z12 && (bVar = this.f32445v) != null) {
            bVar.a(this.f32440q, pixelFrame2.getWidth(), pixelFrame2.getHeight());
        }
        com.tencent.liteav.videobase.frame.j jVar = this.f32437n;
        if (jVar != null) {
            if (this.f32445v instanceof i) {
                jVar.a(pixelFrame2, GLConstants.GLScaleType.FILL, (com.tencent.liteav.videobase.frame.d) null);
            } else {
                jVar.a(pixelFrame2, gLScaleType, (com.tencent.liteav.videobase.frame.d) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(p pVar, b bVar, ByteBuffer byteBuffer, int i9, int i10, TakeSnapshotListener takeSnapshotListener) {
        TextureView textureView = bVar instanceof i ? ((i) bVar).f32401e : null;
        pVar.f32429f.a(z.a(pVar, byteBuffer, i9, i10, textureView != null ? textureView.getTransform(new Matrix()) : null, takeSnapshotListener));
    }

    private void a(boolean z10) {
        b bVar = this.f32445v;
        if (bVar != null) {
            bVar.a(z10);
            this.f32445v = null;
        }
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.b.a
    public final void a(Surface surface, boolean z10) {
        a(w.a(this, surface, z10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(p pVar, Surface surface, boolean z10) {
        LiteavLog.i(pVar.f32424a, "onSurfaceChanged surface: %s, oldSurface: %s, isNeedRelease: %b", surface, pVar.f32432i, Boolean.valueOf(z10));
        pVar.b(surface, z10);
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.b.a
    public final void a(@NonNull Bitmap bitmap) {
        b(bitmap);
        a(x.a(this));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.b.a
    public final void a() {
        Runnable a10 = y.a(this);
        com.tencent.liteav.base.util.j jVar = this.f32428e;
        if (jVar != null) {
            CountDownLatch countDownLatch = new CountDownLatch(1);
            jVar.f31008a.execute(com.tencent.liteav.base.util.m.a(a10, countDownLatch));
            try {
                countDownLatch.await(2000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else if (Looper.myLooper() == this.f32426c.getLooper()) {
            a10.run();
        } else {
            this.f32426c.a(a10, 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(p pVar) {
        String str = pVar.f32424a;
        LiteavLog.i(str, "onSurfaceDestroy " + pVar.f32432i);
        pVar.b((Surface) null, pVar.f32433j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(p pVar, ByteBuffer byteBuffer, int i9, int i10, Matrix matrix, TakeSnapshotListener takeSnapshotListener) {
        try {
            byteBuffer.position(0);
            Bitmap createBitmap = Bitmap.createBitmap(i9, i10, Bitmap.Config.ARGB_8888);
            createBitmap.copyPixelsFromBuffer(byteBuffer);
            if (matrix == null) {
                matrix = new Matrix();
            }
            matrix.postScale(1.0f, -1.0f, i9 / 2.0f, i10 / 2.0f);
            createBitmap.getConfig();
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            Bitmap createBitmap2 = Bitmap.createBitmap(createBitmap.getWidth(), createBitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            new Canvas(createBitmap2).drawBitmap(createBitmap, matrix, paint);
            takeSnapshotListener.onComplete(createBitmap2);
        } catch (Throwable th2) {
            LiteavLog.e(pVar.f32424a, "build snapshot bitmap failed.", th2);
            takeSnapshotListener.onComplete(null);
        }
    }
}
