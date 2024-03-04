package com.gyailib.library;

import android.graphics.Bitmap;
/* loaded from: classes4.dex */
public class GYAssessPicQuality {
    private long nativePtr;

    public native int cleanupModelData();

    public native int clearCachedData();

    public native int forward(Bitmap bitmap, GYDetectCommonResultStruct gYDetectCommonResultStruct, double d10, int i9);

    public native int getHDROption();

    public long getNativePtr() {
        return this.nativePtr;
    }

    public native int getPicEnhanceOption(GYAssessPicQualityOption gYAssessPicQualityOption);

    public native int initInstance(SDKDeviceConfig sDKDeviceConfig);

    public void setNativePtr(long j10) {
        this.nativePtr = j10;
    }

    public native int setupWithModel(SDKModelConfig sDKModelConfig);

    public native int setupWithPicQualityInfo(GYAssessPicQualityInfo gYAssessPicQualityInfo);
}
