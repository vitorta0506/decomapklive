package com.tencent.liteav.base;

import com.tencent.liteav.base.annotations.JNINamespace;
@JNINamespace("base::android")
/* loaded from: classes4.dex */
public abstract class PathService {
    public static final int DIR_MODULE = 3;

    private PathService() {
    }

    private static native void nativeOverride(int i9, String str);

    public static void override(int i9, String str) {
        nativeOverride(i9, str);
    }
}
