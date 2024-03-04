package org.light;

import android.opengl.EGL14;
import android.opengl.EGLContext;
/* loaded from: classes7.dex */
public class LightTestCase {
    private long nativeContext = 0;

    static {
        LibraryLoadUtils.loadLibrary("light-sdk");
        nativeInit();
    }

    public static native LightTestCase Make(String str, String str2, String str3, String str4, int i9, int i10, float f10, long j10);

    public static LightTestCase Make(String str, String str2, String str3, String str4, int i9, int i10, float f10, EGLContext eGLContext) {
        if (eGLContext == null) {
            return null;
        }
        return Make(str, str2, str3, str4, i9, i10, f10, eGLContext != EGL14.EGL_NO_CONTEXT ? eGLContext.getNativeHandle() : 0L);
    }

    private native void nativeFinalize();

    private static native void nativeInit();

    private native void nativeRelease();

    protected void finalize() throws Throwable {
        super.finalize();
        nativeFinalize();
    }

    public void release() {
        nativeRelease();
    }

    public native LightTestResult run();

    public native void setFrameInterval(long j10);

    public native void setSaveResultDirectory(String str);

    public native void setSimilarityThreshold(float f10);
}
