package org.light;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import org.light.LightConstants;
import org.light.bean.LightAgentBundleInfo;
import org.light.service.InstanceId;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class LightAsset implements Parcelable {
    private static final String TAG = "LightAsset";
    protected static ILightSDKServiceInterface lightSDKServiceInterface;
    private int errorCode;
    protected int instanceId;
    private long nativeContext;
    public static final Parcelable.Creator<LightAsset> CREATOR = new Parcelable.Creator<LightAsset>() { // from class: org.light.LightAsset.1
        @Override // android.os.Parcelable.Creator
        public LightAsset createFromParcel(Parcel parcel) {
            return new LightAsset(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public LightAsset[] newArray(int i9) {
            return new LightAsset[i9];
        }
    };
    public static int ASSETS_TEMPLATE_TYPE_DEFAULT = 0;
    public static int ASSETS_TEMPLATE_TYPE_MOTION = 1;

    static {
        try {
            nativeInit();
        } catch (Error e10) {
            e10.printStackTrace();
        }
    }

    public LightAsset() {
        this.nativeContext = 0L;
        this.instanceId = 0;
        this.errorCode = 0;
    }

    public static LightAsset Load(String str, int i9) {
        return Load(str, i9, ASSETS_TEMPLATE_TYPE_DEFAULT, null, 0, 0);
    }

    public static LightAsset LoadFromString(String str, String str2, int i9) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            LightAsset lightAsset = null;
            try {
                InstanceId lightAssetLoadFromString = iLightSDKServiceInterface.lightAssetLoadFromString(str, str2, i9);
                if (lightAssetLoadFromString != null) {
                    LightAsset lightAsset2 = new LightAsset();
                    try {
                        lightAsset2.setInstanceId(lightAssetLoadFromString.f56459id);
                        return lightAsset2;
                    } catch (RemoteException e10) {
                        e = e10;
                        lightAsset = lightAsset2;
                        LightLogUtil.e(TAG, "RemoteException:\n" + e);
                        return lightAsset;
                    }
                }
                return null;
            } catch (RemoteException e11) {
                e = e11;
            }
        } else {
            return nativeLoadFromString(str, str2, i9);
        }
    }

    private native void nativeFinalize();

    private native boolean nativeForbiddenBasicMakeup();

    private native boolean nativeForbiddenBasicNonReshapeBeauty();

    private native boolean nativeForbiddenBasicReshape();

    private native boolean nativeForbiddenBasicSmooth();

    private native String[] nativeGetBgmMusicIDs();

    private native String[] nativeGetBoundsTrackerPlaceHolders();

    private native int nativeGetDefaultCameraPosition();

    private native FontAsset[] nativeGetFontAssets();

    private native String nativeGetJsonString();

    private native LUTPlaceHolder[] nativeGetLUTPlaceHolders();

    private native MaterialConfig[] nativeGetMaterialConfigs();

    private native String nativeGetMaterialID();

    private native TemplateConfig nativeGetMovieConfig();

    private native LightAgentBundleInfo[] nativeGetRenderAgentBundleInfos();

    private native String[] nativeGetRenderAgentTypes();

    private native int nativeGetSupportCameraPosition();

    private native int nativeGetVoiceEnvironment();

    private native int nativeGetVoiceKind();

    private native boolean nativeHasFactorMakeup();

    private native boolean nativeHasLut();

    private native boolean nativeHasMakeup();

    private native boolean nativeHasMesh();

    private native int nativeHeight();

    private static native void nativeInit();

    private static native LightAsset nativeLoad(String str, int i9, int i10, String str2, int i11, int i12);

    private static native LightAsset nativeLoadFromString(String str, String str2, int i9);

    private native boolean nativeNeedRenderAbility(String str);

    private native boolean nativeNeedResetAssetWhenStartRecord();

    private native boolean nativeNeedUE4Environment();

    private native int nativeWidth();

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected void finalize() throws Throwable {
        ILightSDKServiceInterface iLightSDKServiceInterface;
        int i9 = this.instanceId;
        if (i9 != 0 && (iLightSDKServiceInterface = lightSDKServiceInterface) != null) {
            try {
                iLightSDKServiceInterface.removeSdkInstance(i9);
            } catch (RemoteException e10) {
                e10.printStackTrace();
            }
        } else {
            nativeFinalize();
        }
        super.finalize();
    }

    public boolean forbiddenBasicMakeup() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetForbiddenBasicMakeup(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeForbiddenBasicMakeup();
    }

    public boolean forbiddenBasicNonReshapeBeauty() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetForbiddenBasicNonReshapeBeauty(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeForbiddenBasicNonReshapeBeauty();
    }

    public boolean forbiddenBasicReshape() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetForbiddenBasicReshape(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeForbiddenBasicReshape();
    }

    public boolean forbiddenBasicSmooth() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetForbiddenBasicSmooth(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeForbiddenBasicSmooth();
    }

    public String[] getBgmMusicIDs() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetBgmMusicIDs(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetBgmMusicIDs();
    }

    public String[] getBoundsTrackerPlaceHolders() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetBoundsTrackerPlaceHolders(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetBoundsTrackerPlaceHolders();
    }

    public int getDefaultCameraPosition() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetDefaultCameraPosition(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return -1;
            }
        }
        return nativeGetDefaultCameraPosition();
    }

    public int getErrorCode() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetErrorCode(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return -1;
            }
        }
        return this.errorCode;
    }

    public FontAsset[] getFontAssets() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetFontAssets(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetFontAssets();
    }

    public int getInstanceId() {
        return this.instanceId;
    }

    public String getJsonString() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetJsonString(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetJsonString();
    }

    public LUTPlaceHolder[] getLUTPlaceHolders() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetLUTPlaceHolders(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetLUTPlaceHolders();
    }

    public MaterialConfig[] getMaterialConfigs() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetMaterialConfigs(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetMaterialConfigs();
    }

    public String getMaterialID() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetMaterialID(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetMaterialID();
    }

    public TemplateConfig getMovieConfig() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetMovieConfig(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetMovieConfig();
    }

    public LightAgentBundleInfo[] getRenderAgentBundleInfos() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetRenderAgentBundleInfos(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetRenderAgentBundleInfos();
    }

    public String[] getRenderAgentTypes() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetRenderAgentTypes(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetRenderAgentTypes();
    }

    public int getSupportCameraPosition() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetSupportCameraPosition(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return 1;
            }
        }
        return nativeGetSupportCameraPosition();
    }

    public int getVoiceEnvironment() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetVoiceEnvironment(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return -1;
            }
        }
        return nativeGetVoiceEnvironment();
    }

    public int getVoiceKind() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetGetVoiceKind(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return -1;
            }
        }
        return nativeGetVoiceKind();
    }

    public boolean hasFactorMakeup() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetHasFactorMakeup(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeHasFactorMakeup();
    }

    public boolean hasLut() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetHasLut(this.instanceId);
            } catch (RemoteException e10) {
                e10.printStackTrace();
                return false;
            }
        }
        return nativeHasLut();
    }

    public boolean hasMakeup() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetHasMakeup(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeHasMakeup();
    }

    public boolean hasMesh() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetHasMesh(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeHasMesh();
    }

    public int height() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetHeight(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return 0;
            }
        }
        return nativeHeight();
    }

    public boolean needRenderAbility(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetNeedRenderAbility(this.instanceId, str);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeNeedRenderAbility(str);
    }

    public boolean needResetAssetWhenStartRecord() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetNeedResetAssetWhenStartRecord(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeNeedResetAssetWhenStartRecord();
    }

    public boolean needUE4Environment() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetNeedUE4Environment(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeNeedUE4Environment();
    }

    public boolean needVoiceDecibel() {
        return needRenderAbility(LightConstants.AssetFeatureKey.HAS_VOICE_DECIBEL);
    }

    public void performFinalize() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightAssetPerformFinalize(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
            }
        } else if (this.nativeContext != 0) {
            nativeFinalize();
        }
    }

    public void setInstanceId(int i9) {
        this.instanceId = i9;
    }

    public native void setRenderMediaSize(int i9, int i10);

    public int width() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightAssetWidth(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return 0;
            }
        }
        return nativeWidth();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.instanceId);
    }

    public static LightAsset Load(String str, int i9, int i10, String str2, int i11, int i12) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            LightAsset lightAsset = null;
            try {
                InstanceId lightAssetLoad = iLightSDKServiceInterface.lightAssetLoad(str, i9);
                if (lightAssetLoad != null) {
                    LightAsset lightAsset2 = new LightAsset();
                    try {
                        lightAsset2.setInstanceId(lightAssetLoad.f56459id);
                        lightAsset = lightAsset2;
                    } catch (RemoteException e10) {
                        e = e10;
                        lightAsset = lightAsset2;
                        LightLogUtil.e(TAG, "RemoteException:\n" + e);
                        LightLogUtil.e(TAG, String.format("LightAsset:%x init success", Integer.valueOf(System.identityHashCode(lightAsset))));
                        return lightAsset;
                    }
                }
            } catch (RemoteException e11) {
                e = e11;
            }
            LightLogUtil.e(TAG, String.format("LightAsset:%x init success", Integer.valueOf(System.identityHashCode(lightAsset))));
            return lightAsset;
        }
        return nativeLoad(str, i9, i10, str2, i11, i12);
    }

    protected LightAsset(Parcel parcel) {
        this.nativeContext = 0L;
        this.instanceId = 0;
        this.errorCode = 0;
        this.instanceId = parcel.readInt();
    }
}
