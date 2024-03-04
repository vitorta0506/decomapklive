package com.gyailib.library;

import android.graphics.Bitmap;
import android.graphics.Rect;
/* loaded from: classes4.dex */
public class GYAIEmotionScore {
    private long nativePtr;

    public native int cleanupModelData();

    public native int forwardDetect(Bitmap bitmap, Rect rect, float[] fArr, GYDetectCommonResultStruct gYDetectCommonResultStruct, int i9);

    public long getNativePtr() {
        return this.nativePtr;
    }

    public native int initInstance(SDKDeviceConfig sDKDeviceConfig);

    public void setNativePtr(long j10) {
        this.nativePtr = j10;
    }

    public native int setupWithModel(SDKModelConfig sDKModelConfig);
}
