package org.light;

import android.opengl.GLES20;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.lang.ref.WeakReference;
import org.light.service.InstanceId;
import org.light.utils.LightGLUtils;
import org.light.utils.LightLogUtil;
import org.light.utils.Renderer;
import org.light.utils.SimpleRenderer;
/* loaded from: classes7.dex */
public class CameraConfig extends Config {
    private static final String TAG = "CameraConfig";
    private float lastXAxis;
    DeviceCameraOrientation recognizedOrientation;
    private float eps = 3.0f;
    private NativeBuffer nativeBuffer = null;
    private Renderer sdkInputRenderer = null;
    private int currentCameraTexture = -1;
    private int currentCameraTextureWidth = -1;
    private int currentCameraTextureHeight = -1;

    /* loaded from: classes7.dex */
    public enum DeviceCameraOrientation {
        ROTATION_0,
        ROTATION_90,
        ROTATION_180,
        ROTATION_270
    }

    /* loaded from: classes7.dex */
    public enum ImageOrigin {
        TopLeft,
        BottomLeft
    }

    public static CameraConfig make() {
        ILightSDKServiceInterface iLightSDKServiceInterface = Config.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            CameraConfig cameraConfig = null;
            try {
                InstanceId cameraConfigMake = iLightSDKServiceInterface.cameraConfigMake();
                if (cameraConfigMake != null) {
                    CameraConfig cameraConfig2 = new CameraConfig();
                    try {
                        cameraConfig2.setInstanceId(cameraConfigMake.f56459id);
                        cameraConfig = cameraConfig2;
                    } catch (RemoteException e10) {
                        e = e10;
                        cameraConfig = cameraConfig2;
                        LightLogUtil.e(TAG, "RemoteException:\n" + e);
                        LightLogUtil.e(TAG, String.format("CameraConfig:%x init success", Integer.valueOf(System.identityHashCode(cameraConfig))));
                        return cameraConfig;
                    }
                }
            } catch (RemoteException e11) {
                e = e11;
            }
            LightLogUtil.e(TAG, String.format("CameraConfig:%x init success", Integer.valueOf(System.identityHashCode(cameraConfig))));
            return cameraConfig;
        }
        return nativeMake();
    }

    private native void nativeCameraSwitched(int i9);

    public static native CameraConfig nativeMake();

    private native void nativeSensorOrientationChanged(DeviceCameraOrientation deviceCameraOrientation);

    private native void nativeSetAutoTestMode(boolean z10);

    private native void nativeSetRawInputForAR(byte[] bArr, int i9, int i10, long j10);

    private void restoreCameraTexture(int i9, int i10, int i11) {
        this.sdkInputRenderer.setForHardwareBuffer(true);
        this.sdkInputRenderer.draw(i9, this.nativeBuffer.getBindTexture(), i10, i11);
        GLES20.glFlush();
        LightGLUtils.deleteTexture(i9);
    }

    private int saveCameraTexture(int i9, int i10, int i11) {
        int createTexture = LightGLUtils.createTexture(3553);
        this.sdkInputRenderer.setForHardwareBuffer(false);
        this.sdkInputRenderer.draw(i9, createTexture, i10, i11);
        GLES20.glFlush();
        return createTexture;
    }

    public void cameraSwitched(int i9) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Config.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraConfigCameraSwitched(this.instanceId, i9);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeCameraSwitched(i9);
    }

    public native void clearAIDataListener();

    public native void clearTipsStatusListener();

    public native void clearYTDataListener();

    public native void nativeSetCameraTexture(int i9, int i10, int i11, DeviceCameraOrientation deviceCameraOrientation, ImageOrigin imageOrigin);

    @Override // org.light.Config
    public void performFinalize() {
        Renderer renderer = this.sdkInputRenderer;
        if (renderer != null) {
            renderer.release();
            this.sdkInputRenderer = null;
        }
        NativeBuffer nativeBuffer = this.nativeBuffer;
        if (nativeBuffer != null) {
            LightGLUtils.deleteTexture(nativeBuffer.getBindTexture());
            this.nativeBuffer.release();
            this.nativeBuffer = null;
        }
        super.performFinalize();
    }

    public void sensorOrientationChanged(DeviceCameraOrientation deviceCameraOrientation) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Config.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraConfigSensorOrientationChanged(this.instanceId, deviceCameraOrientation.ordinal());
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSensorOrientationChanged(deviceCameraOrientation);
    }

    public void setAutoTestMode(boolean z10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Config.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraConfigSetAutoTestMode(this.instanceId, z10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetAutoTestMode(z10);
    }

    public void setCameraTexture(int i9, int i10, int i11) {
        setCameraTexture(i9, i10, i11, DeviceCameraOrientation.ROTATION_0);
    }

    public void setRawInputForAR(byte[] bArr, int i9, int i10, long j10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Config.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraConfigSetRawInputForAR(this.instanceId, bArr, i9, i10, j10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos() / 1000000;
        long uptimeMillis = SystemClock.uptimeMillis();
        long j11 = elapsedRealtimeNanos - uptimeMillis;
        if (Math.abs(elapsedRealtimeNanos - j10) > Math.abs(uptimeMillis - j10)) {
            j10 += j11;
        }
        nativeSetRawInputForAR(bArr, i9, i10, j10);
    }

    public void setCameraTexture(int i9, int i10, int i11, DeviceCameraOrientation deviceCameraOrientation) {
        setCameraTexture(i9, i10, i11, deviceCameraOrientation, ImageOrigin.BottomLeft);
    }

    public void setCameraTexture(int i9, int i10, int i11, DeviceCameraOrientation deviceCameraOrientation, ImageOrigin imageOrigin) {
        setCameraTexture(i9, i10, i11, deviceCameraOrientation, imageOrigin, false);
    }

    public void setCameraTexture(int i9, int i10, int i11, DeviceCameraOrientation deviceCameraOrientation, ImageOrigin imageOrigin, boolean z10) {
        LightEngine lightEngine;
        if (Config.lightSDKServiceInterface != null) {
            LightSurface lightSurface = null;
            WeakReference<LightEngine> weakReference = this.weakEngine;
            if (weakReference != null && (lightEngine = weakReference.get()) != null) {
                lightSurface = lightEngine.getLightSurface();
            }
            LightSurface lightSurface2 = lightSurface;
            if (lightSurface2 == null) {
                LightLogUtil.e(TAG, "CameraConfig.setCameraTexture error: LightSurface not set");
                return;
            }
            if (this.nativeBuffer == null) {
                this.nativeBuffer = new NativeBuffer(i10, i11);
                if (z10) {
                    if (this.sdkInputRenderer == null) {
                        this.sdkInputRenderer = new SimpleRenderer();
                    }
                    int saveCameraTexture = saveCameraTexture(i9, i10, i11);
                    this.nativeBuffer.bindTexture(i9);
                    restoreCameraTexture(saveCameraTexture, i10, i11);
                } else {
                    this.nativeBuffer.bindTexture(LightGLUtils.createTexture(3553));
                }
            }
            if (this.currentCameraTexture != i9 || this.currentCameraTextureWidth != i10 || this.currentCameraTextureHeight != i11) {
                this.currentCameraTexture = i9;
                this.currentCameraTextureWidth = i10;
                this.currentCameraTextureHeight = i11;
                int saveCameraTexture2 = z10 ? saveCameraTexture(i9, i10, i11) : 0;
                this.nativeBuffer.updateSize(i10, i11);
                if (z10) {
                    restoreCameraTexture(saveCameraTexture2, i10, i11);
                }
                try {
                    Config.lightSDKServiceInterface.cameraConfigUpdateCameraTexture(this.instanceId, lightSurface2.getInstanceId(), this.nativeBuffer.getHardwareBuffer(), i10, i11, i9);
                } catch (RemoteException e10) {
                    LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                }
            }
            if (!z10) {
                if (this.sdkInputRenderer == null) {
                    this.sdkInputRenderer = new SimpleRenderer();
                }
                this.sdkInputRenderer.setForHardwareBuffer(true);
                this.sdkInputRenderer.draw(i9, this.nativeBuffer.getBindTexture(), i10, i11);
            }
            GLES20.glFlush();
            try {
                ParcelFileDescriptor createFence = this.nativeBuffer.createFence();
                Config.lightSDKServiceInterface.cameraConfigSetCameraTexture(this.instanceId, lightSurface2.getInstanceId(), i10, i11, createFence);
                if (createFence != null) {
                    try {
                        createFence.close();
                        return;
                    } catch (IOException e11) {
                        LightLogUtil.e(TAG, "SetCameraTexture close fence FD Exception:" + e11);
                        return;
                    }
                }
                return;
            } catch (RemoteException e12) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e12);
                return;
            }
        }
        nativeSetCameraTexture(i9, i10, i11, deviceCameraOrientation, imageOrigin);
    }

    public void sensorOrientationChanged(int i9, int i10) {
        DeviceCameraOrientation deviceCameraOrientation = DeviceCameraOrientation.ROTATION_0;
        if (Math.abs(i10) > Math.abs(i9)) {
            if (i10 <= 1 && i10 < -1) {
                deviceCameraOrientation = DeviceCameraOrientation.ROTATION_180;
            }
        } else if (i9 > 1) {
            deviceCameraOrientation = DeviceCameraOrientation.ROTATION_90;
        } else if (i9 < -1) {
            deviceCameraOrientation = DeviceCameraOrientation.ROTATION_270;
        }
        if (this.recognizedOrientation != deviceCameraOrientation) {
            float f10 = i9;
            if (Math.abs(f10 - this.lastXAxis) > this.eps || Math.abs(i10 - this.lastXAxis) > this.eps) {
                Log.d(TAG, "orientation is changed from" + this.recognizedOrientation + " to " + deviceCameraOrientation + ", and current XAxis:" + i9);
                this.lastXAxis = f10;
                this.recognizedOrientation = deviceCameraOrientation;
                sensorOrientationChanged(deviceCameraOrientation);
            }
        }
    }
}
