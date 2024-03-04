package com.tencent.liteav.videobase.utils;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Point;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.videobase.base.GLConstants;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class OpenGlUtils {
    private static final String TAG = "OpenGlUtils";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.videobase.utils.OpenGlUtils$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f31874a;

        static {
            int[] iArr = new int[Rotation.values().length];
            f31874a = iArr;
            try {
                iArr[Rotation.ROTATION_90.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31874a[Rotation.ROTATION_180.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31874a[Rotation.ROTATION_270.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31874a[Rotation.NORMAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static void attachTextureToFrameBuffer(int i9, int i10) {
        GLES20.glBindFramebuffer(36160, i10);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i9, 0);
        GLES20.glBindFramebuffer(36160, 0);
    }

    public static void bindFramebuffer(int i9, int i10) {
        GLES20.glBindFramebuffer(i9, i10);
    }

    public static void bindTexture(int i9, int i10) {
        GLES20.glBindTexture(i9, i10);
    }

    public static void checkGlError(String str) {
    }

    public static void convertYuvFormat(GLConstants.PixelFormatType pixelFormatType, Object obj, GLConstants.PixelFormatType pixelFormatType2, Object obj2, int i9, int i10) {
        boolean nativeConvertYuvFormatArrayToArray;
        int value = pixelFormatType.getValue();
        int value2 = pixelFormatType2.getValue();
        boolean z10 = obj instanceof ByteBuffer;
        if (z10 && (obj2 instanceof ByteBuffer)) {
            nativeConvertYuvFormatArrayToArray = nativeConvertYuvFormatBufferToBuffer(value, (ByteBuffer) obj, value2, (ByteBuffer) obj2, i9, i10);
        } else if (z10 && (obj2 instanceof byte[])) {
            nativeConvertYuvFormatArrayToArray = nativeConvertYuvFormatBufferToArray(value, (ByteBuffer) obj, value2, (byte[]) obj2, i9, i10);
        } else if ((obj instanceof byte[]) && (obj2 instanceof ByteBuffer)) {
            nativeConvertYuvFormatArrayToArray = nativeConvertYuvFormatArrayToBuffer(value, (byte[]) obj, value2, (ByteBuffer) obj2, i9, i10);
        } else {
            nativeConvertYuvFormatArrayToArray = nativeConvertYuvFormatArrayToArray(value, (byte[]) obj, value2, (byte[]) obj2, i9, i10);
        }
        if (nativeConvertYuvFormatArrayToArray) {
            return;
        }
        throw new IllegalArgumentException("Do not support " + pixelFormatType + " to " + pixelFormatType2);
    }

    public static FloatBuffer createNormalCubeVerticesBuffer() {
        float[] fArr = GLConstants.f31729c;
        return (FloatBuffer) ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr).position(0);
    }

    public static int createTexture(int i9, int i10, int i11, int i12) {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        LiteavLog.d(TAG, "glGenTextures textureId: " + iArr[0]);
        GLES20.glBindTexture(3553, iArr[0]);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        GLES20.glTexImage2D(3553, 0, i11, i9, i10, 0, i12, 5121, null);
        return iArr[0];
    }

    public static FloatBuffer createTextureCoordsBuffer(Rotation rotation, boolean z10, boolean z11) {
        float[] fArr = GLConstants.f31730d;
        float[] fArr2 = new float[fArr.length];
        initTextureCoordsBuffer(fArr2, rotation, z10, z11);
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        asFloatBuffer.put(fArr2).position(0);
        return asFloatBuffer;
    }

    public static void deleteFrameBuffer(int i9) {
        if (i9 != -1) {
            GLES20.glDeleteFramebuffers(1, new int[]{i9}, 0);
        }
    }

    public static void deleteShaderId(int i9) {
        if (i9 != -1) {
            GLES20.glDeleteShader(i9);
        }
    }

    public static void deleteTexture(int i9) {
        if (i9 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i9}, 0);
        }
    }

    public static void detachTextureFromFrameBuffer(int i9) {
        GLES20.glBindFramebuffer(36160, i9);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, 0, 0);
        GLES20.glBindFramebuffer(36160, 0);
    }

    private static float flip(float f10) {
        return f10 == 0.0f ? 1.0f : 0.0f;
    }

    public static int generateFrameBufferId() {
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        return iArr[0];
    }

    public static int generateTextureOES() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameterf(36197, 10241, 9729.0f);
        GLES20.glTexParameterf(36197, 10240, 9729.0f);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        return iArr[0];
    }

    @CalledByNative
    public static Object getCurrentContext() {
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 17) {
            return EGL14.eglGetCurrentContext();
        }
        return ((EGL10) EGLContext.getEGL()).eglGetCurrentContext();
    }

    public static void glViewport(int i9, int i10, int i11, int i12) {
        GLES20.glViewport(i9, i10, i11, i12);
    }

    public static void initTextureCoordsBuffer(float[] fArr, Rotation rotation, boolean z10, boolean z11) {
        float[] fArr2 = GLConstants.f31730d;
        if (rotation != null) {
            int i9 = AnonymousClass1.f31874a[rotation.ordinal()];
            if (i9 == 1) {
                fArr2 = GLConstants.f31732f;
            } else if (i9 == 2) {
                fArr2 = GLConstants.f31733g;
            } else if (i9 == 3) {
                fArr2 = GLConstants.f31731e;
            }
        }
        System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
        if (z10) {
            fArr[0] = flip(fArr[0]);
            fArr[2] = flip(fArr[2]);
            fArr[4] = flip(fArr[4]);
            fArr[6] = flip(fArr[6]);
        }
        if (z11) {
            fArr[1] = flip(fArr[1]);
            fArr[3] = flip(fArr[3]);
            fArr[5] = flip(fArr[5]);
            fArr[7] = flip(fArr[7]);
        }
    }

    public static int loadTexture(Bitmap bitmap, int i9, boolean z10) {
        int[] iArr = new int[1];
        if (i9 == -1) {
            GLES20.glGenTextures(1, iArr, 0);
            LiteavLog.d(TAG, "glGenTextures textureId: " + iArr[0]);
            bindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLUtils.texImage2D(3553, 0, bitmap, 0);
        } else {
            bindTexture(3553, i9);
            GLUtils.texSubImage2D(3553, 0, 0, 0, bitmap);
            iArr[0] = i9;
        }
        if (z10) {
            bitmap.recycle();
        }
        return iArr[0];
    }

    public static void loadYuv420DataToTextures(ByteBuffer byteBuffer, int i9, int i10, int i11, int[] iArr) {
        if (byteBuffer.isDirect()) {
            nativeLoadYuv420ByteBufferToTextures(byteBuffer, i9, i10, i11, iArr);
        } else {
            nativeLoadYuv420ByteArrayToTextures(byteBuffer.array(), i9, i10, i11, iArr);
        }
    }

    private static native boolean nativeConvertYuvFormatArrayToArray(int i9, byte[] bArr, int i10, byte[] bArr2, int i11, int i12);

    private static native boolean nativeConvertYuvFormatArrayToBuffer(int i9, byte[] bArr, int i10, ByteBuffer byteBuffer, int i11, int i12);

    private static native boolean nativeConvertYuvFormatBufferToArray(int i9, ByteBuffer byteBuffer, int i10, byte[] bArr, int i11, int i12);

    private static native boolean nativeConvertYuvFormatBufferToBuffer(int i9, ByteBuffer byteBuffer, int i10, ByteBuffer byteBuffer2, int i11, int i12);

    public static native void nativeCopyDataFromByteArrayToByteBuffer(byte[] bArr, ByteBuffer byteBuffer, int i9);

    public static native void nativeCopyDataFromByteBufferToByteArray(ByteBuffer byteBuffer, byte[] bArr, int i9);

    public static native void nativeCopyDataFromByteBufferToByteBuffer(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, int i9);

    private static native void nativeLoadYuv420ByteArrayToTextures(byte[] bArr, int i9, int i10, int i11, int[] iArr);

    private static native void nativeLoadYuv420ByteBufferToTextures(ByteBuffer byteBuffer, int i9, int i10, int i11, int[] iArr);

    public static void readPixels(int i9, int i10, int i11, int i12, Object obj) {
        if (obj instanceof Buffer) {
            Buffer buffer = (Buffer) obj;
            buffer.position(0);
            GLES20.glReadPixels(i9, i10, i11, i12, 6408, 5121, buffer);
        } else if (obj instanceof byte[]) {
            GLES20.glReadPixels(i9, i10, i11, i12, 6408, 5121, ByteBuffer.wrap((byte[]) obj));
        } else {
            LiteavLog.e(TAG, "read pixels failed due to unsupport object. ".concat(String.valueOf(obj)));
        }
    }

    public static Point reverseMappingPoint(GLConstants.GLScaleType gLScaleType, Rotation rotation, Point point, q qVar, q qVar2) {
        float f10 = (qVar2.f31029a * 1.0f) / qVar.f31029a;
        float f11 = (qVar2.f31030b * 1.0f) / qVar.f31030b;
        Matrix matrix = new Matrix();
        matrix.setTranslate((-qVar.f31029a) / 2.0f, (-qVar.f31030b) / 2.0f);
        if (gLScaleType == GLConstants.GLScaleType.CENTER_CROP) {
            float min = Math.min(f10, f11);
            matrix.postScale(min, min);
        } else if (gLScaleType == GLConstants.GLScaleType.FILL) {
            matrix.postScale(f10, f11);
        } else if (gLScaleType == GLConstants.GLScaleType.FIT_CENTER) {
            float max = Math.max(f10, f11);
            matrix.postScale(max, max);
        }
        matrix.postRotate(360 - rotation.mValue);
        if (rotation != Rotation.ROTATION_90 && rotation != Rotation.ROTATION_270) {
            matrix.postTranslate(qVar2.f31029a / 2.0f, qVar2.f31030b / 2.0f);
        } else {
            matrix.postTranslate(qVar2.f31030b / 2.0f, qVar2.f31029a / 2.0f);
        }
        float[] fArr = new float[2];
        matrix.mapPoints(fArr, new float[]{point.x, point.y});
        return new Point((int) fArr[0], (int) fArr[1]);
    }

    public static int loadTexture(int i9, Buffer buffer, int i10, int i11, int i12) {
        int[] iArr = new int[1];
        if (i12 == -1) {
            GLES20.glGenTextures(1, iArr, 0);
            LiteavLog.d(TAG, "glGenTextures textureId: " + iArr[0]);
            bindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLES20.glTexImage2D(3553, 0, i9, i10, i11, 0, i9, 5121, buffer);
        } else {
            bindTexture(3553, i12);
            GLES20.glTexSubImage2D(3553, 0, 0, 0, i10, i11, i9, 5121, buffer);
            iArr[0] = i12;
        }
        return iArr[0];
    }
}
