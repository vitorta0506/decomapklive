package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.videobase.utils.Rotation;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class ServerVideoProducerConfig {
    private Boolean hardwareEncoderBitrateModeCBRSupported;
    private int hardwareEncodeType = 2;
    private boolean hardwareEncoderHighProfileEnable = true;
    private boolean hardwareEncoderHighProfileSupport = true;
    private int camera2SupportMinApiLevel = Integer.MAX_VALUE;
    private Rotation frontCameraRealRotation = null;
    private Rotation backCameraRealRotation = null;

    public static boolean isHWHevcEncodeAllowed() {
        return nativeIsHardwareHevcEncodeAllowed();
    }

    private static native boolean nativeIsHardwareHevcEncodeAllowed();

    public int getCamera2SupportMinApiLevel() {
        return this.camera2SupportMinApiLevel;
    }

    public Rotation getCameraRealRotation(boolean z10) {
        return z10 ? this.frontCameraRealRotation : this.backCameraRealRotation;
    }

    public boolean isHardwareEncoderAllowed() {
        return this.hardwareEncodeType != 0;
    }

    public Boolean isHardwareEncoderBitrateModeCBRSupported() {
        return this.hardwareEncoderBitrateModeCBRSupported;
    }

    public boolean isHardwareEncoderHighProfileAllowed() {
        return this.hardwareEncodeType == 2 && this.hardwareEncoderHighProfileEnable && this.hardwareEncoderHighProfileSupport;
    }

    @CalledByNative
    public void setCamera2SupportMinApiLevel(int i9) {
        this.camera2SupportMinApiLevel = i9;
    }

    @CalledByNative
    public void setCameraRealRotation(int i9, int i10) {
        this.frontCameraRealRotation = Rotation.b(i9) ? Rotation.a(i9) : null;
        this.backCameraRealRotation = Rotation.b(i10) ? Rotation.a(i10) : null;
    }

    @CalledByNative
    public void setHardwareEncodeType(int i9) {
        this.hardwareEncodeType = i9;
    }

    @CalledByNative
    public void setHardwareEncoderBitrateModeCBRSupported(boolean z10) {
        this.hardwareEncoderBitrateModeCBRSupported = Boolean.valueOf(z10);
    }

    @CalledByNative
    public void setHardwareEncoderHighProfileEnable(boolean z10) {
        this.hardwareEncoderHighProfileEnable = z10;
    }

    @CalledByNative
    public void setHardwareEncoderHighProfileSupport(boolean z10) {
        this.hardwareEncoderHighProfileSupport = z10;
    }
}
