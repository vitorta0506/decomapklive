package com.tencent.liteav.device;
/* loaded from: classes4.dex */
public interface TXDeviceManager {

    /* loaded from: classes4.dex */
    public enum TXAudioRoute {
        TXAudioRouteSpeakerphone,
        TXAudioRouteEarpiece
    }

    /* loaded from: classes4.dex */
    public enum TXCameraCaptureMode {
        TXCameraResolutionStrategyAuto,
        TXCameraResolutionStrategyPerformance,
        TXCameraResolutionStrategyHighQuality,
        TXCameraCaptureManual
    }

    /* loaded from: classes4.dex */
    public static class TXCameraCaptureParam {
        public int height;
        public TXCameraCaptureMode mode;
        public int width;
    }

    /* loaded from: classes4.dex */
    public enum TXSystemVolumeType {
        TXSystemVolumeTypeAuto,
        TXSystemVolumeTypeMedia,
        TXSystemVolumeTypeVOIP
    }

    int enableCameraAutoFocus(boolean z10);

    boolean enableCameraTorch(boolean z10);

    float getCameraZoomMaxRatio();

    boolean isAutoFocusEnabled();

    boolean isFrontCamera();

    int setAudioRoute(TXAudioRoute tXAudioRoute);

    void setCameraCapturerParam(TXCameraCaptureParam tXCameraCaptureParam);

    int setCameraFocusPosition(int i9, int i10);

    int setCameraZoomRatio(float f10);

    int setSystemVolumeType(TXSystemVolumeType tXSystemVolumeType);

    int switchCamera(boolean z10);
}
