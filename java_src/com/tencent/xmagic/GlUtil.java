package com.tencent.xmagic;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import com.facebook.internal.security.CertificateUtil;
import com.guochao.faceshow.utils.BaseConfig;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import org.light.utils.FileUtils;
import org.light.utils.LightLogUtil;
/* loaded from: classes4.dex */
public class GlUtil {
    public static final float[] IDENTITY_MATRIX;
    private static final int SIZEOF_FLOAT = 4;
    private static final String TAG = "com.tencent.xmagic.GlUtil";

    static {
        float[] fArr = new float[16];
        IDENTITY_MATRIX = fArr;
        Matrix.setIdentityM(fArr, 0);
    }

    private GlUtil() {
    }

    public static void bindTexture(Bitmap bitmap, int i9) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        GLES20.glBindTexture(3553, i9);
        GLES20.glTexParameterf(3553, 10241, 9728.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        GLUtils.texImage2D(3553, 0, bitmap, 0);
    }

    public static void checkGlError(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            LightLogUtil.e("render", str + ": glError 0x" + Integer.toHexString(glGetError));
        }
    }

    public static void checkLocation(int i9, String str) {
        if (i9 >= 0) {
            return;
        }
        throw new RuntimeException("Unable to locate '" + str + "' in program");
    }

    public static FloatBuffer createFloatBuffer(float[] fArr) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(fArr.length * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        asFloatBuffer.put(fArr);
        asFloatBuffer.position(0);
        return asFloatBuffer;
    }

    public static int createOESTexture() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameterf(36197, 10241, 9729.0f);
        GLES20.glTexParameterf(36197, 10240, 9729.0f);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        return iArr[0];
    }

    public static int createProgram(String str, String str2) {
        int loadShader;
        int loadShader2 = loadShader(35633, str);
        if (loadShader2 == 0 || (loadShader = loadShader(35632, str2)) == 0) {
            return 0;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        checkGlError("glCreateProgram");
        if (glCreateProgram == 0) {
            LightLogUtil.e("GLUtil", "Could not create program");
        }
        GLES20.glAttachShader(glCreateProgram, loadShader2);
        checkGlError("glAttachShader");
        GLES20.glAttachShader(glCreateProgram, loadShader);
        checkGlError("glAttachShader");
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            LightLogUtil.e("GLUtil", "Could not link program: ");
            LightLogUtil.e("GLUtil", GLES20.glGetProgramInfoLog(glCreateProgram));
            GLES20.glDeleteProgram(glCreateProgram);
            return 0;
        }
        return glCreateProgram;
    }

    public static int createTexture(ByteBuffer byteBuffer, int i9, int i10, int i11) {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i12 = iArr[0];
        checkGlError("glGenTextures");
        GLES20.glBindTexture(3553, i12);
        GLES20.glTexParameteri(3553, 10241, 9729);
        GLES20.glTexParameteri(3553, 10240, 9729);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        checkGlError("loadImageTexture");
        GLES20.glTexImage2D(3553, 0, i11, i9, i10, 0, i11, 5121, byteBuffer);
        checkGlError("loadImageTexture");
        GLES20.glBindTexture(3553, 0);
        return i12;
    }

    public static int loadShader(int i9, String str) {
        int glCreateShader = GLES20.glCreateShader(i9);
        checkGlError("glCreateShader type=" + i9);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] == 0) {
            LightLogUtil.e("GLUtil", "Could not compile shader " + i9 + CertificateUtil.DELIMITER);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" ");
            sb2.append(GLES20.glGetShaderInfoLog(glCreateShader));
            LightLogUtil.e("GLUtil", sb2.toString());
            GLES20.glDeleteShader(glCreateShader);
            return 0;
        }
        return glCreateShader;
    }

    public static void logVersionInfo() {
        LightLogUtil.e("GLUtil", "vendor  : " + GLES20.glGetString(7936));
        LightLogUtil.e("GLUtil", "renderer: " + GLES20.glGetString(7937));
        LightLogUtil.e("GLUtil", "version : " + GLES20.glGetString(7938));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0085 A[Catch: IOException -> 0x0081, TryCatch #5 {IOException -> 0x0081, blocks: (B:44:0x007d, B:48:0x0085, B:50:0x008a), top: B:55:0x007d }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x008a A[Catch: IOException -> 0x0081, TRY_LEAVE, TryCatch #5 {IOException -> 0x0081, blocks: (B:44:0x007d, B:48:0x0085, B:50:0x008a), top: B:55:0x007d }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x007d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v0, types: [int] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.io.Reader, java.io.InputStreamReader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String readShaderFromResource(android.content.Context r5, int r6) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 0
            android.content.res.Resources r5 = r5.getResources()     // Catch: java.lang.Throwable -> L52 java.io.IOException -> L56
            java.io.InputStream r5 = r5.openRawResource(r6)     // Catch: java.lang.Throwable -> L52 java.io.IOException -> L56
            java.io.InputStreamReader r6 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4d
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4d
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L41 java.io.IOException -> L44
            r2.<init>(r6)     // Catch: java.lang.Throwable -> L41 java.io.IOException -> L44
        L18:
            java.lang.String r1 = r2.readLine()     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L79
            if (r1 == 0) goto L33
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L79
            r3.<init>()     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L79
            r3.append(r1)     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L79
            java.lang.String r1 = "\n"
            r3.append(r1)     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L79
            java.lang.String r1 = r3.toString()     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L79
            r0.append(r1)     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L79
            goto L18
        L33:
            if (r5 == 0) goto L38
            r5.close()     // Catch: java.io.IOException -> L64
        L38:
            r6.close()     // Catch: java.io.IOException -> L64
            r2.close()     // Catch: java.io.IOException -> L64
            goto L74
        L3f:
            r1 = move-exception
            goto L5b
        L41:
            r0 = move-exception
            r2 = r1
            goto L7a
        L44:
            r2 = move-exception
            r4 = r2
            r2 = r1
            r1 = r4
            goto L5b
        L49:
            r0 = move-exception
            r6 = r1
            r2 = r6
            goto L7a
        L4d:
            r6 = move-exception
            r2 = r1
            r1 = r6
            r6 = r2
            goto L5b
        L52:
            r0 = move-exception
            r6 = r1
            r2 = r6
            goto L7b
        L56:
            r5 = move-exception
            r6 = r1
            r2 = r6
            r1 = r5
            r5 = r2
        L5b:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L79
            if (r5 == 0) goto L66
            r5.close()     // Catch: java.io.IOException -> L64
            goto L66
        L64:
            r5 = move-exception
            goto L71
        L66:
            if (r6 == 0) goto L6b
            r6.close()     // Catch: java.io.IOException -> L64
        L6b:
            if (r2 == 0) goto L74
            r2.close()     // Catch: java.io.IOException -> L64
            goto L74
        L71:
            r5.printStackTrace()
        L74:
            java.lang.String r5 = r0.toString()
            return r5
        L79:
            r0 = move-exception
        L7a:
            r1 = r5
        L7b:
            if (r1 == 0) goto L83
            r1.close()     // Catch: java.io.IOException -> L81
            goto L83
        L81:
            r5 = move-exception
            goto L8e
        L83:
            if (r6 == 0) goto L88
            r6.close()     // Catch: java.io.IOException -> L81
        L88:
            if (r2 == 0) goto L91
            r2.close()     // Catch: java.io.IOException -> L81
            goto L91
        L8e:
            r5.printStackTrace()
        L91:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.xmagic.GlUtil.readShaderFromResource(android.content.Context, int):java.lang.String");
    }

    public static Bitmap readTexture(int i9, int i10, int i11) {
        System.currentTimeMillis();
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        GLES20.glBindFramebuffer(36160, iArr[0]);
        checkGlError("glBindFramebuffer");
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i9, 0);
        checkGlError("glFramebufferTexture2D");
        ByteBuffer wrap = ByteBuffer.wrap(new byte[i10 * i11 * 4]);
        GLES20.glPixelStorei(BaseConfig.INTERESTS_HOBBIES_THREE, 1);
        GLES20.glReadPixels(0, 0, i10, i11, 6408, 5121, wrap);
        checkGlError("glReadPixels");
        Bitmap createBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        createBitmap.copyPixelsFromBuffer(wrap);
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glDeleteFramebuffers(1, iArr, 0);
        checkGlError("glBindFramebuffer");
        return createBitmap;
    }

    public static void saveBitmapToDisk(Bitmap bitmap, String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File("/sdcard/" + str + FileUtils.PIC_POSTFIX_PNG));
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void saveTexture(int i9, int i10, int i11, String str) {
        saveBitmapToDisk(readTexture(i9, i10, i11), str);
    }

    public static int createTexture(int i9, int i10, int i11) {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        GLES20.glBindTexture(3553, iArr[0]);
        GLES20.glTexImage2D(3553, 0, i11, i9, i10, 0, 6408, 5121, null);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        GLES20.glBindTexture(3553, 0);
        return iArr[0];
    }

    public static int createTexture(Bitmap bitmap) {
        int[] iArr = new int[1];
        if (bitmap == null || bitmap.isRecycled()) {
            return 0;
        }
        GLES20.glGenTextures(1, iArr, 0);
        GLES20.glBindTexture(3553, iArr[0]);
        GLES20.glTexParameterf(3553, 10241, 9728.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        GLUtils.texImage2D(3553, 0, bitmap, 0);
        return iArr[0];
    }
}
