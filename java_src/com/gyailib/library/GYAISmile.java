package com.gyailib.library;

import android.graphics.Bitmap;
/* loaded from: classes4.dex */
public class GYAISmile {
    private long nativePtr;

    public native int deinit();

    public native int detect(Bitmap bitmap, int i9, int i10, int i11, int i12);

    public long getNativePtr() {
        return this.nativePtr;
    }

    public native int init(SDKModelConfig sDKModelConfig);

    public void setNativePtr(long j10) {
        this.nativePtr = j10;
    }
}
