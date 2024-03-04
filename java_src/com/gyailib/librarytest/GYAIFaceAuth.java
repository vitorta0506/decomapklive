package com.gyailib.librarytest;
/* loaded from: classes4.dex */
public class GYAIFaceAuth {
    private long nativePtr;

    static {
        try {
            System.loadLibrary("all_in_one_so");
        } catch (Error e10) {
            e10.printStackTrace();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public long getNativePtr() {
        return this.nativePtr;
    }

    public native int processAllJni(CrossTesterConfig crossTesterConfig);

    public void setNativePtr(long j10) {
        this.nativePtr = j10;
    }
}
