package com.gyailib.library;

import android.graphics.Bitmap;
/* loaded from: classes4.dex */
public class GYAISceneChain {
    private long nativePtr;

    static {
        try {
            System.loadLibrary("c++_shared");
            System.loadLibrary("TNN");
            System.loadLibrary("light_ai_base");
            System.loadLibrary("light_detect_base");
            System.loadLibrary("light_detect_face");
            System.loadLibrary("light_detect_gender");
            System.loadLibrary("light_detect_scene_chain");
        } catch (Error e10) {
            e10.printStackTrace();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public native int cleanupModelData();

    public native int forwardDetect(Bitmap bitmap, GYDetectCommonResultStruct gYDetectCommonResultStruct, int i9);

    public long getNativePtr() {
        return this.nativePtr;
    }

    public native int initInstance(SDKDeviceConfig sDKDeviceConfig);

    public void setNativePtr(long j10) {
        this.nativePtr = j10;
    }

    public native int setupWithModel(SDKModelConfig sDKModelConfig);
}
