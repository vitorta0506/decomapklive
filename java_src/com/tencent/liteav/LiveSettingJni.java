package com.tencent.liteav;

import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.r;
@JNINamespace("liteav")
/* loaded from: classes4.dex */
public class LiveSettingJni {
    static {
        r.a();
    }

    public static native void nativeSetAppId(String str);

    public static native void nativeSetUserId(String str);
}
