package org.light;

import android.graphics.PointF;
import android.os.RemoteException;
import android.os.SystemClock;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.light.bean.ArFrameInfo;
import org.light.listener.AIDLFilaPositionCallback;
import org.light.listener.AIDLHitTestFilaCallback;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class CameraController extends Controller {
    private static final String TAG = "CameraController";

    /* loaded from: classes7.dex */
    public enum CameraViewType {
        BODY,
        HEAD
    }

    /* loaded from: classes7.dex */
    public interface CmShowCallback {
        void callback();
    }

    /* loaded from: classes7.dex */
    public enum DisplayType {
        NONE,
        ALL,
        HEAD
    }

    /* loaded from: classes7.dex */
    public interface FilaPositionCallback {
        void onGetResult(float[] fArr);
    }

    /* loaded from: classes7.dex */
    public interface HitTestFilaCallback {
        void onGetResult(long[] jArr);
    }

    /* loaded from: classes7.dex */
    public enum MorphType {
        BASIC,
        MIDDLE,
        ALL
    }

    private native void nativeGetFilamentAssetPosition(FilaPositionCallback filaPositionCallback);

    private native void nativeGetHitTestFilamentAssets(float[] fArr, HitTestFilaCallback hitTestFilaCallback);

    private native void nativePause3DAnimation();

    private native void nativeRegister3DAnimation(List<String> list);

    private native void nativeRelease();

    private native void nativeResume3DAnimation();

    private native void nativeRotateArModelToFront(int i9);

    private native void nativeSetARFrameInfo(ArFrameInfo arFrameInfo);

    private native void nativeSetHitTestAfterUnprojection(float[] fArr);

    private native void nativeSetSegmentationFastMode(boolean z10);

    private native void nativeSetUEFaceStr(String str);

    private native void nativeUpdateCameraTextureTimestamp(long j10);

    private native void nativeUpdateTouchEvent(int i9, long j10, long j11, int i10, float[][] fArr, int i11, int i12);

    private native void nativeUpdateTouchRotate(float[] fArr);

    private native void nativeUpdateTouchScale(float f10);

    private native void nativeUpdateViewParams(float[] fArr, float[] fArr2, float f10);

    private native void nativeUpdateVoiceDecibel(float f10);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.Controller
    public void finalize() throws Throwable {
        super.finalize();
        release();
    }

    public void getFilamentAssetPosition(final FilaPositionCallback filaPositionCallback) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerGetFilamentAssetPosition(this.instanceId, filaPositionCallback == null ? null : new AIDLFilaPositionCallback.Stub() { // from class: org.light.CameraController.2
                    @Override // org.light.listener.AIDLFilaPositionCallback
                    public void onGetResult(float[] fArr) throws RemoteException {
                        filaPositionCallback.onGetResult(fArr);
                    }
                });
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeGetFilamentAssetPosition(filaPositionCallback);
    }

    public void getHitTestFilamentAssets(float[] fArr, final HitTestFilaCallback hitTestFilaCallback) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerGetHitTestFilamentAssets(this.instanceId, fArr, hitTestFilaCallback == null ? null : new AIDLHitTestFilaCallback.Stub() { // from class: org.light.CameraController.1
                    @Override // org.light.listener.AIDLHitTestFilaCallback
                    public void onGetResult(long[] jArr) throws RemoteException {
                        hitTestFilaCallback.onGetResult(jArr);
                    }
                });
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeGetHitTestFilamentAssets(fArr, hitTestFilaCallback);
    }

    public void pause3DAnimation() {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerPause3DAnimation(this.instanceId);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativePause3DAnimation();
    }

    public void register3DAnimation(List<String> list) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerRegister3DAnimation(this.instanceId, list);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeRegister3DAnimation(list);
    }

    public void release() {
        LightEngine lightEngine;
        if (this.instanceId != 0 && Controller.lightSDKServiceInterface != null) {
            WeakReference<LightEngine> weakReference = this.weakEngine;
            if (weakReference != null && (lightEngine = weakReference.get()) != null) {
                lightEngine.setCameraTextureTimestamp(0, 0L);
            }
            try {
                Controller.lightSDKServiceInterface.cameraControllerRelease(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
            }
        } else if (this.nativeHandle != 0) {
            nativeRelease();
        }
    }

    public void resume3DAnimation() {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerResume3DAnimation(this.instanceId);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeResume3DAnimation();
    }

    public void rotateArModelToFront(int i9) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerRotateArModelToFront(this.instanceId, i9);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeRotateArModelToFront(i9);
    }

    public void setARFrameInfo(ArFrameInfo arFrameInfo) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerSetARFrameInfo(this.instanceId, arFrameInfo);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetARFrameInfo(arFrameInfo);
    }

    public native void setFaceStrWithGender(String str, int i9);

    public void setHitTestAfterUnprojection(float[] fArr) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerSetHitTestAfterUnprojection(this.instanceId, fArr);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetHitTestAfterUnprojection(fArr);
    }

    public native void setKapuAnimation(String str, CmShowCallback cmShowCallback);

    public native void setKapuCameraViewType(CameraViewType cameraViewType);

    public native void setKapuDisplayType(DisplayType displayType);

    public native void setKapuModel(HashMap<String, String> hashMap, String str, CmShowCallback cmShowCallback);

    public void setSegmentationFastMode(boolean z10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerSetSegmentationFastMode(this.instanceId, z10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetSegmentationFastMode(z10);
    }

    public void setUEFaceStr(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerSetUEFaceStr(this.instanceId, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetUEFaceStr(str);
    }

    @Override // org.light.Controller
    public int type() {
        return 1;
    }

    public void updateCameraTextureTimestamp(long j10) {
        LightEngine lightEngine;
        if (Controller.lightSDKServiceInterface != null) {
            WeakReference<LightEngine> weakReference = this.weakEngine;
            if (weakReference == null || (lightEngine = weakReference.get()) == null) {
                return;
            }
            lightEngine.setCameraTextureTimestamp(this.instanceId, j10);
            return;
        }
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos() / 1000000;
        long uptimeMillis = SystemClock.uptimeMillis();
        long j11 = elapsedRealtimeNanos - uptimeMillis;
        if (Math.abs(elapsedRealtimeNanos - j10) > Math.abs(uptimeMillis - j10)) {
            j10 += j11;
        }
        nativeUpdateCameraTextureTimestamp(j10);
    }

    public native void updateKapuMorph(MorphType morphType);

    public void updateTouchEvent(int i9, long j10, long j11, ArrayList<PointF> arrayList, int i10, int i11) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerUpdateTouchEvent(this.instanceId, i9, j10, j11, arrayList, i10, i11);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        int size = arrayList.size();
        if (size <= 0) {
            return;
        }
        float[][] fArr = (float[][]) Array.newInstance(float.class, size, 2);
        for (int i12 = 0; i12 < size; i12++) {
            fArr[i12][0] = arrayList.get(i12).x;
            fArr[i12][1] = arrayList.get(i12).y;
        }
        nativeUpdateTouchEvent(i9, j10, j11, size, fArr, i10, i11);
    }

    public void updateTouchRotate(float[] fArr) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerUpdateTouchRotate(this.instanceId, fArr);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeUpdateTouchRotate(fArr);
    }

    public void updateTouchScale(float f10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerUpdateTouchScale(this.instanceId, f10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeUpdateTouchScale(f10);
    }

    public void updateViewParams(float[] fArr, float[] fArr2, float f10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerUpdateViewParams(this.instanceId, fArr, fArr2, f10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeUpdateViewParams(fArr, fArr2, f10);
    }

    public void updateVoiceDecibel(float f10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = Controller.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraControllerUpdateVoiceDecibel(this.instanceId, f10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeUpdateVoiceDecibel(f10);
    }
}
