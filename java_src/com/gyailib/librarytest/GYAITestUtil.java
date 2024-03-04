package com.gyailib.librarytest;

import android.graphics.Bitmap;
import com.gyailib.library.GYDetectCommonResultStruct;
/* loaded from: classes4.dex */
public class GYAITestUtil {
    static {
        try {
            System.loadLibrary("c++_shared");
            System.loadLibrary("gy_test_all");
        } catch (Error e10) {
            e10.printStackTrace();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public static native double[][] compareDetectCommonResult(GYDetectCommonResultStruct gYDetectCommonResultStruct, GYDetectCommonResultStruct gYDetectCommonResultStruct2);

    public static native float differChannel(Bitmap bitmap, Bitmap bitmap2, float f10);

    public static native float[] iou(Bitmap bitmap, Bitmap bitmap2);
}
