package com.tencent.liteav.videobase.utils;

import android.opengl.GLES20;
/* loaded from: classes4.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final String f31900a;

    /* renamed from: b  reason: collision with root package name */
    public final String f31901b;

    public i(String str, String str2) {
        this.f31900a = str;
        this.f31901b = str2;
    }

    public static int a(String str, int i9) {
        int[] iArr = new int[1];
        int glCreateShader = GLES20.glCreateShader(i9);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] == 0) {
            OpenGlUtils.checkGlError("glCompileShader");
            GLES20.glDeleteShader(glCreateShader);
            return 0;
        }
        return glCreateShader;
    }
}
