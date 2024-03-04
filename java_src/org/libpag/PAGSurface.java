package org.libpag;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.view.Surface;
import org.extra.tools.LibraryLoadUtils;
/* loaded from: classes7.dex */
public class PAGSurface {
    long nativeSurface;
    private Surface surface = null;
    private int textureID = 0;

    static {
        LibraryLoadUtils.loadLibrary("libpag");
        nativeInit();
    }

    private PAGSurface(long j10) {
        this.nativeSurface = j10;
    }

    public static PAGSurface FromSurface(Surface surface) {
        return FromSurface(surface, EGL14.EGL_NO_CONTEXT);
    }

    public static PAGSurface FromSurfaceTexture(SurfaceTexture surfaceTexture) {
        return FromSurfaceTexture(surfaceTexture, EGL14.EGL_NO_CONTEXT);
    }

    public static PAGSurface FromTexture(int i9, int i10, int i11) {
        return FromTexture(i9, i10, i11, false);
    }

    public static PAGSurface FromTextureForAsyncThread(int i9, int i10, int i11) {
        return FromTextureForAsyncThread(i9, i10, i11, false);
    }

    private static native long SetupFromSurfaceWithGLContext(Surface surface, long j10);

    public static native long SetupFromTexture(int i9, int i10, int i11, boolean z10, boolean z11);

    private native void nativeFinalize();

    private static native void nativeInit();

    private native void nativeRelease();

    public native boolean clearAll();

    protected void finalize() {
        nativeFinalize();
    }

    public native void freeCache();

    public native int height();

    @Deprecated
    public native boolean present();

    public void release() {
        nativeRelease();
    }

    public native void updateSize();

    public native int width();

    public static PAGSurface FromSurface(Surface surface, EGLContext eGLContext) {
        if (surface == null) {
            return null;
        }
        long SetupFromSurfaceWithGLContext = SetupFromSurfaceWithGLContext(surface, (eGLContext == null || eGLContext == EGL14.EGL_NO_CONTEXT) ? 0L : eGLContext.getNativeHandle());
        if (SetupFromSurfaceWithGLContext == 0) {
            return null;
        }
        PAGSurface pAGSurface = new PAGSurface(SetupFromSurfaceWithGLContext);
        pAGSurface.surface = surface;
        return pAGSurface;
    }

    public static PAGSurface FromSurfaceTexture(SurfaceTexture surfaceTexture, EGLContext eGLContext) {
        if (surfaceTexture == null) {
            return null;
        }
        return FromSurface(new Surface(surfaceTexture), eGLContext);
    }

    public static PAGSurface FromTexture(int i9, int i10, int i11, boolean z10) {
        long SetupFromTexture = SetupFromTexture(i9, i10, i11, z10, false);
        if (SetupFromTexture == 0) {
            return null;
        }
        PAGSurface pAGSurface = new PAGSurface(SetupFromTexture);
        pAGSurface.textureID = i9;
        return pAGSurface;
    }

    public static PAGSurface FromTextureForAsyncThread(int i9, int i10, int i11, boolean z10) {
        long SetupFromTexture = SetupFromTexture(i9, i10, i11, z10, true);
        if (SetupFromTexture == 0) {
            return null;
        }
        PAGSurface pAGSurface = new PAGSurface(SetupFromTexture);
        pAGSurface.textureID = i9;
        return pAGSurface;
    }
}
