package com.tencent.liteav.base;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.MainDex;
@MainDex
/* loaded from: classes4.dex */
public class JNIUtils {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static ClassLoader sJniClassLoader;
    private static Boolean sSelectiveJniRegistrationEnabled;

    public static void enableSelectiveJniRegistration() {
        sSelectiveJniRegistrationEnabled = Boolean.TRUE;
    }

    @CalledByNative
    public static Object getClassLoader() {
        ClassLoader classLoader = sJniClassLoader;
        return classLoader == null ? JNIUtils.class.getClassLoader() : classLoader;
    }

    @CalledByNative
    public static boolean isSelectiveJniRegistrationEnabled() {
        if (sSelectiveJniRegistrationEnabled == null) {
            sSelectiveJniRegistrationEnabled = Boolean.FALSE;
        }
        return sSelectiveJniRegistrationEnabled.booleanValue();
    }

    public static void setClassLoader(ClassLoader classLoader) {
        sJniClassLoader = classLoader;
    }
}
