package com.google.android.exoplayer2.util;

import android.opengl.GLES20;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private final int f7000a;

    /* renamed from: b  reason: collision with root package name */
    private final a[] f7001b;

    /* renamed from: c  reason: collision with root package name */
    private final b[] f7002c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, a> f7003d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, b> f7004e;

    /* loaded from: classes2.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f7005a;

        /* renamed from: b  reason: collision with root package name */
        private final int f7006b;

        /* renamed from: c  reason: collision with root package name */
        private final int f7007c;

        private a(String str, int i9, int i10) {
            this.f7005a = str;
            this.f7006b = i9;
            this.f7007c = i10;
        }

        public static a a(int i9, int i10) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i9, 35722, iArr, 0);
            byte[] bArr = new byte[iArr[0]];
            GLES20.glGetActiveAttrib(i9, i10, iArr[0], new int[1], 0, new int[1], 0, new int[1], 0, bArr, 0);
            String str = new String(bArr, 0, m.h(bArr));
            return new a(str, i10, m.f(i9, str));
        }
    }

    /* loaded from: classes2.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f7008a;

        /* renamed from: b  reason: collision with root package name */
        private final int f7009b;

        /* renamed from: c  reason: collision with root package name */
        private final int f7010c;

        /* renamed from: d  reason: collision with root package name */
        private final float[] f7011d = new float[16];

        private b(String str, int i9, int i10) {
            this.f7008a = str;
            this.f7009b = i9;
            this.f7010c = i10;
        }

        public static b a(int i9, int i10) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i9, 35719, iArr, 0);
            int[] iArr2 = new int[1];
            byte[] bArr = new byte[iArr[0]];
            GLES20.glGetActiveUniform(i9, i10, iArr[0], new int[1], 0, new int[1], 0, iArr2, 0, bArr, 0);
            String str = new String(bArr, 0, m.h(bArr));
            return new b(str, m.i(i9, str), iArr2[0]);
        }
    }

    public m(String str, String str2) {
        int glCreateProgram = GLES20.glCreateProgram();
        this.f7000a = glCreateProgram;
        GlUtil.c();
        d(glCreateProgram, 35633, str);
        d(glCreateProgram, 35632, str2);
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            GlUtil.j("Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(glCreateProgram));
        }
        GLES20.glUseProgram(glCreateProgram);
        this.f7003d = new HashMap();
        int[] iArr2 = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35721, iArr2, 0);
        this.f7001b = new a[iArr2[0]];
        for (int i9 = 0; i9 < iArr2[0]; i9++) {
            a a10 = a.a(this.f7000a, i9);
            this.f7001b[i9] = a10;
            this.f7003d.put(a10.f7005a, a10);
        }
        this.f7004e = new HashMap();
        int[] iArr3 = new int[1];
        GLES20.glGetProgramiv(this.f7000a, 35718, iArr3, 0);
        this.f7002c = new b[iArr3[0]];
        for (int i10 = 0; i10 < iArr3[0]; i10++) {
            b a11 = b.a(this.f7000a, i10);
            this.f7002c[i10] = a11;
            this.f7004e.put(a11.f7008a, a11);
        }
        GlUtil.c();
    }

    private static void d(int i9, int i10, String str) {
        int glCreateShader = GLES20.glCreateShader(i10);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            GlUtil.j(GLES20.glGetShaderInfoLog(glCreateShader) + ", source: " + str);
        }
        GLES20.glAttachShader(i9, glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        GlUtil.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int f(int i9, String str) {
        return GLES20.glGetAttribLocation(i9, str);
    }

    private int g(String str) {
        return f(this.f7000a, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int h(byte[] bArr) {
        for (int i9 = 0; i9 < bArr.length; i9++) {
            if (bArr[i9] == 0) {
                return i9;
            }
        }
        return bArr.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int i(int i9, String str) {
        return GLES20.glGetUniformLocation(i9, str);
    }

    public int e(String str) {
        int g10 = g(str);
        GLES20.glEnableVertexAttribArray(g10);
        GlUtil.c();
        return g10;
    }

    public int j(String str) {
        return i(this.f7000a, str);
    }
}
