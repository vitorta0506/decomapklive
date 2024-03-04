package com.gyailib.library;

import android.graphics.Bitmap;
/* loaded from: classes4.dex */
public class PicEnhanceProcessor {
    private long nativePtr;

    public native int cleanupModelData();

    public native Bitmap forward(Bitmap bitmap, PicEnhanceOptions picEnhanceOptions, double d10, int i9);

    public native int forwardTex(int i9, int i10, PicEnhanceOptions picEnhanceOptions, int i11);

    public long getNativePtr() {
        return this.nativePtr;
    }

    public native int initInstance(SDKDeviceConfig sDKDeviceConfig);

    public void setNativePtr(long j10) {
        this.nativePtr = j10;
    }

    public native int setupWithModel(SDKModelConfig sDKModelConfig);
}
