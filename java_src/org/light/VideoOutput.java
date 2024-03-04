package org.light;

import android.os.RemoteException;
import java.lang.ref.WeakReference;
import org.light.bean.ReadSampleResult;
import org.light.utils.LightLogUtil;
import org.light.utils.SimpleRenderer;
/* loaded from: classes7.dex */
public class VideoOutput {
    private static final String TAG = "VideoOutput";
    private static ILightSDKServiceInterface lightSDKServiceInterface;
    private long nativeContext;
    private int instanceId = 0;
    private WeakReference<LightEngine> weakEngine = null;
    private SimpleRenderer simpleRenderer = null;

    static {
        try {
            nativeInit();
        } catch (Error e10) {
            e10.printStackTrace();
        }
    }

    public static void init() {
    }

    private native void nativeFinalize();

    private static native void nativeInit();

    private native boolean nativeReadSample(long j10);

    private native boolean nativeReadSampleCheckFlush(long j10);

    private native void nativeRelease();

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        if (this.instanceId != 0 && lightSDKServiceInterface != null) {
            SimpleRenderer simpleRenderer = this.simpleRenderer;
            if (simpleRenderer != null) {
                simpleRenderer.release();
                this.simpleRenderer = null;
            }
            try {
                lightSDKServiceInterface.removeSdkInstance(this.instanceId);
            } catch (RemoteException e10) {
                e10.printStackTrace();
            }
        } else if (this.nativeContext != 0) {
            nativeFinalize();
        }
    }

    public int getInstanceId() {
        return this.instanceId;
    }

    public boolean readSample(long j10) {
        LightEngine lightEngine;
        if (lightSDKServiceInterface != null) {
            WeakReference<LightEngine> weakReference = this.weakEngine;
            boolean z10 = false;
            if (weakReference == null || (lightEngine = weakReference.get()) == null) {
                return false;
            }
            LightSurface lightSurface = lightEngine.getLightSurface();
            if (lightSurface == null) {
                LightLogUtil.e(TAG, "VideoOutput.readSample error: LightSurface not set");
                return false;
            }
            try {
                ReadSampleResult videoOutputReadSample = lightSDKServiceInterface.videoOutputReadSample(this.instanceId, lightSurface.getInstanceId(), lightEngine.getCameraControllerInstanceId(), lightEngine.getCameraTextureTimestamp(), j10);
                if (videoOutputReadSample != null) {
                    z10 = videoOutputReadSample.readOk;
                    lightSurface.copyOutputTexture(videoOutputReadSample.fenceFd);
                }
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
            }
            lightEngine.setCameraTextureTimestamp(-1L);
            return z10;
        }
        return nativeReadSample(j10);
    }

    public boolean readSampleCheckFlush(long j10) {
        return nativeReadSampleCheckFlush(j10);
    }

    public final void release() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.videoOutputRelease(this.instanceId);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeRelease();
    }

    public void setInstanceId(int i9) {
        this.instanceId = i9;
    }

    public void setLightEngine(WeakReference<LightEngine> weakReference) {
        this.weakEngine = weakReference;
    }
}
