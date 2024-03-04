package com.tencent.liteav.device;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.device.TXDeviceManager;
@JNINamespace("liteav::manager")
/* loaded from: classes4.dex */
public class TXDeviceManagerImpl implements TXDeviceManager {
    private long mNativeDeviceMgr;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.device.TXDeviceManagerImpl$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXAudioRoute;
        static final /* synthetic */ int[] $SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXCameraCaptureMode;
        static final /* synthetic */ int[] $SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXSystemVolumeType;

        static {
            int[] iArr = new int[TXDeviceManager.TXCameraCaptureMode.values().length];
            $SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXCameraCaptureMode = iArr;
            try {
                iArr[TXDeviceManager.TXCameraCaptureMode.TXCameraResolutionStrategyAuto.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXCameraCaptureMode[TXDeviceManager.TXCameraCaptureMode.TXCameraResolutionStrategyPerformance.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXCameraCaptureMode[TXDeviceManager.TXCameraCaptureMode.TXCameraResolutionStrategyHighQuality.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXCameraCaptureMode[TXDeviceManager.TXCameraCaptureMode.TXCameraCaptureManual.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[TXDeviceManager.TXAudioRoute.values().length];
            $SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXAudioRoute = iArr2;
            try {
                iArr2[TXDeviceManager.TXAudioRoute.TXAudioRouteSpeakerphone.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXAudioRoute[TXDeviceManager.TXAudioRoute.TXAudioRouteEarpiece.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[TXDeviceManager.TXSystemVolumeType.values().length];
            $SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXSystemVolumeType = iArr3;
            try {
                iArr3[TXDeviceManager.TXSystemVolumeType.TXSystemVolumeTypeAuto.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXSystemVolumeType[TXDeviceManager.TXSystemVolumeType.TXSystemVolumeTypeMedia.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXSystemVolumeType[TXDeviceManager.TXSystemVolumeType.TXSystemVolumeTypeVOIP.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* loaded from: classes4.dex */
    static class CameraCaptureParam {
        private TXDeviceManager.TXCameraCaptureParam mParams;

        public CameraCaptureParam(TXDeviceManager.TXCameraCaptureParam tXCameraCaptureParam) {
            this.mParams = tXCameraCaptureParam;
        }

        @CalledByNative("CameraCaptureParam")
        public int getHeight() {
            return this.mParams.height;
        }

        @CalledByNative("CameraCaptureParam")
        public int getMode() {
            return TXDeviceManagerImpl.cameraCaptureModeAsInt(this.mParams.mode);
        }

        @CalledByNative("CameraCaptureParam")
        public int getWidth() {
            return this.mParams.width;
        }
    }

    public TXDeviceManagerImpl(long j10) {
        this.mNativeDeviceMgr = j10;
    }

    public static int audioRouteAsInt(TXDeviceManager.TXAudioRoute tXAudioRoute) {
        int i9 = AnonymousClass1.$SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXAudioRoute[tXAudioRoute.ordinal()];
        return (i9 == 1 || i9 != 2) ? 0 : 1;
    }

    public static TXDeviceManager.TXAudioRoute audioRouteFromInt(int i9) {
        if (i9 == 0) {
            return TXDeviceManager.TXAudioRoute.TXAudioRouteSpeakerphone;
        }
        if (i9 == 1) {
            return TXDeviceManager.TXAudioRoute.TXAudioRouteEarpiece;
        }
        return TXDeviceManager.TXAudioRoute.TXAudioRouteSpeakerphone;
    }

    public static int cameraCaptureModeAsInt(TXDeviceManager.TXCameraCaptureMode tXCameraCaptureMode) {
        int i9 = AnonymousClass1.$SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXCameraCaptureMode[tXCameraCaptureMode.ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                return 1;
            }
            if (i9 == 3) {
                return 2;
            }
            if (i9 == 4) {
                return 3;
            }
        }
        return 0;
    }

    public static TXDeviceManager.TXCameraCaptureMode cameraCaptureModeFromInt(int i9) {
        if (i9 == 0) {
            return TXDeviceManager.TXCameraCaptureMode.TXCameraResolutionStrategyAuto;
        }
        if (i9 == 1) {
            return TXDeviceManager.TXCameraCaptureMode.TXCameraResolutionStrategyPerformance;
        }
        if (i9 == 2) {
            return TXDeviceManager.TXCameraCaptureMode.TXCameraResolutionStrategyHighQuality;
        }
        if (i9 == 3) {
            return TXDeviceManager.TXCameraCaptureMode.TXCameraCaptureManual;
        }
        return TXDeviceManager.TXCameraCaptureMode.TXCameraResolutionStrategyAuto;
    }

    private static native void nativeDestroy(long j10);

    private static native int nativeEnableCameraAutoFocus(long j10, boolean z10);

    private static native boolean nativeEnableCameraTorch(long j10, boolean z10);

    private static native float nativeGetCameraZoomMaxRatio(long j10);

    private static native boolean nativeIsAutoFocusEnabled(long j10);

    private static native boolean nativeIsCameraAutoFocusFaceModeSupported(long j10);

    private static native boolean nativeIsCameraFocusPositionInPreviewSupported(long j10);

    private static native boolean nativeIsCameraTorchSupported(long j10);

    private static native boolean nativeIsCameraZoomSupported(long j10);

    private static native boolean nativeIsFrontCamera(long j10);

    private static native boolean nativeIsLowLatencyEarMonitorSupported(long j10);

    private static native int nativeSetAudioRoute(long j10, int i9);

    private static native void nativeSetCameraCapturerParam(long j10, CameraCaptureParam cameraCaptureParam);

    private static native int nativeSetCameraFocusPosition(long j10, int i9, int i10);

    private static native int nativeSetCameraZoomRatio(long j10, float f10);

    private static native int nativeSetSystemVolumeType(long j10, int i9);

    private static native int nativeSwitchCamera(long j10, boolean z10);

    public static int systemVolumeTypeAsInt(TXDeviceManager.TXSystemVolumeType tXSystemVolumeType) {
        int i9 = AnonymousClass1.$SwitchMap$com$tencent$liteav$device$TXDeviceManager$TXSystemVolumeType[tXSystemVolumeType.ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                return 1;
            }
            if (i9 == 3) {
                return 2;
            }
        }
        return 0;
    }

    public static TXDeviceManager.TXSystemVolumeType systemVolumeTypefromInt(int i9) {
        if (i9 == 0) {
            return TXDeviceManager.TXSystemVolumeType.TXSystemVolumeTypeAuto;
        }
        if (i9 == 1) {
            return TXDeviceManager.TXSystemVolumeType.TXSystemVolumeTypeMedia;
        }
        if (i9 == 2) {
            return TXDeviceManager.TXSystemVolumeType.TXSystemVolumeTypeVOIP;
        }
        return TXDeviceManager.TXSystemVolumeType.TXSystemVolumeTypeAuto;
    }

    @Override // com.tencent.liteav.device.TXDeviceManager
    public int enableCameraAutoFocus(boolean z10) {
        long j10 = this.mNativeDeviceMgr;
        if (j10 != 0) {
            return nativeEnableCameraAutoFocus(j10, z10);
        }
        return 0;
    }

    @Override // com.tencent.liteav.device.TXDeviceManager
    public boolean enableCameraTorch(boolean z10) {
        long j10 = this.mNativeDeviceMgr;
        if (j10 != 0) {
            return nativeEnableCameraTorch(j10, z10);
        }
        return false;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        long j10 = this.mNativeDeviceMgr;
        if (j10 != 0) {
            nativeDestroy(j10);
            this.mNativeDeviceMgr = 0L;
        }
    }

    @Override // com.tencent.liteav.device.TXDeviceManager
    public float getCameraZoomMaxRatio() {
        long j10 = this.mNativeDeviceMgr;
        if (j10 != 0) {
            return nativeGetCameraZoomMaxRatio(j10);
        }
        return 0.0f;
    }

    @Override // com.tencent.liteav.device.TXDeviceManager
    public boolean isAutoFocusEnabled() {
        long j10 = this.mNativeDeviceMgr;
        if (j10 != 0) {
            return nativeIsAutoFocusEnabled(j10);
        }
        return false;
    }

    public boolean isCameraAutoFocusFaceModeSupported() {
        long j10 = this.mNativeDeviceMgr;
        if (j10 == 0) {
            return false;
        }
        return nativeIsCameraAutoFocusFaceModeSupported(j10);
    }

    public boolean isCameraFocusPositionInPreviewSupported() {
        long j10 = this.mNativeDeviceMgr;
        if (j10 == 0) {
            return false;
        }
        return nativeIsCameraFocusPositionInPreviewSupported(j10);
    }

    public boolean isCameraTorchSupported() {
        long j10 = this.mNativeDeviceMgr;
        if (j10 == 0) {
            return false;
        }
        return nativeIsCameraTorchSupported(j10);
    }

    public boolean isCameraZoomSupported() {
        long j10 = this.mNativeDeviceMgr;
        if (j10 != 0) {
            return nativeIsCameraZoomSupported(j10);
        }
        return false;
    }

    @Override // com.tencent.liteav.device.TXDeviceManager
    public boolean isFrontCamera() {
        long j10 = this.mNativeDeviceMgr;
        if (j10 != 0) {
            return nativeIsFrontCamera(j10);
        }
        return false;
    }

    public boolean isLowLatencyEarMonitorSupported() {
        long j10 = this.mNativeDeviceMgr;
        if (j10 != 0) {
            return nativeIsLowLatencyEarMonitorSupported(j10);
        }
        return false;
    }

    @Override // com.tencent.liteav.device.TXDeviceManager
    public int setAudioRoute(TXDeviceManager.TXAudioRoute tXAudioRoute) {
        long j10 = this.mNativeDeviceMgr;
        if (j10 != 0) {
            return nativeSetAudioRoute(j10, audioRouteAsInt(tXAudioRoute));
        }
        return 0;
    }

    @Override // com.tencent.liteav.device.TXDeviceManager
    public void setCameraCapturerParam(TXDeviceManager.TXCameraCaptureParam tXCameraCaptureParam) {
        long j10 = this.mNativeDeviceMgr;
        if (j10 != 0) {
            nativeSetCameraCapturerParam(j10, new CameraCaptureParam(tXCameraCaptureParam));
        }
    }

    @Override // com.tencent.liteav.device.TXDeviceManager
    public int setCameraFocusPosition(int i9, int i10) {
        long j10 = this.mNativeDeviceMgr;
        if (j10 != 0) {
            return nativeSetCameraFocusPosition(j10, i9, i10);
        }
        return 0;
    }

    @Override // com.tencent.liteav.device.TXDeviceManager
    public int setCameraZoomRatio(float f10) {
        long j10 = this.mNativeDeviceMgr;
        if (j10 != 0) {
            return nativeSetCameraZoomRatio(j10, f10);
        }
        return 0;
    }

    @Override // com.tencent.liteav.device.TXDeviceManager
    public int setSystemVolumeType(TXDeviceManager.TXSystemVolumeType tXSystemVolumeType) {
        long j10 = this.mNativeDeviceMgr;
        if (j10 != 0) {
            return nativeSetSystemVolumeType(j10, systemVolumeTypeAsInt(tXSystemVolumeType));
        }
        return 0;
    }

    @Override // com.tencent.liteav.device.TXDeviceManager
    public int switchCamera(boolean z10) {
        long j10 = this.mNativeDeviceMgr;
        if (j10 != 0) {
            return nativeSwitchCamera(j10, z10);
        }
        return 0;
    }
}
