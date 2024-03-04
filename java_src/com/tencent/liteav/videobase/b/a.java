package com.tencent.liteav.videobase.b;

import android.opengl.GLES20;
import android.view.Surface;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.q;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
/* loaded from: classes4.dex */
public final class a implements h<EGLContext> {

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f31696i = {12339, 1, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12352, 4, 12344};

    /* renamed from: j  reason: collision with root package name */
    private static final int[] f31697j = {12339, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12352, 4, 12610, 1, 12344};

    /* renamed from: b  reason: collision with root package name */
    private final int f31699b;

    /* renamed from: c  reason: collision with root package name */
    private final int f31700c;

    /* renamed from: g  reason: collision with root package name */
    private EGL10 f31704g;

    /* renamed from: h  reason: collision with root package name */
    private EGLConfig f31705h;

    /* renamed from: d  reason: collision with root package name */
    private EGLDisplay f31701d = EGL10.EGL_NO_DISPLAY;

    /* renamed from: e  reason: collision with root package name */
    private EGLContext f31702e = EGL10.EGL_NO_CONTEXT;

    /* renamed from: f  reason: collision with root package name */
    private EGLSurface f31703f = EGL10.EGL_NO_SURFACE;

    /* renamed from: a  reason: collision with root package name */
    private final String f31698a = "EGL10Helper@" + hashCode();

    private a(int i9, int i10) {
        this.f31699b = i9;
        this.f31700c = i10;
    }

    public static a a(EGLContext eGLContext, Surface surface, int i9, int i10) throws g {
        int i11;
        a aVar = new a(i9, i10);
        try {
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            aVar.f31704g = egl10;
            EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            aVar.f31701d = eglGetDisplay;
            aVar.f31704g.eglInitialize(eglGetDisplay, new int[2]);
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            aVar.f31704g.eglChooseConfig(aVar.f31701d, surface == null ? f31696i : f31697j, eGLConfigArr, 1, new int[1]);
            aVar.f31705h = eGLConfigArr[0];
            if (LiteavSystemInfo.getSystemOSVersionInt() >= 18) {
                try {
                    aVar.f31702e = aVar.a(aVar.f31701d, aVar.f31705h, 2, eGLContext);
                } catch (g unused) {
                    LiteavLog.i(aVar.f31698a, "failed to create EGLContext of OpenGL ES 2.0, try 3.0");
                    aVar.f31702e = aVar.a(aVar.f31701d, aVar.f31705h, 3, eGLContext);
                    i11 = 3;
                }
            } else {
                aVar.f31702e = aVar.a(aVar.f31701d, aVar.f31705h, 2, eGLContext);
            }
            i11 = 2;
            String str = aVar.f31698a;
            LiteavLog.i(str, "create eglContext " + aVar.f31702e + " sharedContext: " + eGLContext + " version:" + i11);
            if (surface == null) {
                aVar.f31703f = aVar.f31704g.eglCreatePbufferSurface(aVar.f31701d, aVar.f31705h, new int[]{12375, aVar.f31699b, 12374, aVar.f31700c, 12344});
            } else {
                try {
                    aVar.f31703f = aVar.f31704g.eglCreateWindowSurface(aVar.f31701d, aVar.f31705h, surface, null);
                } catch (Exception e10) {
                    throw new g(aVar.f31704g.eglGetError(), "", e10);
                }
            }
            if (aVar.f31703f == EGL10.EGL_NO_SURFACE) {
                aVar.h();
            }
            EGL10 egl102 = aVar.f31704g;
            EGLDisplay eGLDisplay = aVar.f31701d;
            EGLSurface eGLSurface = aVar.f31703f;
            if (!egl102.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, aVar.f31702e)) {
                aVar.h();
            }
            return aVar;
        } catch (g e11) {
            aVar.c();
            throw e11;
        }
    }

    private void g() throws g {
        if (this.f31703f != EGL10.EGL_NO_SURFACE) {
            d();
            if (!this.f31704g.eglDestroySurface(this.f31701d, this.f31703f)) {
                h();
            }
            this.f31703f = EGL10.EGL_NO_SURFACE;
        }
    }

    private void h() throws g {
        int eglGetError = this.f31704g.eglGetError();
        if (eglGetError != 12288) {
            throw new g(eglGetError);
        }
    }

    @Override // com.tencent.liteav.videobase.b.h
    public final void b() throws g {
        EGL10 egl10 = this.f31704g;
        EGLDisplay eGLDisplay = this.f31701d;
        EGLSurface eGLSurface = this.f31703f;
        if (egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.f31702e)) {
            return;
        }
        h();
    }

    @Override // com.tencent.liteav.videobase.b.h
    public final void c() throws g {
        if (this.f31701d != EGL10.EGL_NO_DISPLAY) {
            d();
            g();
            if (this.f31702e != EGL10.EGL_NO_CONTEXT) {
                String str = this.f31698a;
                LiteavLog.i(str, "destroy eglContext " + this.f31702e);
                this.f31704g.eglDestroyContext(this.f31701d, this.f31702e);
                this.f31702e = EGL10.EGL_NO_CONTEXT;
            }
            this.f31704g.eglTerminate(this.f31701d);
        }
        this.f31701d = EGL10.EGL_NO_DISPLAY;
    }

    @Override // com.tencent.liteav.videobase.b.h
    public final void d() {
        EGLDisplay eGLDisplay = this.f31701d;
        if (eGLDisplay != EGL10.EGL_NO_DISPLAY) {
            EGL10 egl10 = this.f31704g;
            EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
            egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
        }
    }

    @Override // com.tencent.liteav.videobase.b.h
    public final q e() {
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        boolean eglQuerySurface = this.f31704g.eglQuerySurface(this.f31701d, this.f31703f, 12375, iArr);
        boolean eglQuerySurface2 = this.f31704g.eglQuerySurface(this.f31701d, this.f31703f, 12374, iArr2);
        if (eglQuerySurface && eglQuerySurface2) {
            return new q(iArr[0], iArr2[0]);
        }
        return new q(0, 0);
    }

    @Override // com.tencent.liteav.videobase.b.h
    public final /* bridge */ /* synthetic */ EGLContext f() {
        return this.f31702e;
    }

    @Override // com.tencent.liteav.videobase.b.h
    public final void a() throws g {
        GLES20.glFinish();
        if (this.f31704g.eglSwapBuffers(this.f31701d, this.f31703f)) {
            return;
        }
        h();
    }

    private EGLContext a(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i9, EGLContext eGLContext) throws g {
        int[] iArr = {12440, i9, 12344};
        if (eGLContext == null) {
            eGLContext = EGL10.EGL_NO_CONTEXT;
        }
        EGLContext eglCreateContext = this.f31704g.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
        h();
        return eglCreateContext;
    }
}
