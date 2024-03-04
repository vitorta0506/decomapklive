package org.light;

import android.os.RemoteException;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class AudioOutput {
    private static final String TAG = "AudioOutput";
    private static ILightSDKServiceInterface lightSDKServiceInterface;
    private int instanceId = 0;
    private long nativeContext = 0;

    static {
        try {
            nativeInit();
        } catch (Error e10) {
            e10.printStackTrace();
        }
    }

    private native AudioFrame nativeCopyNextSample();

    private native AudioFrame nativeCopyNextSampleSyncEnable(boolean z10);

    private native void nativeFinalize();

    private static native void nativeInit();

    private native void nativeRelease();

    private native void nativeSeekTo(long j10);

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
    }

    public AudioFrame copyNextSample() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.audioOutputCopyNextSample(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeCopyNextSample();
    }

    public AudioFrame copyNextSampleSyncEnable(boolean z10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.audioOutputCopyNextSampleSyncEnable(this.instanceId, z10);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeCopyNextSampleSyncEnable(z10);
    }

    protected void finalize() throws Throwable {
        ILightSDKServiceInterface iLightSDKServiceInterface;
        super.finalize();
        int i9 = this.instanceId;
        if (i9 != 0 && (iLightSDKServiceInterface = lightSDKServiceInterface) != null) {
            try {
                iLightSDKServiceInterface.removeSdkInstance(i9);
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

    public final void release() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.audioOutputRelease(this.instanceId);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeRelease();
    }

    public void seekTo(long j10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.audioOutputSeekTo(this.instanceId, j10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSeekTo(j10);
    }

    public void setInstanceId(int i9) {
        this.instanceId = i9;
    }
}
