package com.tencent.liteav.videobase.b;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.view.Surface;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.q;
/* loaded from: classes4.dex */
public final class b implements h<EGLContext> {

    /* renamed from: h  reason: collision with root package name */
    private static final int[] f31706h = {12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12352, 4, 12610, 1, 12344};

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f31707i = {12339, 1, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12352, 4, 12610, 1, 12344};

    /* renamed from: d  reason: collision with root package name */
    private final int f31711d;

    /* renamed from: e  reason: collision with root package name */
    private final int f31712e;

    /* renamed from: f  reason: collision with root package name */
    private EGLConfig f31713f = null;

    /* renamed from: a  reason: collision with root package name */
    EGLDisplay f31708a = EGL14.EGL_NO_DISPLAY;

    /* renamed from: g  reason: collision with root package name */
    private EGLContext f31714g = EGL14.EGL_NO_CONTEXT;

    /* renamed from: b  reason: collision with root package name */
    EGLSurface f31709b = EGL14.EGL_NO_SURFACE;

    /* renamed from: c  reason: collision with root package name */
    private final String f31710c = "EGL14Helper@" + hashCode();

    private b(int i9, int i10) {
        this.f31711d = i9;
        this.f31712e = i10;
    }

    public static b a(EGLContext eGLContext, Surface surface, int i9, int i10) throws g {
        int i11;
        b bVar = new b(i9, i10);
        try {
            EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
            bVar.f31708a = eglGetDisplay;
            if (eglGetDisplay != EGL14.EGL_NO_DISPLAY) {
                int[] iArr = new int[2];
                if (!EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                    bVar.f31708a = null;
                    LiteavLog.e(bVar.f31710c, "unable to initialize EGL14");
                    throw new g(0);
                }
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                if (EGL14.eglChooseConfig(bVar.f31708a, surface == null ? f31707i : f31706h, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
                    bVar.f31713f = eGLConfigArr[0];
                    if (LiteavSystemInfo.getSystemOSVersionInt() >= 18) {
                        try {
                            bVar.f31714g = a(bVar.f31708a, bVar.f31713f, 2, eGLContext);
                        } catch (g unused) {
                            LiteavLog.i(bVar.f31710c, "failed to create EGLContext of OpenGL ES 2.0, try 3.0");
                            bVar.f31714g = a(bVar.f31708a, bVar.f31713f, 3, eGLContext);
                            i11 = 3;
                        }
                    } else {
                        bVar.f31714g = a(bVar.f31708a, bVar.f31713f, 2, eGLContext);
                    }
                    i11 = 2;
                    String str = bVar.f31710c;
                    LiteavLog.i(str, "create eglContext " + bVar.f31714g + " sharedContext: " + eGLContext + " version:" + i11);
                    if (surface == null) {
                        bVar.f31709b = EGL14.eglCreatePbufferSurface(bVar.f31708a, bVar.f31713f, new int[]{12375, bVar.f31711d, 12374, bVar.f31712e, 12344}, 0);
                    } else {
                        try {
                            bVar.f31709b = EGL14.eglCreateWindowSurface(bVar.f31708a, bVar.f31713f, surface, new int[]{12344}, 0);
                        } catch (Exception e10) {
                            throw new g(EGL14.eglGetError(), "", e10);
                        }
                    }
                    g();
                    EGLDisplay eGLDisplay = bVar.f31708a;
                    EGLSurface eGLSurface = bVar.f31709b;
                    if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, bVar.f31714g)) {
                        g();
                    }
                    return bVar;
                }
                throw new g(0);
            }
            LiteavLog.e(bVar.f31710c, "unable to get EGL14 display");
            throw new g(0);
        } catch (g e11) {
            bVar.c();
            throw e11;
        }
    }

    private static void g() throws g {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError != 12288) {
            throw new g(eglGetError);
        }
    }

    @Override // com.tencent.liteav.videobase.b.h
    public final void b() throws g {
        EGLDisplay eGLDisplay = this.f31708a;
        EGLSurface eGLSurface = this.f31709b;
        if (EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.f31714g)) {
            return;
        }
        g();
    }

    @Override // com.tencent.liteav.videobase.b.h
    public final void c() {
        EGLDisplay eGLDisplay = this.f31708a;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            EGLSurface eGLSurface2 = this.f31709b;
            if (eGLSurface2 != EGL14.EGL_NO_SURFACE) {
                EGL14.eglDestroySurface(this.f31708a, eGLSurface2);
                this.f31709b = EGL14.EGL_NO_SURFACE;
            }
            if (this.f31714g != EGL14.EGL_NO_CONTEXT) {
                String str = this.f31710c;
                LiteavLog.i(str, "destroy eglContext " + this.f31714g);
                EGL14.eglDestroyContext(this.f31708a, this.f31714g);
                this.f31714g = EGL14.EGL_NO_CONTEXT;
            }
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.f31708a);
        }
        this.f31708a = EGL14.EGL_NO_DISPLAY;
    }

    @Override // com.tencent.liteav.videobase.b.h
    public final void d() {
        EGLDisplay eGLDisplay = this.f31708a;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
        }
    }

    @Override // com.tencent.liteav.videobase.b.h
    public final q e() {
        int[] iArr = new int[2];
        boolean eglQuerySurface = EGL14.eglQuerySurface(this.f31708a, this.f31709b, 12375, iArr, 0);
        boolean eglQuerySurface2 = EGL14.eglQuerySurface(this.f31708a, this.f31709b, 12374, iArr, 1);
        if (eglQuerySurface && eglQuerySurface2) {
            return new q(iArr[0], iArr[1]);
        }
        return new q(0, 0);
    }

    @Override // com.tencent.liteav.videobase.b.h
    public final /* bridge */ /* synthetic */ EGLContext f() {
        return this.f31714g;
    }

    @Override // com.tencent.liteav.videobase.b.h
    public final void a() throws g {
        GLES20.glFinish();
        if (EGL14.eglSwapBuffers(this.f31708a, this.f31709b)) {
            return;
        }
        g();
    }

    private static EGLContext a(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i9, EGLContext eGLContext) throws g {
        int[] iArr = {12440, i9, 12344};
        if (eGLContext == null) {
            eGLContext = EGL14.EGL_NO_CONTEXT;
        }
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr, 0);
        g();
        return eglCreateContext;
    }
}
