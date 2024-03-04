package com.gyailib.library;

import android.graphics.Bitmap;
/* loaded from: classes4.dex */
public class GYAIInpainting {
    private long nativePtr;

    public long getNativePtr() {
        return this.nativePtr;
    }

    public native Bitmap inpainting(Bitmap bitmap, Bitmap bitmap2);

    public void setNativePtr(long j10) {
        this.nativePtr = j10;
    }
}
