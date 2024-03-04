package com.gyailib.library;

import android.graphics.Bitmap;
/* loaded from: classes4.dex */
public class GYAIFace {
    private long nativePtr;

    public native int cleanupModelData();

    public native int clearCachedData();

    public native int forwardDetect(Bitmap bitmap, FaceDetector faceDetector, int i9);

    public long getNativePtr() {
        return this.nativePtr;
    }

    public native int initInstance(SDKDeviceConfig sDKDeviceConfig);

    @Deprecated
    public native int registerFaceLicense(String str);

    public void setNativePtr(long j10) {
        this.nativePtr = j10;
    }

    public native int setupWithModel(SDKModelConfig sDKModelConfig);
}
