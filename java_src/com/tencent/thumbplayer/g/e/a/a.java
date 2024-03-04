package com.tencent.thumbplayer.g.e.a;

import android.graphics.SurfaceTexture;
import android.util.Log;
import android.view.Surface;
import com.tencent.thumbplayer.g.c.b;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
/* loaded from: classes4.dex */
public class a implements SurfaceTexture.OnFrameAvailableListener {

    /* renamed from: a  reason: collision with root package name */
    EGL10 f34059a;

    /* renamed from: b  reason: collision with root package name */
    EGLDisplay f34060b;

    /* renamed from: c  reason: collision with root package name */
    EGLContext f34061c;

    /* renamed from: d  reason: collision with root package name */
    EGLSurface f34062d;

    /* renamed from: e  reason: collision with root package name */
    com.tencent.thumbplayer.g.c.b f34063e;

    /* renamed from: f  reason: collision with root package name */
    Surface f34064f;

    /* renamed from: g  reason: collision with root package name */
    Object f34065g = new Object();

    /* renamed from: h  reason: collision with root package name */
    boolean f34066h;

    /* renamed from: i  reason: collision with root package name */
    b f34067i;

    public a() {
        a();
    }

    public a(int i9, int i10) {
        if (i9 <= 0 || i10 <= 0) {
            throw new IllegalArgumentException();
        }
        a(i9, i10);
        c();
        a();
    }

    void a() {
        b bVar = new b();
        this.f34067i = bVar;
        bVar.b();
        com.tencent.thumbplayer.g.c.b bVar2 = new com.tencent.thumbplayer.g.c.b(this.f34067i.a());
        this.f34063e = bVar2;
        bVar2.a(new b.a() { // from class: com.tencent.thumbplayer.g.e.a.a.1
            @Override // com.tencent.thumbplayer.g.c.b.a
            public void a() {
                com.tencent.thumbplayer.g.h.b.b("OutputSurface", "mSurfaceTexture:" + a.this.f34063e + " onReleased, release OutputSurface");
                a.this.b();
            }
        });
        this.f34063e.setOnFrameAvailableListener(this);
        this.f34064f = new com.tencent.thumbplayer.g.c.a(this.f34063e);
    }

    void a(int i9, int i10) {
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.f34059a = egl10;
        EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.f34060b = eglGetDisplay;
        if (!this.f34059a.eglInitialize(eglGetDisplay, null)) {
            throw new RuntimeException("unable to initialize EGL10");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!this.f34059a.eglChooseConfig(this.f34060b, new int[]{12324, 8, 12323, 8, 12322, 8, 12339, 1, 12352, 4, 12344}, eGLConfigArr, 1, new int[1])) {
            throw new RuntimeException("unable to find RGB888+pbuffer EGL config");
        }
        this.f34061c = this.f34059a.eglCreateContext(this.f34060b, eGLConfigArr[0], EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
        a("eglCreateContext");
        if (this.f34061c == null) {
            throw new RuntimeException("null context");
        }
        this.f34062d = this.f34059a.eglCreatePbufferSurface(this.f34060b, eGLConfigArr[0], new int[]{12375, i9, 12374, i10, 12344});
        a("eglCreatePbufferSurface");
        if (this.f34062d == null) {
            throw new RuntimeException("surface was null");
        }
    }

    void a(String str) {
        boolean z10 = false;
        while (true) {
            int eglGetError = this.f34059a.eglGetError();
            if (eglGetError == 12288) {
                break;
            }
            Log.e("OutputSurface", str + ": EGL error: 0x" + Integer.toHexString(eglGetError));
            z10 = true;
        }
        if (z10) {
            throw new RuntimeException("EGL error encountered (see log)");
        }
    }

    public void b() {
        EGL10 egl10 = this.f34059a;
        if (egl10 != null) {
            if (egl10.eglGetCurrentContext().equals(this.f34061c)) {
                EGL10 egl102 = this.f34059a;
                EGLDisplay eGLDisplay = this.f34060b;
                EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
                egl102.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            }
            this.f34059a.eglDestroySurface(this.f34060b, this.f34062d);
            this.f34059a.eglDestroyContext(this.f34060b, this.f34061c);
        }
        this.f34064f.release();
        this.f34060b = null;
        this.f34061c = null;
        this.f34062d = null;
        this.f34059a = null;
        this.f34067i = null;
        this.f34064f = null;
        this.f34063e = null;
    }

    public void c() {
        if (this.f34059a == null) {
            throw new RuntimeException("not configured for makeCurrent");
        }
        a("before makeCurrent");
        EGL10 egl10 = this.f34059a;
        EGLDisplay eGLDisplay = this.f34060b;
        EGLSurface eGLSurface = this.f34062d;
        if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.f34061c)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public Surface d() {
        return this.f34064f;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this.f34065g) {
            if (this.f34066h) {
                throw new RuntimeException("mFrameAvailable already set, frame could be dropped");
            }
            this.f34066h = true;
            this.f34065g.notifyAll();
        }
    }
}
