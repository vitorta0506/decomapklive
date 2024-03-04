package com.gyailib.library;

import android.graphics.Bitmap;
import com.facebook.internal.ServerProtocol;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class GYAIKeyPoints {
    public static final int TYPE_CAT = 1;
    public static final int TYPE_FULL_BODY = 2;
    private long nativePtr;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface KeyPointsType {
    }

    public native int cleanupModelData();

    public native int forwardDetect(Bitmap bitmap, GYDetectCommonResultStruct gYDetectCommonResultStruct, int i9);

    public long getNativePtr() {
        return this.nativePtr;
    }

    public native int initInstance(SDKDeviceConfig sDKDeviceConfig);

    public int initInstance(SDKDeviceConfig sDKDeviceConfig, int i9) {
        if (i9 == 2) {
            HashMap hashMap = new HashMap();
            hashMap.put("type_full_body", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            sDKDeviceConfig.setInfos(hashMap);
        }
        return initInstance(sDKDeviceConfig);
    }

    public void setNativePtr(long j10) {
        this.nativePtr = j10;
    }

    public native int setupWithModel(SDKModelConfig sDKModelConfig);
}
