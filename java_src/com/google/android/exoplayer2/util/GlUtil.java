package com.google.android.exoplayer2.util;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLU;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
/* loaded from: classes2.dex */
public final class GlUtil {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f6931a = false;

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f6932b = {12344};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f6933c = {12445, 13120, 12344};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f6934d = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f6935e = {12352, 4, 12324, 10, 12323, 10, 12322, 10, 12321, 2, 12325, 0, 12326, 0, 12344};

    /* loaded from: classes2.dex */
    public static final class GlException extends RuntimeException {
        public GlException(String str) {
            super(str);
        }
    }

    public static void a(int i9, int i10) {
        GLES20.glBindTexture(i9, i10);
        c();
        GLES20.glTexParameteri(i9, 10240, 9729);
        c();
        GLES20.glTexParameteri(i9, 10241, 9729);
        c();
        GLES20.glTexParameteri(i9, 10242, 33071);
        c();
        GLES20.glTexParameteri(i9, 10243, 33071);
        c();
    }

    private static void b(boolean z10, String str) {
        if (z10) {
            return;
        }
        j(str);
    }

    public static void c() {
        int i9 = 0;
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                break;
            }
            r.c("GlUtil", "glError: " + GLU.gluErrorString(glGetError));
            i9 = glGetError;
        }
        if (i9 != 0) {
            j("glError: " + GLU.gluErrorString(i9));
        }
    }

    public static FloatBuffer d(int i9) {
        return ByteBuffer.allocateDirect(i9 * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public static FloatBuffer e(float[] fArr) {
        return (FloatBuffer) d(fArr.length).put(fArr).flip();
    }

    public static int f() {
        int g10 = g();
        a(36197, g10);
        return g10;
    }

    private static int g() {
        b(!l0.c(EGL14.eglGetCurrentContext(), EGL14.EGL_NO_CONTEXT), "No current context");
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        c();
        return iArr[0];
    }

    public static boolean h(Context context) {
        String eglQueryString;
        int i9 = l0.f6985a;
        if (i9 < 24) {
            return false;
        }
        if (i9 >= 26 || !("samsung".equals(l0.f6987c) || "XT1650".equals(l0.f6988d))) {
            return (i9 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains("EGL_EXT_protected_content");
        }
        return false;
    }

    public static boolean i() {
        String eglQueryString;
        return l0.f6985a >= 17 && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains("EGL_KHR_surfaceless_context");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(String str) {
        if (!f6931a) {
            r.c("GlUtil", str);
            return;
        }
        throw new GlException(str);
    }
}
