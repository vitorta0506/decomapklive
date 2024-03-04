package com.gyailib.library;

import android.graphics.Bitmap;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class GYTrackSticker {
    private long nativePtr;

    public native int clearCachedData();

    public native int destroyInstance();

    public native int detect(Bitmap bitmap, GYTrackStickerInfo gYTrackStickerInfo);

    public native int getAnchorFrameStatus();

    public long getNativePtr() {
        return this.nativePtr;
    }

    public native int getSmoothedResult(ArrayList<GYTrackStickerInfo> arrayList);

    public native int initInstance(SDKDeviceConfig sDKDeviceConfig);

    public native int resetToAnchorFrame();

    public void setNativePtr(long j10) {
        this.nativePtr = j10;
    }

    public native int setupWithModel(SDKModelConfig sDKModelConfig);

    public native int track(Bitmap bitmap, GYTrackStickerInfo gYTrackStickerInfo, int i9);
}
