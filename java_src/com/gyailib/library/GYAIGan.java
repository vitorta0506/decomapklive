package com.gyailib.library;

import android.graphics.Bitmap;
/* loaded from: classes4.dex */
public class GYAIGan {
    private long nativePtr;

    public native int cleanupModelData();

    public native Bitmap forward(Bitmap bitmap, Bitmap bitmap2, int i9);

    public long getNativePtr() {
        return this.nativePtr;
    }

    public native int initInstance(SDKDeviceConfig sDKDeviceConfig, SDKGanConvertConfig sDKGanConvertConfig);

    public void setNativePtr(long j10) {
        this.nativePtr = j10;
    }

    public native int setupWithModel(SDKModelConfig sDKModelConfig);
}
