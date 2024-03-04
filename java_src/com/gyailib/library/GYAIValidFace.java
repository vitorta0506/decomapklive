package com.gyailib.library;

import android.graphics.Bitmap;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class GYAIValidFace {
    public HashMap<String, Float> faceMap;
    private long nativePtr;

    public native int cleanupModelData();

    public native Bitmap falignImageWithPoints(Bitmap bitmap, float[] fArr, int i9);

    public native int fittingAvatarExpresssionWeights(Bitmap bitmap, float[] fArr, float f10, HashMap hashMap, int i9);

    public long getNativePtr() {
        return this.nativePtr;
    }

    public native int initInstance(SDKDeviceConfig sDKDeviceConfig);

    public void setNativePtr(long j10) {
        this.nativePtr = j10;
    }

    public void setValidFaceMap(String str, float f10) {
        this.faceMap.put(str, Float.valueOf(f10));
    }

    public native int setupWithModel(SDKModelConfig sDKModelConfig);

    public native int validatePhotoQuality(Bitmap bitmap, float[] fArr, ValidFacePhotoQuality validFacePhotoQuality, int i9);
}
