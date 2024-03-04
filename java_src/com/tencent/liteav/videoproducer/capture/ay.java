package com.tencent.liteav.videoproducer.capture;

import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.os.Looper;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import javax.microedition.khronos.egl.EGL10;
/* loaded from: classes4.dex */
public class ay {

    /* renamed from: a  reason: collision with root package name */
    private static volatile ay f32612a;

    /* renamed from: b  reason: collision with root package name */
    private Object f32613b;

    /* renamed from: c  reason: collision with root package name */
    private com.tencent.liteav.videobase.b.e f32614c;

    private ay() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            d();
        } else {
            new CustomHandler(Looper.getMainLooper()).a(az.a(this));
        }
    }

    public static ay a() {
        if (f32612a == null) {
            synchronized (ay.class) {
                if (f32612a == null) {
                    f32612a = new ay();
                }
            }
        }
        return f32612a;
    }

    private void c() {
        com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
        this.f32614c = eVar;
        try {
            eVar.a(null, null, 128, 128);
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e("GlobalContextManager", "initializeEGL failed.", e10);
            this.f32614c = null;
        }
        com.tencent.liteav.videobase.b.e eVar2 = this.f32614c;
        if (eVar2 != null) {
            this.f32613b = eVar2.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f32613b != null) {
            return;
        }
        LiteavLog.i("GlobalContextManager", "context before creating: " + EGL14.eglGetCurrentContext());
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 17) {
            EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
            EGLSurface eglGetCurrentSurface = EGL14.eglGetCurrentSurface(12378);
            EGLSurface eglGetCurrentSurface2 = EGL14.eglGetCurrentSurface(12377);
            EGLContext eglGetCurrentContext = EGL14.eglGetCurrentContext();
            c();
            EGL14.eglMakeCurrent(eglGetDisplay, eglGetCurrentSurface2, eglGetCurrentSurface, eglGetCurrentContext);
        } else {
            EGL10 egl10 = (EGL10) javax.microedition.khronos.egl.EGLContext.getEGL();
            javax.microedition.khronos.egl.EGLDisplay eglGetDisplay2 = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            javax.microedition.khronos.egl.EGLSurface eglGetCurrentSurface3 = egl10.eglGetCurrentSurface(12378);
            javax.microedition.khronos.egl.EGLSurface eglGetCurrentSurface4 = egl10.eglGetCurrentSurface(12377);
            javax.microedition.khronos.egl.EGLContext eglGetCurrentContext2 = egl10.eglGetCurrentContext();
            c();
            egl10.eglMakeCurrent(eglGetDisplay2, eglGetCurrentSurface4, eglGetCurrentSurface3, eglGetCurrentContext2);
        }
        LiteavLog.i("GlobalContextManager", "context after creating: " + EGL14.eglGetCurrentContext() + ", global context: " + this.f32613b);
    }

    public final synchronized Object b() {
        return this.f32613b;
    }
}
