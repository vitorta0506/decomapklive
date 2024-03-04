package com.tencent.qgame.animplayer;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import com.tencent.qgame.animplayer.util.ALog;
import javax.microedition.khronos.egl.EGL;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0002J(\u0010\u000e\u001a\u0004\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0012R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/tencent/qgame/animplayer/EGLUtil;", "", "()V", "egl", "Ljavax/microedition/khronos/egl/EGL10;", "eglConfig", "Ljavax/microedition/khronos/egl/EGLConfig;", "eglContext", "Ljavax/microedition/khronos/egl/EGLContext;", "eglDisplay", "Ljavax/microedition/khronos/egl/EGLDisplay;", "eglSurface", "Ljavax/microedition/khronos/egl/EGLSurface;", "chooseConfig", "createContext", "getAttributes", "", "release", "", "start", "surfaceTexture", "Landroid/graphics/SurfaceTexture;", "swapBuffers", "Companion", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class EGLUtil {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AnimPlayer.EGLUtil";
    private EGL10 egl;
    private EGLConfig eglConfig;
    private EGLDisplay eglDisplay = EGL10.EGL_NO_DISPLAY;
    private EGLSurface eglSurface = EGL10.EGL_NO_SURFACE;
    private EGLContext eglContext = EGL10.EGL_NO_CONTEXT;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/tencent/qgame/animplayer/EGLUtil$Companion;", "", "()V", "TAG", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final EGLConfig chooseConfig() {
        int[] iArr = new int[1];
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] attributes = getAttributes();
        EGL10 egl10 = this.egl;
        if (egl10 == null || !egl10.eglChooseConfig(this.eglDisplay, attributes, eGLConfigArr, 1, iArr)) {
            return null;
        }
        return eGLConfigArr[0];
    }

    private final EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
        int[] iArr = {12440, 2, 12344};
        if (egl10 != null) {
            return egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, iArr);
        }
        return null;
    }

    private final int[] getAttributes() {
        return new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344};
    }

    public final void release() {
        EGL10 egl10 = this.egl;
        if (egl10 != null) {
            EGLDisplay eGLDisplay = this.eglDisplay;
            EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
            egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            egl10.eglDestroySurface(this.eglDisplay, this.eglSurface);
            egl10.eglDestroyContext(this.eglDisplay, this.eglContext);
            egl10.eglTerminate(this.eglDisplay);
        }
    }

    public final void start(@NotNull SurfaceTexture surfaceTexture) {
        try {
            EGL egl = EGLContext.getEGL();
            if (egl != null) {
                EGL10 egl10 = (EGL10) egl;
                this.egl = egl10;
                EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
                this.eglDisplay = eglGetDisplay;
                int[] iArr = new int[2];
                EGL10 egl102 = this.egl;
                if (egl102 != null) {
                    egl102.eglInitialize(eglGetDisplay, iArr);
                }
                EGLConfig chooseConfig = chooseConfig();
                this.eglConfig = chooseConfig;
                EGL10 egl103 = this.egl;
                this.eglSurface = egl103 != null ? egl103.eglCreateWindowSurface(this.eglDisplay, chooseConfig, new Surface(surfaceTexture), null) : null;
                this.eglContext = createContext(this.egl, this.eglDisplay, this.eglConfig);
                EGLSurface eGLSurface = this.eglSurface;
                if (eGLSurface != null && !Intrinsics.areEqual(eGLSurface, EGL10.EGL_NO_SURFACE)) {
                    EGL10 egl104 = this.egl;
                    if (egl104 != null) {
                        EGLDisplay eGLDisplay = this.eglDisplay;
                        EGLSurface eGLSurface2 = this.eglSurface;
                        if (egl104.eglMakeCurrent(eGLDisplay, eGLSurface2, eGLSurface2, this.eglContext)) {
                            return;
                        }
                        ALog aLog = ALog.INSTANCE;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("make current error:");
                        EGL10 egl105 = this.egl;
                        sb2.append(Integer.toHexString(egl105 != null ? egl105.eglGetError() : 0));
                        aLog.e(TAG, sb2.toString());
                        return;
                    }
                    return;
                }
                ALog aLog2 = ALog.INSTANCE;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("error:");
                EGL10 egl106 = this.egl;
                sb3.append(Integer.toHexString(egl106 != null ? egl106.eglGetError() : 0));
                aLog2.e(TAG, sb3.toString());
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type javax.microedition.khronos.egl.EGL10");
        } catch (Throwable th2) {
            ALog aLog3 = ALog.INSTANCE;
            aLog3.e(TAG, "error:" + th2, th2);
        }
    }

    public final void swapBuffers() {
        EGLSurface eGLSurface;
        EGL10 egl10;
        EGLDisplay eGLDisplay = this.eglDisplay;
        if (eGLDisplay == null || (eGLSurface = this.eglSurface) == null || (egl10 = this.egl) == null) {
            return;
        }
        egl10.eglSwapBuffers(eGLDisplay, eGLSurface);
    }
}
