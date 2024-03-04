package org.light;

import android.graphics.RectF;
import android.os.Bundle;
import android.os.RemoteException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.light.AIDLFaceDetectCallback;
import org.light.AIDLIExternalAudioProcessor;
import org.light.bean.WMElement;
import org.light.callback.AIDLComponentUpdateCallback;
import org.light.callback.AIDLWillReadSampleCallback;
import org.light.callback.ComponentUpdateCallback;
import org.light.callback.WillReadSampleCallback;
import org.light.utils.LightDataUtils;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public abstract class Controller {
    public static final int ControllerType_Camera = 1;
    public static final int ControllerType_Movie = 0;
    private static final String TAG = "Controller";
    protected static ILightSDKServiceInterface lightSDKServiceInterface;
    protected long nativeHandle;
    protected int instanceId = 0;
    protected WeakReference<LightEngine> weakEngine = null;

    static {
        try {
            nativeInit();
        } catch (Error e10) {
            e10.printStackTrace();
        }
    }

    private native void nativeAddComponent(int i9, String str);

    private native void nativeAddComponentUpdateMonitor(int i9);

    private native void nativeAddEntity(int i9, int i10, String str);

    private native String nativeFetchComponent(int i9);

    private native void nativeFinalize();

    private native HashMap<String, String> nativeGetAssetData();

    private native AudioPlaceHolder[] nativeGetAudioPlaceHolders();

    private native RectF nativeGetBoundsByKey(String str);

    private native TextPlaceHolder nativeGetEditableTextUnderPoint(float f10, float f11);

    private native WMElement[] nativeGetEditableWMItems();

    private native int[] nativeGetEntitiesUnderPoint(float f10, float f11);

    private native String[] nativeGetSoundEffectIDs();

    private native TextPlaceHolder[] nativeGetTextPlaceHolderByEntityId(int i9);

    private native TextPlaceHolder[] nativeGetTextPlaceHolders();

    private native TimeLine[] nativeGetTimeLines();

    private native boolean nativeHasAudio();

    private native boolean nativeHasSpecificMakeUpType(int i9);

    private static native void nativeInit();

    private native void nativeRemoveComponent(int i9, String str);

    private native void nativeRemoveComponentUpdateMonitor(int i9);

    private native void nativeRemoveEntity(int i9);

    private native void nativeReplaceAudioAsset(String str, AudioAsset audioAsset);

    private native void nativeResetAsset();

    private native void nativeSetAssetData(HashMap<String, String> hashMap);

    private native void nativeSetComponentUpdateCallback(ComponentUpdateCallback componentUpdateCallback);

    private native void nativeSetExternalAudioProcessor(HashMap<String, IExternalAudioProcessor> hashMap);

    private native void nativeSetMaterialClipAssets(String str, ClipAsset[] clipAssetArr, FaceDetectCallback faceDetectCallback);

    private native void nativeSetTextAsset(String str, TextAsset textAsset);

    private native void nativeSetWillReadSampleCallback(WillReadSampleCallback willReadSampleCallback);

    private native void nativeUpdateComponent(int i9, String str);

    private native void nativeUpdateResource(String str);

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
    }

    public void addComponent(int i9, String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.controllerAddComponent(this.instanceId, i9, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeAddComponent(i9, str);
    }

    public void addComponentUpdateMonitor(int i9) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.controllerAddComponentUpdateMonitor(this.instanceId, i9);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeAddComponentUpdateMonitor(i9);
    }

    public void addEntity(int i9, int i10, String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.controllerAddEntity(this.instanceId, i9, i10, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeAddEntity(i9, i10, str);
    }

    public String fetchComponent(int i9) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.controllerFetchComponent(this.instanceId, i9);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeFetchComponent(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void finalize() throws Throwable {
        ILightSDKServiceInterface iLightSDKServiceInterface;
        super.finalize();
        int i9 = this.instanceId;
        if (i9 != 0 && (iLightSDKServiceInterface = lightSDKServiceInterface) != null) {
            try {
                iLightSDKServiceInterface.removeSdkInstance(i9);
            } catch (RemoteException e10) {
                e10.printStackTrace();
            }
        } else if (this.nativeHandle != 0) {
            nativeFinalize();
        }
    }

    public HashMap<String, String> getAssetData() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return LightDataUtils.bundle2HashMap(iLightSDKServiceInterface.controllerGetAssetData(this.instanceId));
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetAssetData();
    }

    public AudioPlaceHolder[] getAudioPlaceHolders() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.controllerGetAudioPlaceHolders(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetAudioPlaceHolders();
    }

    public RectF getBoundsByKey(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.controllerGetBoundsByKey(this.instanceId, str);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetBoundsByKey(str);
    }

    public TextPlaceHolder getEditableTextUnderPoint(float f10, float f11) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.controllerGetEditableTextUnderPoint(this.instanceId, f10, f11);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetEditableTextUnderPoint(f10, f11);
    }

    public List<WMElement> getEditableWMElement() {
        ArrayList arrayList = new ArrayList();
        WMElement[] editableWMItems = getEditableWMItems();
        if (editableWMItems == null) {
            return arrayList;
        }
        for (WMElement wMElement : editableWMItems) {
            wMElement.controller = this;
            arrayList.add(wMElement);
        }
        return arrayList;
    }

    public WMElement[] getEditableWMItems() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.controllerGetEditableWMItems(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetEditableWMItems();
    }

    public int[] getEntitiesUnderPoint(float f10, float f11) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.controllerGetEntitiesUnderPoint(this.instanceId, f10, f11);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetEntitiesUnderPoint(f10, f11);
    }

    public int getInstanceId() {
        return this.instanceId;
    }

    public String[] getSoundEffectIDs() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.controllerGetSoundEffectIDs(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetSoundEffectIDs();
    }

    public TextPlaceHolder[] getTextPlaceHolderByEntityId(int i9) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.controllerGetTextPlaceHolderByEntityId(this.instanceId, i9);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetTextPlaceHolderByEntityId(i9);
    }

    public TextPlaceHolder[] getTextPlaceHolders() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.controllerGetTextPlaceHolders(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetTextPlaceHolders();
    }

    public TimeLine[] getTimeLines() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.controllerGetTimeLines(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetTimeLines();
    }

    public boolean hasAudio() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.controllerHasAudio(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeHasAudio();
    }

    public boolean hasSpecificMakeUpType(int i9) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.controllerHasSpecificMakeUpType(this.instanceId, i9);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeHasSpecificMakeUpType(i9);
    }

    public void removeComponent(int i9, String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.controllerRemoveComponent(this.instanceId, i9, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeRemoveComponent(i9, str);
    }

    public void removeComponentUpdateMonitor(int i9) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.controllerRemoveComponentUpdateMonitor(this.instanceId, i9);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeRemoveComponentUpdateMonitor(i9);
    }

    public void removeEntity(int i9) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.controllerRemoveEntity(this.instanceId, i9);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeRemoveEntity(i9);
    }

    public void replaceAudioAsset(String str, AudioAsset audioAsset) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.controllerReplaceAudioAsset(this.instanceId, str, audioAsset);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeReplaceAudioAsset(str, audioAsset);
    }

    public void resetAsset() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.controllerResetAsset(this.instanceId);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeResetAsset();
    }

    public void setAssetData(HashMap<String, String> hashMap) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.controllerSetAssetData(this.instanceId, LightDataUtils.map2Bundle(hashMap));
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetAssetData(hashMap);
    }

    public void setComponentUpdateCallback(final ComponentUpdateCallback componentUpdateCallback) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.controllerSetComponentUpdateCallback(this.instanceId, componentUpdateCallback == null ? null : new AIDLComponentUpdateCallback.Stub() { // from class: org.light.Controller.2
                    @Override // org.light.callback.AIDLComponentUpdateCallback
                    public void onComponentUpdate(String str) throws RemoteException {
                        componentUpdateCallback.onComponentUpdated(str);
                    }
                });
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetComponentUpdateCallback(componentUpdateCallback);
    }

    public void setExternalAudioProcessor(HashMap<String, IExternalAudioProcessor> hashMap) {
        if (lightSDKServiceInterface != null) {
            Bundle bundle = null;
            if (hashMap != null) {
                try {
                    bundle = new Bundle();
                    for (final Map.Entry<String, IExternalAudioProcessor> entry : hashMap.entrySet()) {
                        bundle.putBinder(entry.getKey(), new AIDLIExternalAudioProcessor.Stub() { // from class: org.light.Controller.4
                            @Override // org.light.AIDLIExternalAudioProcessor
                            public AudioFrame process(String str, AudioFrame audioFrame) throws RemoteException {
                                return ((IExternalAudioProcessor) entry.getValue()).process(str, audioFrame);
                            }
                        });
                    }
                } catch (RemoteException e10) {
                    LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                    return;
                }
            }
            lightSDKServiceInterface.controllerSetExternalAudioProcessor(this.instanceId, bundle);
            return;
        }
        nativeSetExternalAudioProcessor(hashMap);
    }

    public void setInstanceId(int i9) {
        this.instanceId = i9;
    }

    public void setLightEngine(WeakReference<LightEngine> weakReference) {
        this.weakEngine = weakReference;
    }

    public void setMaterialClipAssets(String str, ClipAsset[] clipAssetArr) {
        setMaterialClipAssets(str, clipAssetArr, null);
    }

    public void setTextAsset(String str, TextAsset textAsset) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.controllerSetTextAsset(this.instanceId, str, textAsset);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetTextAsset(str, textAsset);
    }

    public void setWillReadSampleCallback(final WillReadSampleCallback willReadSampleCallback) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.controllerSetWillReadSampleCallback(this.instanceId, willReadSampleCallback == null ? null : new AIDLWillReadSampleCallback.Stub() { // from class: org.light.Controller.3
                    @Override // org.light.callback.AIDLWillReadSampleCallback
                    public void beforeReadSample() throws RemoteException {
                        willReadSampleCallback.beforeReadSample();
                    }
                });
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetWillReadSampleCallback(willReadSampleCallback);
    }

    public abstract int type();

    public void updateComponent(int i9, String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.controllerUpdateComponent(this.instanceId, i9, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeUpdateComponent(i9, str);
    }

    public void updateResource(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.controllerUpdateResource(this.instanceId, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeUpdateResource(str);
    }

    public void setMaterialClipAssets(String str, ClipAsset[] clipAssetArr, final FaceDetectCallback faceDetectCallback) {
        Bundle bundle;
        if (lightSDKServiceInterface != null) {
            AIDLFaceDetectCallback.Stub stub = null;
            if (clipAssetArr != null) {
                try {
                    bundle = new Bundle();
                    bundle.putParcelableArray("ClipAsset", clipAssetArr);
                } catch (RemoteException e10) {
                    LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                    return;
                }
            } else {
                bundle = null;
            }
            ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
            int i9 = this.instanceId;
            if (faceDetectCallback != null) {
                stub = new AIDLFaceDetectCallback.Stub() { // from class: org.light.Controller.1
                    @Override // org.light.AIDLFaceDetectCallback
                    public void callback(LightImageFaceDetectResult[] lightImageFaceDetectResultArr) throws RemoteException {
                        faceDetectCallback.callback(lightImageFaceDetectResultArr);
                    }
                };
            }
            iLightSDKServiceInterface.controllerSetMaterialClipAssets(i9, str, bundle, stub);
            return;
        }
        nativeSetMaterialClipAssets(str, clipAssetArr, faceDetectCallback);
    }
}
