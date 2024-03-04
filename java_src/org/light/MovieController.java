package org.light;

import android.os.Bundle;
import android.os.RemoteException;
import org.light.AIDLAudioReader;
import org.light.AIDLClipSourceFactory;
import org.light.AIDLVideoReader;
import org.light.ClipSourceFactory;
import org.light.bean.Texture;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class MovieController extends Controller {
    private static final String TAG = "MovieController";

    static {
        try {
            nativeInit();
        } catch (Error e10) {
            e10.printStackTrace();
        }
    }

    private native long nativeDuration();

    private native TimeRange[] nativeGetBoundsTrackTimeRanges();

    private native ClipInfo[][] nativeGetClipInfos();

    private native ClipPlaceHolder[] nativeGetClipPlaceHolders();

    private native LUTPlaceHolder[] nativeGetLUTPlaceHolders();

    private native float nativeGetOriginVolume();

    private native TimeRange[] nativeGetTextTimeRanges();

    private native boolean nativeHasAudio();

    private static native void nativeInit();

    private native void nativeRegisterClipSourceFactory(ClipSourceFactory clipSourceFactory);

    private native void nativeReplaceLUTAsset(String str, LUTAsset lUTAsset);

    private native void nativeSetClipAssets(ClipAsset[] clipAssetArr, String str, boolean z10);

    private native void nativeSetOriginVolume(float f10);

    public long duration() {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.movieControllerDuration(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return 0L;
            }
        }
        return nativeDuration();
    }

    public TimeRange[] getBoundsTrackTimeRanges() {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.movieControllerGetBoundsTrackTimeRanges(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetBoundsTrackTimeRanges();
    }

    public ClipInfo[][] getClipInfos() {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                ClipInfoArray[] movieControllerGetClipInfos = iLightSDKServiceInterface.movieControllerGetClipInfos(this.instanceId);
                if (movieControllerGetClipInfos != null) {
                    ClipInfo[][] clipInfoArr = new ClipInfo[movieControllerGetClipInfos.length];
                    for (int i9 = 0; i9 < movieControllerGetClipInfos.length; i9++) {
                        clipInfoArr[i9] = movieControllerGetClipInfos[i9].infoArray;
                    }
                    return clipInfoArr;
                }
                return null;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetClipInfos();
    }

    public ClipPlaceHolder[] getClipPlaceHolders() {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.movieControllerGetClipPlaceHolders(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetClipPlaceHolders();
    }

    public LUTPlaceHolder[] getLUTPlaceHolders() {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.movieControllerGetLUTPlaceHolders(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetLUTPlaceHolders();
    }

    public boolean getMediasTotalDurationLimitationStatus() {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.movieControllerGetMediasTotalDurationLimitationStatus(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeGetMediasTotalDurationLimitationStatus();
    }

    public float getOriginVolume() {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.movieControllerGetOriginVolume(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return 1.0f;
            }
        }
        return nativeGetOriginVolume();
    }

    public TimeRange[] getTextTimeRanges() {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.movieControllerGetTextTimeRanges(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetTextTimeRanges();
    }

    @Override // org.light.Controller
    public boolean hasAudio() {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.movieControllerHasAudio(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeHasAudio();
    }

    public native boolean nativeGetMediasTotalDurationLimitationStatus();

    public native void nativeSetRenderMediaSize(int i9, int i10);

    public native void nativeSetupMediasTotalDurationLimitationStatus(boolean z10);

    public void registerClipSourceFactory(final ClipSourceFactory clipSourceFactory) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.movieControllerRegisterClipSourceFactory(this.instanceId, clipSourceFactory == null ? null : new AIDLClipSourceFactory.Stub() { // from class: org.light.MovieController.1
                    @Override // org.light.AIDLClipSourceFactory
                    public AIDLAudioReader createAudioReader(String str) throws RemoteException {
                        final ClipSourceFactory.AudioReader createAudioReader = clipSourceFactory.createAudioReader(str);
                        if (createAudioReader != null) {
                            return new AIDLAudioReader.Stub() { // from class: org.light.MovieController.1.2
                                @Override // org.light.AIDLAudioReader
                                public AudioFrame copyNextFrame() throws RemoteException {
                                    return createAudioReader.copyNextFrame();
                                }

                                @Override // org.light.AIDLAudioReader
                                public AudioFrame copyNextFrameSyncEnable(boolean z10) throws RemoteException {
                                    return createAudioReader.copyNextFrameSyncEnable(z10);
                                }

                                @Override // org.light.AIDLAudioReader
                                public long duration() throws RemoteException {
                                    return createAudioReader.duration();
                                }

                                @Override // org.light.AIDLAudioReader
                                public void release() throws RemoteException {
                                    createAudioReader.release();
                                }

                                @Override // org.light.AIDLAudioReader
                                public void seek(long j10) throws RemoteException {
                                    createAudioReader.seek(j10);
                                }

                                @Override // org.light.AIDLAudioReader
                                public void setVolume(float f10) throws RemoteException {
                                    createAudioReader.setVolume(f10);
                                }
                            };
                        }
                        return null;
                    }

                    @Override // org.light.AIDLClipSourceFactory
                    public AIDLVideoReader createVideoReader(String str) throws RemoteException {
                        final ClipSourceFactory.VideoReader createVideoReader = clipSourceFactory.createVideoReader(str);
                        if (createVideoReader != null) {
                            return new AIDLVideoReader.Stub() { // from class: org.light.MovieController.1.1
                                @Override // org.light.AIDLVideoReader
                                public long duration() throws RemoteException {
                                    return createVideoReader.duration();
                                }

                                @Override // org.light.AIDLVideoReader
                                public int height() throws RemoteException {
                                    return createVideoReader.height();
                                }

                                @Override // org.light.AIDLVideoReader
                                public Texture readSample(long j10) throws RemoteException {
                                    return createVideoReader.readSample(j10);
                                }

                                @Override // org.light.AIDLVideoReader
                                public void release() throws RemoteException {
                                    createVideoReader.release();
                                }

                                @Override // org.light.AIDLVideoReader
                                public int width() throws RemoteException {
                                    return createVideoReader.width();
                                }
                            };
                        }
                        return null;
                    }
                });
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeRegisterClipSourceFactory(clipSourceFactory);
    }

    public void replaceLUTAsset(String str, LUTAsset lUTAsset) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.movieControllerReplaceLUTAsset(this.instanceId, str, lUTAsset);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeReplaceLUTAsset(str, lUTAsset);
    }

    public void setClipAssets(ClipAsset[] clipAssetArr, String str) {
        setClipAssets(clipAssetArr, str, true);
    }

    public void setOriginVolume(float f10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.movieControllerSetOriginVolume(this.instanceId, f10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetOriginVolume(f10);
    }

    public void setRenderMediaSize(int i9, int i10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.movieControllerSetRenderMediaSize(this.instanceId, i9, i10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "setRenderMediaSize RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetRenderMediaSize(i9, i10);
    }

    public void setupMediasTotalDurationLimitationStatus(boolean z10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.movieControllerSetupMediasTotalDurationLimitationStatus(this.instanceId, z10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "mediasTotalDurationLimitationStatus RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetupMediasTotalDurationLimitationStatus(z10);
    }

    @Override // org.light.Controller
    public int type() {
        return 0;
    }

    public void setClipAssets(ClipAsset[] clipAssetArr, String str, boolean z10) {
        if (Controller.lightSDKServiceInterface != null) {
            Bundle bundle = null;
            if (clipAssetArr != null) {
                try {
                    bundle = new Bundle();
                    bundle.putParcelableArray("ClipAsset", clipAssetArr);
                } catch (RemoteException e10) {
                    LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                    return;
                }
            }
            Controller.lightSDKServiceInterface.movieControllerSetClipAssets(this.instanceId, bundle, str, z10);
            return;
        }
        nativeSetClipAssets(clipAssetArr, str, z10);
    }
}
