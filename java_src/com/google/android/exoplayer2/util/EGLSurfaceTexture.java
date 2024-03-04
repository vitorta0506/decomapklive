package com.google.android.exoplayer2.util;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
@RequiresApi(17)
/* loaded from: classes2.dex */
public final class EGLSurfaceTexture implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: h  reason: collision with root package name */
    private static final int[] f6923h = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: a  reason: collision with root package name */
    private final Handler f6924a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f6925b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final b f6926c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private EGLDisplay f6927d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private EGLContext f6928e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private EGLSurface f6929f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private SurfaceTexture f6930g;

    /* loaded from: classes2.dex */
    public static final class GlException extends RuntimeException {
        private GlException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a();
    }

    public EGLSurfaceTexture(Handler handler) {
        this(handler, null);
    }

    private static EGLConfig b(EGLDisplay eGLDisplay) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay, f6923h, 0, eGLConfigArr, 0, 1, iArr, 0);
        if (!eglChooseConfig || iArr[0] <= 0 || eGLConfigArr[0] == null) {
            throw new GlException(l0.z("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr[0]), eGLConfigArr[0]));
        }
        return eGLConfigArr[0];
    }

    private static EGLContext c(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i9) {
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, i9 == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
        if (eglCreateContext != null) {
            return eglCreateContext;
        }
        throw new GlException("eglCreateContext failed");
    }

    private static EGLSurface d(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int i9) {
        EGLSurface eglCreatePbufferSurface;
        if (i9 == 1) {
            eglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
        } else {
            eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i9 == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
            if (eglCreatePbufferSurface == null) {
                throw new GlException("eglCreatePbufferSurface failed");
            }
        }
        if (EGL14.eglMakeCurrent(eGLDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eGLContext)) {
            return eglCreatePbufferSurface;
        }
        throw new GlException("eglMakeCurrent failed");
    }

    private void f() {
        b bVar = this.f6926c;
        if (bVar != null) {
            bVar.a();
        }
    }

    private static void g(int[] iArr) {
        GLES20.glGenTextures(1, iArr, 0);
        GlUtil.c();
    }

    private static EGLDisplay h() {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        if (eglGetDisplay != null) {
            int[] iArr = new int[2];
            if (EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                return eglGetDisplay;
            }
            throw new GlException("eglInitialize failed");
        }
        throw new GlException("eglGetDisplay failed");
    }

    public SurfaceTexture i() {
        return (SurfaceTexture) com.google.android.exoplayer2.util.a.e(this.f6930g);
    }

    public void j(int i9) {
        EGLDisplay h10 = h();
        this.f6927d = h10;
        EGLConfig b10 = b(h10);
        EGLContext c10 = c(this.f6927d, b10, i9);
        this.f6928e = c10;
        this.f6929f = d(this.f6927d, b10, c10, i9);
        g(this.f6925b);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f6925b[0]);
        this.f6930g = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.opengl.EGLContext, android.graphics.SurfaceTexture, android.opengl.EGLSurface, android.opengl.EGLDisplay] */
    public void k() {
        this.f6924a.removeCallbacks(this);
        try {
            SurfaceTexture surfaceTexture = this.f6930g;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, this.f6925b, 0);
            }
        } finally {
            EGLDisplay eGLDisplay = this.f6927d;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.f6927d;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.f6929f;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f6927d, this.f6929f);
            }
            EGLContext eGLContext = this.f6928e;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f6927d, eGLContext);
            }
            if (l0.f6985a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay3 = this.f6927d;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f6927d);
            }
            this.f6927d = null;
            this.f6928e = null;
            this.f6929f = null;
            this.f6930g = null;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f6924a.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        f();
        SurfaceTexture surfaceTexture = this.f6930g;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }

    public EGLSurfaceTexture(Handler handler, @Nullable b bVar) {
        this.f6924a = handler;
        this.f6926c = bVar;
        this.f6925b = new int[1];
    }
}
