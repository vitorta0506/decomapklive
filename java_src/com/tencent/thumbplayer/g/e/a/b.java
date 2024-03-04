package com.tencent.thumbplayer.g.e.a;

import android.opengl.GLES20;
import android.opengl.Matrix;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f34069a;

    /* renamed from: b  reason: collision with root package name */
    private FloatBuffer f34070b;

    /* renamed from: e  reason: collision with root package name */
    private int f34073e;

    /* renamed from: g  reason: collision with root package name */
    private int f34075g;

    /* renamed from: h  reason: collision with root package name */
    private int f34076h;

    /* renamed from: i  reason: collision with root package name */
    private int f34077i;

    /* renamed from: j  reason: collision with root package name */
    private int f34078j;

    /* renamed from: c  reason: collision with root package name */
    private float[] f34071c = new float[16];

    /* renamed from: d  reason: collision with root package name */
    private float[] f34072d = new float[16];

    /* renamed from: f  reason: collision with root package name */
    private int f34074f = -12345;

    public b() {
        float[] fArr = {-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
        this.f34069a = fArr;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f34070b = asFloatBuffer;
        asFloatBuffer.put(fArr).position(0);
        Matrix.setIdentityM(this.f34072d, 0);
    }

    private int a(int i9, String str) {
        int glCreateShader = GLES20.glCreateShader(i9);
        a("glCreateShader type=".concat(String.valueOf(i9)));
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] == 0) {
            Log.e("TextureRender", "Could not compile shader " + i9 + CertificateUtil.DELIMITER);
            StringBuilder sb2 = new StringBuilder(" ");
            sb2.append(GLES20.glGetShaderInfoLog(glCreateShader));
            Log.e("TextureRender", sb2.toString());
            GLES20.glDeleteShader(glCreateShader);
            return 0;
        }
        return glCreateShader;
    }

    private int a(String str, String str2) {
        int a10;
        int a11 = a(35633, str);
        if (a11 == 0 || (a10 = a(35632, str2)) == 0) {
            return 0;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        a("glCreateProgram");
        if (glCreateProgram == 0) {
            Log.e("TextureRender", "Could not create program");
        }
        GLES20.glAttachShader(glCreateProgram, a11);
        a("glAttachShader");
        GLES20.glAttachShader(glCreateProgram, a10);
        a("glAttachShader");
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            Log.e("TextureRender", "Could not link program: ");
            Log.e("TextureRender", GLES20.glGetProgramInfoLog(glCreateProgram));
            GLES20.glDeleteProgram(glCreateProgram);
            return 0;
        }
        return glCreateProgram;
    }

    public int a() {
        return this.f34074f;
    }

    public void a(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError == 0) {
            return;
        }
        Log.e("TextureRender", str + ": glError " + glGetError);
        throw new RuntimeException(str + ": glError " + glGetError);
    }

    public void b() {
        int a10 = a("uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
        this.f34073e = a10;
        if (a10 == 0) {
            throw new RuntimeException("failed creating program");
        }
        this.f34077i = GLES20.glGetAttribLocation(a10, "aPosition");
        a("glGetAttribLocation aPosition");
        if (this.f34077i == -1) {
            throw new RuntimeException("Could not get attrib location for aPosition");
        }
        this.f34078j = GLES20.glGetAttribLocation(this.f34073e, "aTextureCoord");
        a("glGetAttribLocation aTextureCoord");
        if (this.f34078j == -1) {
            throw new RuntimeException("Could not get attrib location for aTextureCoord");
        }
        this.f34075g = GLES20.glGetUniformLocation(this.f34073e, "uMVPMatrix");
        a("glGetUniformLocation uMVPMatrix");
        if (this.f34075g == -1) {
            throw new RuntimeException("Could not get attrib location for uMVPMatrix");
        }
        this.f34076h = GLES20.glGetUniformLocation(this.f34073e, "uSTMatrix");
        a("glGetUniformLocation uSTMatrix");
        if (this.f34076h == -1) {
            throw new RuntimeException("Could not get attrib location for uSTMatrix");
        }
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i9 = iArr[0];
        this.f34074f = i9;
        GLES20.glBindTexture(36197, i9);
        a("glBindTexture mTextureID");
        GLES20.glTexParameterf(36197, 10241, 9728.0f);
        GLES20.glTexParameterf(36197, 10240, 9729.0f);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        a("glTexParameter");
    }
}
