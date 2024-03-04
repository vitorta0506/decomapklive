package org.light;

import android.hardware.HardwareBuffer;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class NativeBuffer {
    private static final int EGL_NO_NATIVE_FENCE_FD_ANDROID = -1;
    private static final String TAG = "NativeBuffer";
    private static boolean available = false;
    private static ILightSDKServiceInterface lightSDKServiceInterface;
    private HardwareBuffer buffer;
    private boolean eglFenceEnabled;
    private long nativeContext;

    static {
        try {
            available = available();
        } catch (Throwable th2) {
            LightLogUtil.e(TAG, "NativeBuffer available() error:" + th2);
        }
        LightLogUtil.d(TAG, "NativeBuffer available():" + available);
        if (available) {
            return;
        }
        LightLogUtil.e(TAG, "NativeBuffer not available");
    }

    public NativeBuffer(HardwareBuffer hardwareBuffer) {
        this.nativeContext = 0L;
        this.buffer = null;
        this.eglFenceEnabled = false;
        LightLogUtil.d(TAG, "create from buffer");
        this.nativeContext = createFromBuffer(hardwareBuffer);
        this.buffer = hardwareBuffer;
        init();
    }

    private static native boolean available();

    private native boolean bindTexture(long j10, int i9);

    private native long create(int i9, int i10);

    private static native int createEGLFence();

    private native long createFromBuffer(HardwareBuffer hardwareBuffer);

    private native void destroy(long j10);

    private native int getBindTexture(long j10);

    private native HardwareBuffer getBuffer(long j10);

    private native int getHeight(long j10);

    private native int getWidth(long j10);

    private void init() {
        boolean isFenceEnabled = isFenceEnabled();
        this.eglFenceEnabled = isFenceEnabled;
        if (lightSDKServiceInterface != null) {
            setEglFenceEnabled(isFenceEnabled);
        }
    }

    public static boolean isAvailable() {
        return available;
    }

    private static native boolean isEglFenceEnabled();

    public static boolean isFenceEnabled() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.nativeBufferIsEglFenceEnabled();
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
            }
        }
        return isEglFenceEnabled();
    }

    private native boolean resize(long j10, int i9, int i10);

    private static native void setEglFenceEnabled(boolean z10);

    public static void setFenceEnabled(boolean z10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.nativeBufferSetEglFenceEnabled(z10);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
            }
        }
        setEglFenceEnabled(z10);
    }

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
    }

    private static native boolean waitEGLFence(int i9);

    public boolean bindTexture(int i9) {
        long j10 = this.nativeContext;
        if (j10 != 0) {
            return bindTexture(j10, i9);
        }
        return false;
    }

    public ParcelFileDescriptor createFence() {
        int createEGLFence;
        if (this.eglFenceEnabled && (createEGLFence = createEGLFence()) != -1) {
            return ParcelFileDescriptor.adoptFd(createEGLFence);
        }
        return null;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        release();
    }

    public int getBindTexture() {
        long j10 = this.nativeContext;
        if (j10 != 0) {
            return getBindTexture(j10);
        }
        return 0;
    }

    public int getBufferHeight() {
        long j10 = this.nativeContext;
        if (j10 != 0) {
            return getHeight(j10);
        }
        return 0;
    }

    public int getBufferWidth() {
        long j10 = this.nativeContext;
        if (j10 != 0) {
            return getWidth(j10);
        }
        return 0;
    }

    public HardwareBuffer getHardwareBuffer() {
        if (this.nativeContext != 0) {
            HardwareBuffer hardwareBuffer = this.buffer;
            if (hardwareBuffer != null) {
                hardwareBuffer.close();
                this.buffer = null;
            }
            HardwareBuffer buffer = getBuffer(this.nativeContext);
            this.buffer = buffer;
            return buffer;
        }
        return null;
    }

    public void release() {
        if (this.nativeContext != 0) {
            LightLogUtil.d(TAG, "destroy");
            HardwareBuffer hardwareBuffer = this.buffer;
            if (hardwareBuffer != null) {
                hardwareBuffer.close();
                this.buffer = null;
            }
            destroy(this.nativeContext);
            this.nativeContext = 0L;
        }
    }

    public boolean updateSize(int i9, int i10) {
        long j10 = this.nativeContext;
        if (j10 != 0) {
            return resize(j10, i9, i10);
        }
        return false;
    }

    public boolean waitFence(ParcelFileDescriptor parcelFileDescriptor) {
        int detachFd;
        if (parcelFileDescriptor == null || (detachFd = parcelFileDescriptor.detachFd()) == -1) {
            return false;
        }
        return waitEGLFence(detachFd);
    }

    public NativeBuffer(int i9, int i10) {
        this.nativeContext = 0L;
        this.buffer = null;
        this.eglFenceEnabled = false;
        LightLogUtil.d(TAG, "create new");
        this.nativeContext = create(i9, i10);
        init();
    }
}
