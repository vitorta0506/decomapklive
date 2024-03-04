package com.tencent.liteav.videoconsumer.consumer;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.liteav.videobase.videobase.c;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderListener;
/* loaded from: classes4.dex */
public final class a extends VideoRenderInterface implements c.a {

    /* renamed from: a  reason: collision with root package name */
    private final CustomHandler f32034a;

    /* renamed from: b  reason: collision with root package name */
    private final com.tencent.liteav.base.util.j f32035b;

    /* renamed from: c  reason: collision with root package name */
    private final com.tencent.liteav.base.b.b f32036c;

    /* renamed from: d  reason: collision with root package name */
    private com.tencent.liteav.videobase.b.e f32037d;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f32038e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f32039f;

    /* renamed from: g  reason: collision with root package name */
    private GLConstants.PixelFormatType f32040g;

    /* renamed from: h  reason: collision with root package name */
    private GLConstants.PixelBufferType f32041h;

    /* renamed from: i  reason: collision with root package name */
    private com.tencent.liteav.videobase.videobase.c f32042i;

    /* renamed from: j  reason: collision with root package name */
    private VideoRenderListener f32043j;

    /* renamed from: k  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.j f32044k;

    /* renamed from: l  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.e f32045l;

    /* renamed from: m  reason: collision with root package name */
    private int f32046m;

    /* renamed from: n  reason: collision with root package name */
    private int f32047n;

    /* renamed from: o  reason: collision with root package name */
    private Object f32048o;

    /* renamed from: p  reason: collision with root package name */
    private Rotation f32049p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f32050q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f32051r;

    public a(@NonNull Looper looper) {
        this.f32036c = new com.tencent.liteav.base.b.b();
        this.f32037d = null;
        this.f32038e = false;
        this.f32039f = false;
        this.f32040g = GLConstants.PixelFormatType.RGBA;
        this.f32041h = GLConstants.PixelBufferType.TEXTURE_2D;
        this.f32046m = 0;
        this.f32047n = 0;
        this.f32049p = Rotation.NORMAL;
        this.f32050q = false;
        this.f32051r = false;
        this.f32034a = new CustomHandler(looper);
        this.f32035b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(a aVar, boolean z10) {
        if (aVar.f32050q != z10) {
            LiteavLog.i("CustomRenderProcess", "setHorizontalMirror ".concat(String.valueOf(z10)));
        }
        aVar.f32050q = z10;
    }

    public final void a(GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType) {
        a(b.a(this, pixelFormatType, pixelBufferType));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void enableTapToFocusGesture(boolean z10) {
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void enableZoomGesture(boolean z10) {
    }

    @Override // com.tencent.liteav.videobase.videobase.c.a
    public final void onFrameConverted(int i9, PixelFrame pixelFrame) {
        a(i.a(this, pixelFrame));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void renderFrame(PixelFrame pixelFrame) {
        if (pixelFrame == null) {
            LiteavLog.w("CustomRenderProcess", "renderFrame: pixelFrame is null.");
            return;
        }
        pixelFrame.retain();
        if (a(h.a(this, pixelFrame))) {
            return;
        }
        pixelFrame.release();
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void setDisplayView(DisplayTarget displayTarget, boolean z10) {
        LiteavLog.i("CustomRenderProcess", "setDisplayView not support");
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void setHorizontalMirror(boolean z10) {
        a(f.a(this, z10));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void setRenderRotation(Rotation rotation) {
        LiteavLog.i("CustomRenderProcess", "setRenderRotation ".concat(String.valueOf(rotation)));
        a(e.a(this, rotation));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void setScaleType(GLConstants.GLScaleType gLScaleType) {
        LiteavLog.i("CustomRenderProcess", "setScaleType " + gLScaleType + " not support");
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void setVerticalMirror(boolean z10) {
        a(g.a(this, z10));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void start(VideoRenderListener videoRenderListener) {
        LiteavLog.i("CustomRenderProcess", "Start");
        a(c.a(this, videoRenderListener));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void stop(boolean z10) {
        LiteavLog.i("CustomRenderProcess", "Stop");
        a(d.a(this));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface
    public final void takeSnapshot(TakeSnapshotListener takeSnapshotListener) {
        if (takeSnapshotListener != null) {
            takeSnapshotListener.onComplete(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(a aVar, GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType) {
        aVar.f32039f = true;
        aVar.f32040g = pixelFormatType;
        aVar.f32041h = pixelBufferType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(a aVar, PixelFrame pixelFrame) {
        PixelFrame pixelFrame2 = new PixelFrame(pixelFrame);
        pixelFrame2.setRotation(Rotation.a((pixelFrame2.getRotation().mValue + aVar.f32049p.mValue) % 360));
        if (aVar.f32050q) {
            pixelFrame2.setMirrorHorizontal(!pixelFrame2.isMirrorHorizontal());
        }
        if (aVar.f32051r) {
            pixelFrame2.setMirrorVertical(!pixelFrame2.isMirrorVertical());
        }
        Rotation rotation = aVar.f32049p;
        if (rotation == Rotation.ROTATION_90 || rotation == Rotation.ROTATION_270) {
            int width = pixelFrame2.getWidth();
            pixelFrame2.setWidth(pixelFrame2.getHeight());
            pixelFrame2.setHeight(width);
        }
        Object gLContext = pixelFrame2.getGLContext();
        if (((gLContext == null || gLContext == aVar.f32048o) && aVar.f32037d != null && aVar.f32047n == pixelFrame2.getHeight() && aVar.f32046m == pixelFrame2.getWidth()) ? false : true) {
            if (aVar.f32046m != pixelFrame2.getWidth() || aVar.f32047n != pixelFrame2.getHeight()) {
                aVar.f32046m = pixelFrame2.getWidth();
                aVar.f32047n = pixelFrame2.getHeight();
            }
            aVar.a();
            int i9 = aVar.f32046m;
            int i10 = aVar.f32047n;
            Object gLContext2 = pixelFrame2.getGLContext();
            if (aVar.f32037d == null) {
                try {
                    LiteavLog.i(aVar.f32036c.a("initGL"), "CustomRenderProcess", "egl init %d*%d", Integer.valueOf(i9), Integer.valueOf(i10));
                    com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
                    aVar.f32037d = eVar;
                    eVar.a(gLContext2, null, i9, i10);
                    aVar.f32037d.a();
                } catch (com.tencent.liteav.videobase.b.g e10) {
                    LiteavLog.e(aVar.f32036c.a("initError"), "CustomRenderProcess", "egl initialize failed.", e10);
                    aVar.f32037d = null;
                }
                if (aVar.f32037d != null) {
                    aVar.f32048o = gLContext2;
                    if (aVar.f32044k == null) {
                        aVar.f32044k = new com.tencent.liteav.videobase.frame.j(i9, i10);
                    }
                    aVar.f32045l = new com.tencent.liteav.videobase.frame.e();
                    if (aVar.f32042i == null) {
                        com.tencent.liteav.videobase.videobase.c cVar = new com.tencent.liteav.videobase.videobase.c();
                        aVar.f32042i = cVar;
                        cVar.a(new com.tencent.liteav.videobase.videobase.a(aVar.f32046m, aVar.f32047n), aVar.f32041h, aVar.f32040g, 0, aVar);
                        aVar.f32042i.a(aVar.f32045l);
                    }
                }
            }
        }
        com.tencent.liteav.videobase.b.e eVar2 = aVar.f32037d;
        if (eVar2 != null) {
            try {
                eVar2.a();
            } catch (com.tencent.liteav.videobase.b.g e11) {
                LiteavLog.e(aVar.f32036c.a("makeCurrentError"), "CustomRenderProcess", "customRenderFrame makeCurrent error ".concat(String.valueOf(e11)), new Object[0]);
            }
            if (aVar.f32039f) {
                aVar.f32039f = false;
                aVar.f32042i.a(0, aVar);
                aVar.f32042i.a(new com.tencent.liteav.videobase.videobase.a(aVar.f32046m, aVar.f32047n), aVar.f32041h, aVar.f32040g, 0, aVar);
            }
            com.tencent.liteav.videobase.frame.d a10 = aVar.f32045l.a(aVar.f32046m, aVar.f32047n);
            GLConstants.GLScaleType gLScaleType = GLConstants.GLScaleType.CENTER_CROP;
            PixelFrame pixelFrame3 = new PixelFrame(pixelFrame2);
            if (a10 == null) {
                pixelFrame3.setMirrorVertical(true ^ pixelFrame3.isMirrorVertical());
                if (pixelFrame3.getRotation() != Rotation.NORMAL) {
                    Rotation rotation2 = pixelFrame3.getRotation();
                    Rotation rotation3 = Rotation.ROTATION_180;
                    if (rotation2 != rotation3) {
                        pixelFrame3.setRotation(Rotation.a((pixelFrame3.getRotation().mValue + rotation3.mValue) % 360));
                    }
                }
            }
            com.tencent.liteav.videobase.frame.j jVar = aVar.f32044k;
            if (jVar != null) {
                jVar.a(pixelFrame3, gLScaleType, a10);
            }
            com.tencent.liteav.videobase.videobase.c cVar2 = aVar.f32042i;
            if (cVar2 != null) {
                cVar2.a(pixelFrame2.getTimestamp(), a10);
            }
            a10.release();
        }
        pixelFrame.release();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(a aVar, VideoRenderListener videoRenderListener) {
        if (aVar.f32038e) {
            LiteavLog.w("CustomRenderProcess", "renderer is started!");
            return;
        }
        aVar.f32043j = videoRenderListener;
        aVar.f32038e = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(a aVar) {
        if (!aVar.f32038e) {
            LiteavLog.w("CustomRenderProcess", "renderer is not started!");
            return;
        }
        aVar.f32038e = false;
        aVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(a aVar, boolean z10) {
        if (aVar.f32051r != z10) {
            LiteavLog.i("CustomRenderProcess", "setVerticalMirror ".concat(String.valueOf(z10)));
        }
        aVar.f32051r = z10;
    }

    public a(@NonNull com.tencent.liteav.base.util.j jVar) {
        this.f32036c = new com.tencent.liteav.base.b.b();
        this.f32037d = null;
        this.f32038e = false;
        this.f32039f = false;
        this.f32040g = GLConstants.PixelFormatType.RGBA;
        this.f32041h = GLConstants.PixelBufferType.TEXTURE_2D;
        this.f32046m = 0;
        this.f32047n = 0;
        this.f32049p = Rotation.NORMAL;
        this.f32050q = false;
        this.f32051r = false;
        this.f32035b = jVar;
        this.f32034a = null;
    }

    private void a() {
        com.tencent.liteav.videobase.b.e eVar = this.f32037d;
        if (eVar == null) {
            return;
        }
        try {
            eVar.a();
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.f32036c.a("make"), "CustomRenderProcess", "uninitializedEGL makeCurrent error ".concat(String.valueOf(e10)), new Object[0]);
        }
        LiteavLog.i(this.f32036c.a("uninitGL"), "CustomRenderProcess", "egl uninitializedEGL", new Object[0]);
        com.tencent.liteav.videobase.frame.j jVar = this.f32044k;
        if (jVar != null) {
            jVar.a();
            this.f32044k = null;
        }
        com.tencent.liteav.videobase.frame.e eVar2 = this.f32045l;
        if (eVar2 != null) {
            eVar2.a();
            this.f32045l.b();
            this.f32045l = null;
        }
        com.tencent.liteav.videobase.videobase.c cVar = this.f32042i;
        if (cVar != null) {
            cVar.a(0, this);
            this.f32042i.a();
            this.f32042i = null;
        }
        com.tencent.liteav.videobase.b.e.a(this.f32037d);
        this.f32037d = null;
    }

    private boolean a(Runnable runnable) {
        com.tencent.liteav.base.util.j jVar = this.f32035b;
        if (jVar != null) {
            jVar.a(runnable);
            return true;
        } else if (Looper.myLooper() == this.f32034a.getLooper()) {
            runnable.run();
            return true;
        } else if (this.f32034a.getLooper().getThread().isAlive()) {
            return this.f32034a.post(runnable);
        } else {
            LiteavLog.w("CustomRenderProcess", "runOnRenderThread: thread is dead!");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(a aVar, PixelFrame pixelFrame) {
        if (aVar.f32043j != null) {
            PixelFrame pixelFrame2 = new PixelFrame(pixelFrame);
            pixelFrame2.setRotation(Rotation.NORMAL);
            aVar.f32043j.onRenderFrame(pixelFrame2);
        }
    }
}
