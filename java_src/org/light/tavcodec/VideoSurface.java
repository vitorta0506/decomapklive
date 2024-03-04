package org.light.tavcodec;

import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.view.Surface;
import java.lang.reflect.Field;
/* loaded from: classes7.dex */
public class VideoSurface implements SurfaceTexture.OnFrameAvailableListener {
    private static int HandlerThreadCount;
    private static final Object handlerLock = new Object();
    private static HandlerThread handlerThread;
    private Surface outputSurface;
    private SurfaceTexture surfaceTexture;
    private int width = 0;
    private int height = 0;
    private final Object frameSyncObject = new Object();
    private boolean frameAvailable = false;
    private boolean released = false;

    private static VideoSurface Make(int i9, int i10) {
        VideoSurface videoSurface = new VideoSurface();
        videoSurface.width = i9;
        videoSurface.height = i10;
        synchronized (handlerLock) {
            StartHandlerThread();
            if (Build.VERSION.SDK_INT >= 26) {
                videoSurface.surfaceTexture = new SurfaceTexture(false);
            } else {
                SurfaceTexture surfaceTexture = new SurfaceTexture(0);
                videoSurface.surfaceTexture = surfaceTexture;
                surfaceTexture.detachFromGLContext();
            }
            videoSurface.surfaceTexture.setOnFrameAvailableListener(videoSurface, new Handler(handlerThread.getLooper()));
        }
        videoSurface.outputSurface = new Surface(videoSurface.surfaceTexture);
        return videoSurface;
    }

    private static synchronized void StartHandlerThread() {
        synchronized (VideoSurface.class) {
            HandlerThreadCount++;
            if (handlerThread == null) {
                HandlerThread handlerThread2 = new HandlerThread("tavcodec_VideoSurface");
                handlerThread = handlerThread2;
                handlerThread2.start();
            }
        }
    }

    private boolean attachToGLContext(int i9) {
        try {
            this.surfaceTexture.attachToGLContext(i9);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private void detachFromGLContext() {
        try {
            this.surfaceTexture.detachFromGLContext();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private Surface getOutputSurface() {
        return this.outputSurface;
    }

    private void onRelease() {
        if (this.released) {
            return;
        }
        this.released = true;
        synchronized (handlerLock) {
            int i9 = HandlerThreadCount - 1;
            HandlerThreadCount = i9;
            if (i9 == 0) {
                handlerThread.quit();
                handlerThread = null;
            }
        }
        Surface surface = this.outputSurface;
        if (surface != null) {
            surface.release();
            this.outputSurface = null;
        }
        SurfaceTexture surfaceTexture = this.surfaceTexture;
        if (surfaceTexture != null) {
            surfaceTexture.release();
            this.surfaceTexture = null;
        }
    }

    private void reflectLooper() {
        Class<?> cls;
        Class<?>[] declaredClasses = SurfaceTexture.class.getDeclaredClasses();
        int length = declaredClasses.length;
        int i9 = 0;
        while (true) {
            if (i9 >= length) {
                cls = null;
                break;
            }
            cls = declaredClasses[i9];
            if (cls.getName().toLowerCase().contains("handler")) {
                break;
            }
            i9++;
        }
        if (cls == null) {
            return;
        }
        try {
            Object newInstance = cls.getConstructor(SurfaceTexture.class, Looper.class).newInstance(this.surfaceTexture, handlerThread.getLooper());
            Field declaredField = this.surfaceTexture.getClass().getDeclaredField("mEventHandler");
            declaredField.setAccessible(true);
            declaredField.set(this.surfaceTexture, newInstance);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean updateTexImage() {
        synchronized (this.frameSyncObject) {
            int i9 = 10;
            while (!this.frameAvailable && i9 > 0) {
                i9--;
                try {
                    this.frameSyncObject.wait(50L);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
            this.frameAvailable = false;
            if (i9 == 0) {
                return false;
            }
            try {
                this.surfaceTexture.updateTexImage();
                return true;
            } catch (Exception e11) {
                e11.printStackTrace();
                return false;
            }
        }
    }

    private int videoHeight() {
        float[] fArr = new float[16];
        this.surfaceTexture.getTransformMatrix(fArr);
        float abs = Math.abs(fArr[5]);
        if (abs > 0.0f) {
            return Math.round(this.height / (abs + ((fArr[13] - abs) * 2.0f)));
        }
        return this.height;
    }

    private int videoWidth() {
        float[] fArr = new float[16];
        this.surfaceTexture.getTransformMatrix(fArr);
        float abs = Math.abs(fArr[0]);
        if (abs > 0.0f) {
            return Math.round(this.width / (abs + (fArr[12] * 2.0f)));
        }
        return this.width;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this.frameSyncObject) {
            if (this.frameAvailable) {
                new RuntimeException("frameAvailable already set, frame could be dropped").printStackTrace();
                return;
            }
            this.frameAvailable = true;
            this.frameSyncObject.notifyAll();
        }
    }
}
