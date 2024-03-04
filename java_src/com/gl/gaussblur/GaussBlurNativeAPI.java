package com.gl.gaussblur;

import android.opengl.GLES20;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004H\u0083 J!\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0083 J\u0011\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0006H\u0083 J\u0011\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006H\u0083 J\u0011\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0083 J \u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0007J\b\u0010\u0012\u001a\u00020\u0004H\u0007J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0006H\u0007J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006H\u0007J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0010H\u0007¨\u0006\u0017"}, d2 = {"Lcom/gl/gaussblur/GaussBlurNativeAPI;", "", "()V", "nativeReleaseResources", "", "nativeRenderGaussBlur", "", "textureId", "width", "height", "nativeSetBlurIteraions", "iterations", "nativeSetKernelSize", "kernelSize", "nativeSetSigma", "sigma", "", "process", "release", "setBlurIteraions", "setKernelSize", "setSigma", "delta", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes.dex */
public final class GaussBlurNativeAPI {
    @NotNull
    public static final GaussBlurNativeAPI INSTANCE = new GaussBlurNativeAPI();

    static {
        System.loadLibrary("GaussBlur");
    }

    private GaussBlurNativeAPI() {
    }

    @JvmStatic
    private static final native void nativeReleaseResources();

    @JvmStatic
    private static final native int nativeRenderGaussBlur(int i9, int i10, int i11);

    @JvmStatic
    private static final native void nativeSetBlurIteraions(int i9);

    @JvmStatic
    private static final native void nativeSetKernelSize(int i9);

    @JvmStatic
    private static final native void nativeSetSigma(float f10);

    @JvmStatic
    public static final int process(int i9, int i10, int i11) {
        int nativeRenderGaussBlur = nativeRenderGaussBlur(i9, i10, i11);
        int glGetError = GLES20.glGetError();
        if (glGetError == 1281 || glGetError == 1282 || nativeRenderGaussBlur == 0) {
            release();
            return i9;
        }
        return nativeRenderGaussBlur;
    }

    @JvmStatic
    public static final void release() {
        nativeReleaseResources();
    }

    @JvmStatic
    public static final void setBlurIteraions(int i9) {
        nativeSetBlurIteraions(i9);
    }

    @JvmStatic
    public static final void setKernelSize(int i9) {
        nativeSetKernelSize(i9);
    }

    @JvmStatic
    public static final void setSigma(float f10) {
        nativeSetSigma(f10);
    }
}
