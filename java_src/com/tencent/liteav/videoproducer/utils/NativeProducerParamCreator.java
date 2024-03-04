package com.tencent.liteav.videoproducer.utils;

import android.graphics.Bitmap;
import android.media.projection.MediaProjection;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.common.SnapshotSourceType;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videoproducer.capture.CameraCaptureParams;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import com.tencent.liteav.videoproducer.capture.ScreenCapturer;
import com.tencent.liteav.videoproducer.capture.VirtualCamera;
import com.tencent.liteav.videoproducer.encoder.NativeEncoderDataListener;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class NativeProducerParamCreator {
    private static final String TAG = "CaptureParamsHelper";

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
    public static VideoEncoderDef.EncodeStrategy createEncoderStrategy(int i9) {
        return VideoEncoderDef.EncodeStrategy.a(i9);
    }

    @CalledByNative
    public static VideoProducerDef.GSensorMode createGSensorMode(int i9) {
        return VideoProducerDef.GSensorMode.a(i9);
    }

    @CalledByNative
    public static VideoProducerDef.HomeOrientation createHomeOrientation(int i9) {
        return VideoProducerDef.HomeOrientation.a(i9);
    }

    @CalledByNative
    public static GLConstants.MirrorMode createMirrorMode(int i9) {
        return GLConstants.MirrorMode.a(i9);
    }

    @CalledByNative
    public static NativeEncoderDataListener createNativeEncoderDataListener(long j10, int i9) {
        return new NativeEncoderDataListener(j10, i9);
    }

    @CalledByNative
    public static GLConstants.Orientation createOrientation(int i9) {
        return GLConstants.Orientation.a(i9);
    }

    @CalledByNative
    public static GLConstants.PixelBufferType createPixelBufferType(int i9) {
        return GLConstants.PixelBufferType.a(i9);
    }

    @CalledByNative
    public static GLConstants.PixelFormatType createPixelFormatType(int i9) {
        return GLConstants.PixelFormatType.a(i9);
    }

    @CalledByNative
    public static VideoProducerDef.ProducerMode createProducerMode(int i9) {
        return VideoProducerDef.ProducerMode.a(i9);
    }

    @CalledByNative
    public static Rotation createRotation(int i9) {
        return Rotation.a(i9);
    }

    @CalledByNative
    public static GLConstants.GLScaleType createScaleType(int i9) {
        return GLConstants.GLScaleType.a(i9);
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
    public static SnapshotSourceType createSnapshotSourceType(int i9) {
        return SnapshotSourceType.a(i9);
    }

    @CalledByNative
    public static CaptureSourceInterface.SourceType createSourceType(int i9) {
        return CaptureSourceInterface.SourceType.a(i9);
    }

    @CalledByNative
    public static VideoProducerDef.StreamType createStreamType(int i9) {
        return VideoProducerDef.StreamType.a(i9);
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
