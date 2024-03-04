package com.gyailib.library;

import android.graphics.Bitmap;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
/* loaded from: classes4.dex */
public class GYAIBody3D {
    private long nativePtr;

    public static String getCpuName() {
        try {
            return new BufferedReader(new FileReader("/proc/cpuinfo")).readLine().split(":\\s+", 2)[1];
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return null;
        } catch (IOException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static String queryBundleLevelName(String str) {
        System.out.println(getCpuName());
        return str;
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
