package org.light.utils;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.os.Process;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import org.light.NativeBuffer;
/* loaded from: classes7.dex */
public class LightGLUtils {
    private static final String TAG = "LightGLUtils";

    public static void checkProcessFence() {
        try {
            int myPid = Process.myPid();
            File[] listFiles = new File("/proc/" + myPid + "/fd/").listFiles();
            int length = listFiles == null ? 0 : listFiles.length;
            LightLogUtil.w(TAG, "process pid:" + myPid + ",fd:" + length);
        } catch (Throwable th2) {
            LightLogUtil.e(TAG, "read process fd exception:" + th2);
        }
    }

    public static int createTexture(int i9) {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        GLES20.glBindTexture(i9, iArr[0]);
        GLES20.glTexParameteri(i9, 10242, 33071);
        GLES20.glTexParameteri(i9, 10243, 33071);
        GLES20.glTexParameteri(i9, 10241, 9729);
        GLES20.glTexParameteri(i9, 10240, 9729);
        return iArr[0];
    }

    public static void deleteTexture(int i9) {
        GLES20.glDeleteTextures(1, new int[]{i9}, 0);
    }

    public static void saveBitmap2JPG(Bitmap bitmap, String str) {
        try {
            File file = new File(str);
            File parentFile = file.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            if (!file.exists()) {
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            if (bitmap != null) {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.flush();
            }
        } catch (Exception | OutOfMemoryError unused) {
        }
    }

    public static void saveNativeBuffer2Jpg(NativeBuffer nativeBuffer, String str) {
        saveBitmap2JPG(saveTexture2Bitmap(nativeBuffer.getBindTexture(), 3553, nativeBuffer.getBufferWidth(), nativeBuffer.getBufferHeight()), str);
    }

    public static Bitmap saveTexture2Bitmap(int i9, int i10, int i11, int i12) {
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        GLES20.glBindFramebuffer(36160, iArr[0]);
        GLES20.glFramebufferTexture2D(36160, 36064, i10, i9, 0);
        ByteBuffer allocate = ByteBuffer.allocate(i11 * i12 * 4);
        GLES20.glReadPixels(0, 0, i11, i12, 6408, 5121, allocate);
        Bitmap createBitmap = Bitmap.createBitmap(i11, i12, Bitmap.Config.ARGB_8888);
        allocate.position(0);
        createBitmap.copyPixelsFromBuffer(allocate);
        GLES20.glDeleteFramebuffers(1, iArr, 0);
        return createBitmap;
    }

    public static void saveTexture2Jpg(int i9, int i10, int i11, String str) {
        saveBitmap2JPG(saveTexture2Bitmap(i9, 3553, i10, i11), str);
    }

    public static void saveTexture2Jpg(int i9, int i10, int i11, int i12, String str) {
        saveBitmap2JPG(saveTexture2Bitmap(i9, i10, i11, i12), str);
    }
}
