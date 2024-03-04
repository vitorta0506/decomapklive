package com.gyailib.library;
/* loaded from: classes4.dex */
public class GYAIDeviceQuery {
    static {
        try {
            System.loadLibrary("c++_shared");
            System.loadLibrary("light_device_query");
        } catch (Error e10) {
            e10.printStackTrace();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public native String getBundleNameFromLevel(int i9);
}
