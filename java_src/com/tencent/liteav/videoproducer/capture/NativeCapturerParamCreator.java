package com.tencent.liteav.videoproducer.capture;

import android.graphics.Bitmap;
import android.media.projection.MediaProjection;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import com.tencent.liteav.videoproducer.capture.ScreenCapturer;
import com.tencent.liteav.videoproducer.capture.VirtualCamera;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class NativeCapturerParamCreator {
    @CalledByNative
    public static Boolean createBooleanWithValue(boolean z10) {
        return Boolean.valueOf(z10);
    }

    @CalledByNative
    public static CameraCaptureParams createCameraParams(Boolean bool, int i9, int i10, int i11) {
        CameraCaptureParams cameraCaptureParams = new CameraCaptureParams();
        cameraCaptureParams.f32476a = bool;
        cameraCaptureParams.f32481b = i9;
        cameraCaptureParams.f32482c = i10;
        cameraCaptureParams.f32483d = i11;
        return cameraCaptureParams;
    }

    @CalledByNative
    public static ScreenCapturer.ScreenCaptureParams createScreenParams(boolean z10, int i9, int i10, int i11, MediaProjection mediaProjection) {
        ScreenCapturer.ScreenCaptureParams screenCaptureParams = new ScreenCapturer.ScreenCaptureParams();
        screenCaptureParams.f32513a = z10;
        screenCaptureParams.f32481b = i9;
        screenCaptureParams.f32482c = i10;
        screenCaptureParams.f32483d = i11;
        screenCaptureParams.f32514f = mediaProjection;
        return screenCaptureParams;
    }

    @CalledByNative
    public static CaptureSourceInterface.SourceType createSourceType(int i9) {
        return CaptureSourceInterface.SourceType.a(i9);
    }

    @CalledByNative
    public static VirtualCamera.VirtualCameraParams createVirtualParams(Bitmap bitmap, int i9, int i10, int i11) {
        VirtualCamera.VirtualCameraParams virtualCameraParams = new VirtualCamera.VirtualCameraParams();
        virtualCameraParams.f32522a = bitmap;
        virtualCameraParams.f32481b = i9;
        virtualCameraParams.f32482c = i10;
        virtualCameraParams.f32483d = i11;
        return virtualCameraParams;
    }
}
