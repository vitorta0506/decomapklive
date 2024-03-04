package com.gyailib.library;

import android.graphics.Bitmap;
/* loaded from: classes4.dex */
public class GYAIVideoClassify {
    private long nativePtr;

    public native int cleanupModelData();

    public native int forwardDetect(Bitmap bitmap, GYVideoClassifyResult gYVideoClassifyResult, int i9);

    public long getNativePtr() {
        return this.nativePtr;
    }

    public native int getResult(GYVideoClassifyResult gYVideoClassifyResult);

    public native int initInstance(SDKDeviceConfig sDKDeviceConfig);

    public void setNativePtr(long j10) {
        this.nativePtr = j10;
    }

    public native int setupWithModel(SDKModelConfig sDKModelConfig);
}
