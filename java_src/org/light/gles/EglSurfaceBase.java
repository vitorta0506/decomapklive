package org.light.gles;

import android.graphics.Bitmap;
import android.opengl.EGL14;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes7.dex */
class EglSurfaceBase {
    protected static final String TAG = "EglSurfaceBase";
    protected EglCore mEglCore;
    private EGLSurface mEGLSurface = EGL14.EGL_NO_SURFACE;
    private int mWidth = -1;
    private int mHeight = -1;

    /* JADX INFO: Access modifiers changed from: protected */
    public EglSurfaceBase(EglCore eglCore) {
        this.mEglCore = eglCore;
    }

    private void checkGlError(String str) {
        if (GLES20.glGetError() != 0) {
            Thread.getAllStackTraces().get(Thread.currentThread());
        }
    }

    public void createOffscreenSurface(int i9, int i10) {
        if (this.mEGLSurface == EGL14.EGL_NO_SURFACE) {
            this.mEGLSurface = this.mEglCore.createOffscreenSurface(i9, i10);
            this.mWidth = i9;
            this.mHeight = i10;
            return;
        }
        throw new IllegalStateException("surface already created");
    }

    public void createWindowSurface(Object obj) {
        if (this.mEGLSurface == EGL14.EGL_NO_SURFACE) {
            this.mEGLSurface = this.mEglCore.createWindowSurface(obj);
            return;
        }
        throw new IllegalStateException("surface already created");
    }

    public int getHeight() {
        int i9 = this.mHeight;
        return i9 < 0 ? this.mEglCore.querySurface(this.mEGLSurface, 12374) : i9;
    }

    public int getWidth() {
        int i9 = this.mWidth;
        return i9 < 0 ? this.mEglCore.querySurface(this.mEGLSurface, 12375) : i9;
    }

    public void makeCurrent() {
        this.mEglCore.makeCurrent(this.mEGLSurface);
    }

    public void makeCurrentReadFrom(EglSurfaceBase eglSurfaceBase) {
        this.mEglCore.makeCurrent(this.mEGLSurface, eglSurfaceBase.mEGLSurface);
    }

    public void releaseEglSurface() {
        this.mEglCore.releaseSurface(this.mEGLSurface);
        this.mEGLSurface = EGL14.EGL_NO_SURFACE;
        this.mHeight = -1;
        this.mWidth = -1;
    }

    public void saveFrame(File file) throws IOException {
        if (this.mEglCore.isCurrent(this.mEGLSurface)) {
            String file2 = file.toString();
            int width = getWidth();
            int height = getHeight();
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(width * height * 4);
            allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
            GLES20.glReadPixels(0, 0, width, height, 6408, 5121, allocateDirect);
            checkGlError("glReadPixels");
            allocateDirect.rewind();
            BufferedOutputStream bufferedOutputStream = null;
            try {
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file2));
                try {
                    Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                    createBitmap.copyPixelsFromBuffer(allocateDirect);
                    createBitmap.compress(Bitmap.CompressFormat.PNG, 90, bufferedOutputStream2);
                    createBitmap.recycle();
                    bufferedOutputStream2.close();
                } catch (Throwable th2) {
                    th = th2;
                    bufferedOutputStream = bufferedOutputStream2;
                    if (bufferedOutputStream != null) {
                        bufferedOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            throw new RuntimeException("Expected EGL context/surface is not current");
        }
    }

    public void setPresentationTime(long j10) {
        this.mEglCore.setPresentationTime(this.mEGLSurface, j10);
    }

    public boolean swapBuffers() {
        return this.mEglCore.swapBuffers(this.mEGLSurface);
    }
}
