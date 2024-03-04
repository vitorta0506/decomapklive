package org.light;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.GLES20;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.view.Surface;
import java.io.IOException;
import org.light.service.InstanceId;
import org.light.utils.LightGLUtils;
import org.light.utils.LightLogUtil;
import org.light.utils.SimpleRenderer;
/* loaded from: classes7.dex */
public class LightSurface {
    private static final String TAG = "LightSurface";
    private static ILightSDKServiceInterface lightSDKServiceInterface;
    private long nativeContext;
    private int sdkOutputHeight;
    private int sdkOutputWidth;
    private int instanceId = 0;
    private boolean hardwareTex = false;
    private int sdkOutputGlTex = 0;
    private SimpleRenderer simpleRenderer = null;
    private NativeBuffer nativeBuffer = null;

    static {
        try {
            nativeInit();
        } catch (Error e10) {
            e10.printStackTrace();
        }
    }

    public static void init() {
    }

    public static LightSurface makeFromNativeTexture(int i9, int i10, int i11, boolean z10, boolean z11) {
        return makeFromTextureInternal(i9, i10, i11, z10, z11, false);
    }

    public static LightSurface makeFromSurface(Surface surface, EGLContext eGLContext) {
        return makeFromSurface(surface, eGLContext, true);
    }

    public static LightSurface makeFromSurfaceTexture(SurfaceTexture surfaceTexture) {
        return makeFromSurfaceTexture(surfaceTexture, EGL14.EGL_NO_CONTEXT);
    }

    public static LightSurface makeFromTexture(int i9, int i10, int i11) {
        return makeFromTextureInternal(i9, i10, i11, false, false, false);
    }

    private static LightSurface makeFromTextureInternal(int i9, int i10, int i11, boolean z10, boolean z11, boolean z12) {
        if (lightSDKServiceInterface != null) {
            LightSurface lightSurface = null;
            try {
                NativeBuffer nativeBuffer = new NativeBuffer(i10, i11);
                if (z12) {
                    nativeBuffer.bindTexture(i9);
                } else {
                    nativeBuffer.bindTexture(LightGLUtils.createTexture(3553));
                }
                InstanceId lightSurfaceMakeFromNativeBuffer = lightSDKServiceInterface.lightSurfaceMakeFromNativeBuffer(nativeBuffer.getHardwareBuffer(), i10, i11, z10);
                if (lightSurfaceMakeFromNativeBuffer != null) {
                    LightSurface lightSurface2 = new LightSurface();
                    try {
                        lightSurface2.nativeBuffer = nativeBuffer;
                        lightSurface2.hardwareTex = z12;
                        lightSurface2.sdkOutputGlTex = i9;
                        lightSurface2.sdkOutputWidth = i10;
                        lightSurface2.sdkOutputHeight = i11;
                        lightSurface2.setInstanceId(lightSurfaceMakeFromNativeBuffer.f56459id);
                        lightSurface = lightSurface2;
                    } catch (RemoteException e10) {
                        e = e10;
                        lightSurface = lightSurface2;
                        LightLogUtil.e(TAG, "RemoteException:\n" + e);
                        LightLogUtil.e(TAG, String.format("LightSurface:%x init success", Integer.valueOf(System.identityHashCode(lightSurface))));
                        return lightSurface;
                    }
                }
            } catch (RemoteException e11) {
                e = e11;
            }
            LightLogUtil.e(TAG, String.format("LightSurface:%x init success", Integer.valueOf(System.identityHashCode(lightSurface))));
            return lightSurface;
        }
        return nativeMakeFromTexture(i9, i10, i11, z10, z11);
    }

    private native void nativeClearRenderCurrent();

    private native void nativeFinalize();

    private native void nativeFreeCache();

    private native long nativeGetRenderCurrentGLContext();

    private static native void nativeInit();

    private static native LightSurface nativeMakeFromSurface(Surface surface, long j10, boolean z10);

    private static native LightSurface nativeMakeFromTexture(int i9, int i10, int i11, boolean z10, boolean z11);

    private native void nativeMakeRenderCurrent();

    private native void nativeRelease();

    private native void nativeUpdateSize(int i9, int i10);

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
    }

    public void clearRenderCurrent() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightSurfaceClearRenderCurrent(this.instanceId);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeClearRenderCurrent();
    }

    public void copyOutputTexture(ParcelFileDescriptor parcelFileDescriptor) {
        NativeBuffer nativeBuffer;
        if (parcelFileDescriptor != null && (nativeBuffer = this.nativeBuffer) != null) {
            nativeBuffer.waitFence(parcelFileDescriptor);
            try {
                parcelFileDescriptor.close();
            } catch (IOException e10) {
                LightLogUtil.e(TAG, "copyOutputTexture close fence FD Exception:" + e10);
            }
        }
        if (!this.hardwareTex && this.nativeBuffer != null) {
            if (this.simpleRenderer == null) {
                this.simpleRenderer = new SimpleRenderer();
            }
            this.simpleRenderer.draw(this.nativeBuffer.getBindTexture(), this.sdkOutputGlTex, this.sdkOutputWidth, this.sdkOutputHeight);
        }
        GLES20.glFlush();
    }

    protected void finalize() throws Throwable {
        ILightSDKServiceInterface iLightSDKServiceInterface;
        super.finalize();
        int i9 = this.instanceId;
        if (i9 != 0 && (iLightSDKServiceInterface = lightSDKServiceInterface) != null) {
            try {
                iLightSDKServiceInterface.removeSdkInstance(i9);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
            }
        } else if (this.nativeContext != 0) {
            nativeFinalize();
        }
    }

    public void freeCache() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightSurfaceFreeCache(this.instanceId);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeFreeCache();
    }

    public int getInstanceId() {
        return this.instanceId;
    }

    public long getRenderCurrentGLContext() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightSurfaceGetRenderCurrentGLContext(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return 0L;
            }
        }
        return nativeGetRenderCurrentGLContext();
    }

    public void makeRenderCurrent() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightSurfaceMakeRenderCurrent(this.instanceId);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeMakeRenderCurrent();
    }

    public void release() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightSurfaceRelease(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
            }
        } else {
            nativeRelease();
        }
        SimpleRenderer simpleRenderer = this.simpleRenderer;
        if (simpleRenderer != null) {
            simpleRenderer.release();
            this.simpleRenderer = null;
        }
        NativeBuffer nativeBuffer = this.nativeBuffer;
        if (nativeBuffer != null) {
            LightGLUtils.deleteTexture(nativeBuffer.getBindTexture());
            this.nativeBuffer.release();
        }
    }

    public void setInstanceId(int i9) {
        this.instanceId = i9;
    }

    public void updateSize(int i9, int i10) {
        if (lightSDKServiceInterface != null) {
            try {
                this.nativeBuffer.updateSize(i9, i10);
                this.sdkOutputWidth = i9;
                this.sdkOutputHeight = i10;
                lightSDKServiceInterface.lightSurfaceUpdateSize(this.instanceId, this.nativeBuffer.getHardwareBuffer(), i9, i10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeUpdateSize(i9, i10);
    }

    public static LightSurface makeFromSurface(Surface surface, EGLContext eGLContext, boolean z10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        LightSurface lightSurface = null;
        if (iLightSDKServiceInterface == null) {
            if (surface == null) {
                return null;
            }
            long j10 = 0;
            if (eGLContext != null && eGLContext != EGL14.EGL_NO_CONTEXT) {
                j10 = eGLContext.getNativeHandle();
            }
            return nativeMakeFromSurface(surface, j10, z10);
        }
        try {
            InstanceId lightSurfaceMakeFromSurface = iLightSDKServiceInterface.lightSurfaceMakeFromSurface(surface, z10);
            if (lightSurfaceMakeFromSurface != null) {
                LightSurface lightSurface2 = new LightSurface();
                try {
                    lightSurface2.setInstanceId(lightSurfaceMakeFromSurface.f56459id);
                    lightSurface = lightSurface2;
                } catch (RemoteException e10) {
                    e = e10;
                    lightSurface = lightSurface2;
                    LightLogUtil.e(TAG, "RemoteException:\n" + e);
                    LightLogUtil.e(TAG, String.format("LightSurface:%x init success", Integer.valueOf(System.identityHashCode(lightSurface))));
                    return lightSurface;
                }
            }
        } catch (RemoteException e11) {
            e = e11;
        }
        LightLogUtil.e(TAG, String.format("LightSurface:%x init success", Integer.valueOf(System.identityHashCode(lightSurface))));
        return lightSurface;
    }

    public static LightSurface makeFromSurfaceTexture(SurfaceTexture surfaceTexture, EGLContext eGLContext) {
        if (surfaceTexture == null) {
            return null;
        }
        return makeFromSurface(new Surface(surfaceTexture), eGLContext);
    }

    public static LightSurface makeFromTexture(int i9, int i10, int i11, boolean z10) {
        return makeFromTextureInternal(i9, i10, i11, z10, false, true);
    }

    public static LightSurface makeFromTexture(int i9, int i10, int i11, boolean z10, boolean z11) {
        return makeFromTextureInternal(i9, i10, i11, z10, false, z11);
    }
}
