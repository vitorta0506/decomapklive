package com.tencent.liteav.txcvodplayer.renderer;

import android.graphics.SurfaceTexture;
import android.os.Looper;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.frame.l;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.liteav.videoconsumer.renderer.p;
import com.tencent.ugc.UGCTransitionRules;
/* loaded from: classes4.dex */
public final class d implements SurfaceTexture.OnFrameAvailableListener {

    /* renamed from: a  reason: collision with root package name */
    public CustomHandler f31633a;

    /* renamed from: b  reason: collision with root package name */
    protected com.tencent.liteav.videobase.b.e f31634b;

    /* renamed from: c  reason: collision with root package name */
    private p f31635c;

    /* renamed from: d  reason: collision with root package name */
    private DisplayTarget f31636d;

    /* renamed from: g  reason: collision with root package name */
    private SurfaceTexture f31639g;

    /* renamed from: i  reason: collision with root package name */
    private PixelFrame f31641i;

    /* renamed from: j  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.l f31642j;

    /* renamed from: k  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.j f31643k;

    /* renamed from: l  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.e f31644l;

    /* renamed from: p  reason: collision with root package name */
    private final a f31648p;

    /* renamed from: e  reason: collision with root package name */
    private GLConstants.GLScaleType f31637e = GLConstants.GLScaleType.FIT_CENTER;

    /* renamed from: f  reason: collision with root package name */
    private Rotation f31638f = Rotation.NORMAL;

    /* renamed from: h  reason: collision with root package name */
    private int f31640h = -1;

    /* renamed from: m  reason: collision with root package name */
    private final float[] f31645m = new float[16];

    /* renamed from: n  reason: collision with root package name */
    private int f31646n = UGCTransitionRules.DEFAULT_IMAGE_WIDTH;

    /* renamed from: o  reason: collision with root package name */
    private int f31647o = UGCTransitionRules.DEFAULT_IMAGE_HEIGHT;

    /* loaded from: classes4.dex */
    public interface a {
        void a(SurfaceTexture surfaceTexture);

        void a(PixelFrame pixelFrame);

        void f();
    }

    public d(a aVar) {
        this.f31648p = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(d dVar) {
        LiteavLog.i("VodRenderer", "Start");
        p pVar = dVar.f31635c;
        if (pVar != null) {
            pVar.setDisplayView(dVar.f31636d, true);
            dVar.f31635c.setRenderRotation(dVar.f31638f);
            dVar.f31635c.setScaleType(dVar.f31637e);
            dVar.f31635c.start(null);
        }
    }

    static /* synthetic */ p d(d dVar) {
        dVar.f31635c = null;
        return null;
    }

    static /* synthetic */ DisplayTarget e(d dVar) {
        dVar.f31636d = null;
        return null;
    }

    static /* synthetic */ CustomHandler g(d dVar) {
        dVar.f31633a = null;
        return null;
    }

    public final void a(boolean z10) {
        a(f.a(this, z10), "Stop");
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        a(l.a(this, surfaceTexture), "onFrameAvailable");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(d dVar, boolean z10) {
        LiteavLog.i("VodRenderer", "Stop");
        p pVar = dVar.f31635c;
        if (pVar != null) {
            pVar.stop(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(d dVar, DisplayTarget displayTarget) {
        LiteavLog.i("VodRenderer", "setDisplayTarget: ".concat(String.valueOf(displayTarget)));
        dVar.f31636d = displayTarget;
        p pVar = dVar.f31635c;
        if (pVar != null) {
            pVar.setDisplayView(displayTarget, true);
        }
    }

    private boolean b() {
        com.tencent.liteav.videobase.b.e eVar = this.f31634b;
        if (eVar == null) {
            LiteavLog.e("VodRenderer", "makeCurrent on mEGLCore is null");
            return false;
        }
        try {
            eVar.a();
            return true;
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e("VodRenderer", "make current failed.", e10);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(d dVar, int i9, int i10) {
        if (dVar.f31646n == i9 && dVar.f31647o == i10) {
            return;
        }
        LiteavLog.i("VodRenderer", "setVideoSize: %d*%d", Integer.valueOf(i9), Integer.valueOf(i10));
        dVar.f31646n = i9;
        dVar.f31647o = i10;
        dVar.f31641i.setWidth(i9);
        dVar.f31641i.setHeight(dVar.f31647o);
        com.tencent.liteav.videobase.frame.j jVar = dVar.f31643k;
        if (jVar != null) {
            jVar.a();
            dVar.f31643k = null;
        }
        com.tencent.liteav.videobase.frame.e eVar = dVar.f31644l;
        if (eVar != null) {
            eVar.a();
        }
    }

    public final void a(GLConstants.GLScaleType gLScaleType) {
        a(i.a(this, gLScaleType), "setScaleType");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(d dVar, GLConstants.GLScaleType gLScaleType) {
        LiteavLog.i("VodRenderer", "setScaleType ".concat(String.valueOf(gLScaleType)));
        dVar.f31637e = gLScaleType;
        p pVar = dVar.f31635c;
        if (pVar != null) {
            pVar.setScaleType(gLScaleType);
        }
    }

    public final void a(Rotation rotation) {
        a(j.a(this, rotation), "setRenderRotation");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(d dVar, Rotation rotation) {
        LiteavLog.i("VodRenderer", "setRenderRotation ".concat(String.valueOf(rotation)));
        dVar.f31638f = rotation;
        p pVar = dVar.f31635c;
        if (pVar != null) {
            pVar.setRenderRotation(rotation);
        }
    }

    protected final void a() {
        if (this.f31634b == null) {
            return;
        }
        com.tencent.liteav.videobase.frame.l lVar = this.f31642j;
        if (lVar != null) {
            lVar.b();
            this.f31642j = null;
        }
        try {
            this.f31634b.a();
            a aVar = this.f31648p;
            if (aVar != null) {
                aVar.f();
            }
            SurfaceTexture surfaceTexture = this.f31639g;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                this.f31639g = null;
            }
            OpenGlUtils.deleteTexture(this.f31640h);
            this.f31640h = -1;
            com.tencent.liteav.videobase.frame.j jVar = this.f31643k;
            if (jVar != null) {
                jVar.a();
                this.f31643k = null;
            }
            com.tencent.liteav.videobase.frame.e eVar = this.f31644l;
            if (eVar != null) {
                eVar.a();
                this.f31644l.b();
                this.f31644l = null;
            }
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e("VodRenderer", "EGLCore destroy failed.", e10);
        }
        com.tencent.liteav.videobase.b.e.a(this.f31634b);
        this.f31634b = null;
    }

    public final void a(Runnable runnable, String str) {
        CustomHandler customHandler = this.f31633a;
        if (customHandler == null) {
            LiteavLog.w("VodRenderer", "ignore runnable: ".concat(String.valueOf(str)));
        } else if (customHandler.getLooper() != Looper.myLooper()) {
            customHandler.post(runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(d dVar, SurfaceTexture surfaceTexture) {
        com.tencent.liteav.videobase.frame.l lVar;
        SurfaceTexture surfaceTexture2 = dVar.f31639g;
        if (surfaceTexture2 != null && surfaceTexture == surfaceTexture2) {
            if (dVar.b()) {
                if (dVar.f31644l != null && (lVar = dVar.f31642j) != null) {
                    l.b bVar = null;
                    try {
                        bVar = lVar.a();
                    } catch (InterruptedException unused) {
                    }
                    try {
                        dVar.f31639g.updateTexImage();
                        dVar.f31639g.getTransformMatrix(dVar.f31645m);
                        dVar.f31641i.setMatrix(dVar.f31645m);
                    } catch (Exception e10) {
                        LiteavLog.w("VodRenderer", "updateTexImage exception: ".concat(String.valueOf(e10)));
                    }
                    bVar.a(36197, dVar.f31640h, dVar.f31641i.getWidth(), dVar.f31641i.getHeight());
                    PixelFrame a10 = bVar.a(dVar.f31641i.getGLContext());
                    a10.setMatrix(dVar.f31645m);
                    if (dVar.f31643k == null) {
                        dVar.f31643k = new com.tencent.liteav.videobase.frame.j(dVar.f31646n, dVar.f31647o);
                    }
                    OpenGlUtils.glViewport(0, 0, dVar.f31646n, dVar.f31647o);
                    com.tencent.liteav.videobase.frame.d a11 = dVar.f31644l.a(dVar.f31646n, dVar.f31647o);
                    dVar.f31643k.a(a10, GLConstants.GLScaleType.CENTER_CROP, a11);
                    PixelFrame a12 = a11.a(dVar.f31634b.d());
                    a11.release();
                    a aVar = dVar.f31648p;
                    if (aVar != null) {
                        aVar.a(a12);
                    }
                    p pVar = dVar.f31635c;
                    if (pVar != null) {
                        pVar.renderFrame(a12);
                    }
                    bVar.release();
                    a10.release();
                    a12.release();
                    return;
                }
                LiteavLog.w("VodRenderer", "onCaptureFrameAvailable mGLTexturePool:" + dVar.f31644l + " mTextureHolderPool:" + dVar.f31642j);
                return;
            }
            return;
        }
        LiteavLog.i("VodRenderer", "mSurfaceTexture= " + dVar.f31639g + " ,surfaceTexture= " + surfaceTexture);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(d dVar) {
        if (dVar.f31634b == null) {
            dVar.f31634b = new com.tencent.liteav.videobase.b.e();
            if (dVar.f31642j == null) {
                dVar.f31642j = new com.tencent.liteav.videobase.frame.l();
            }
            try {
                dVar.f31634b.a(null, null, 128, 128);
                dVar.f31634b.a();
                dVar.f31640h = OpenGlUtils.generateTextureOES();
                SurfaceTexture surfaceTexture = new SurfaceTexture(dVar.f31640h);
                dVar.f31639g = surfaceTexture;
                surfaceTexture.setDefaultBufferSize(dVar.f31646n, dVar.f31647o);
                dVar.f31639g.setOnFrameAvailableListener(dVar);
                PixelFrame pixelFrame = new PixelFrame();
                dVar.f31641i = pixelFrame;
                pixelFrame.setWidth(dVar.f31646n);
                dVar.f31641i.setHeight(dVar.f31647o);
                dVar.f31641i.setPixelBufferType(GLConstants.PixelBufferType.TEXTURE_OES);
                dVar.f31641i.setPixelFormatType(GLConstants.PixelFormatType.RGBA);
                dVar.f31641i.setRotation(Rotation.NORMAL);
                dVar.f31641i.setGLContext(dVar.f31634b.d());
                dVar.f31641i.setTextureId(dVar.f31640h);
                dVar.f31644l = new com.tencent.liteav.videobase.frame.e();
                a aVar = dVar.f31648p;
                if (aVar != null) {
                    aVar.a(dVar.f31639g);
                }
            } catch (com.tencent.liteav.videobase.b.g e10) {
                LiteavLog.e("VodRenderer", "initializeEGL failed.", e10);
                dVar.f31634b = null;
            }
        }
        dVar.f31635c = new p(dVar.f31633a.getLooper(), new com.tencent.liteav.videobase.videobase.e());
    }
}
