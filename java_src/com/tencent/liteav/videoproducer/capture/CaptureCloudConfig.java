package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.videobase.utils.Rotation;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class CaptureCloudConfig {
    private Rotation frontCameraRealRotation = null;
    private Rotation backCameraRealRotation = null;
    private int camera2SupportMinApiLevel = Integer.MAX_VALUE;

    public int getCamera2SupportMinApiLevel() {
        return this.camera2SupportMinApiLevel;
    }

    public Rotation getCameraRealRotation(boolean z10) {
        return z10 ? this.frontCameraRealRotation : this.backCameraRealRotation;
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
}
