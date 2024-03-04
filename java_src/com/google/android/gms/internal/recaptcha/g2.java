package com.google.android.gms.internal.recaptcha;

import android.util.Log;
import com.tencent.bugly.Bugly;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public final class g2 {

    /* renamed from: a  reason: collision with root package name */
    private static final Method f8694a;

    /* renamed from: b  reason: collision with root package name */
    private static final Method f8695b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f8696c;

    /* renamed from: d  reason: collision with root package name */
    private static final Method f8697d;

    static {
        Method method;
        Method method2;
        Method method3;
        Class<?> cls;
        try {
            cls = Class.forName("android.os.SystemProperties");
            method = cls.getMethod("get", String.class, String.class);
        } catch (Exception e10) {
            e = e10;
            method = null;
            method2 = null;
        } catch (Throwable th2) {
            th = th2;
            method = null;
            method2 = null;
        }
        try {
            method2 = cls.getMethod("getInt", String.class, Integer.TYPE);
        } catch (Exception e11) {
            e = e11;
            method2 = null;
            method3 = method2;
            e.printStackTrace();
            f8694a = method;
            f8695b = method2;
            f8696c = method3;
            f8697d = null;
        } catch (Throwable th3) {
            th = th3;
            method2 = null;
            method3 = method2;
            f8694a = method;
            f8695b = method2;
            f8696c = method3;
            f8697d = null;
            throw th;
        }
        try {
            method3 = cls.getMethod("getLong", String.class, Long.TYPE);
            try {
                try {
                    Method method4 = cls.getMethod("getBoolean", String.class, Boolean.TYPE);
                    f8694a = method;
                    f8695b = method2;
                    f8696c = method3;
                    f8697d = method4;
                } catch (Exception e12) {
                    e = e12;
                    e.printStackTrace();
                    f8694a = method;
                    f8695b = method2;
                    f8696c = method3;
                    f8697d = null;
                }
            } catch (Throwable th4) {
                th = th4;
                f8694a = method;
                f8695b = method2;
                f8696c = method3;
                f8697d = null;
                throw th;
            }
        } catch (Exception e13) {
            e = e13;
            method3 = null;
        } catch (Throwable th5) {
            th = th5;
            method3 = null;
            f8694a = method;
            f8695b = method2;
            f8696c = method3;
            f8697d = null;
            throw th;
        }
    }

    public static String a(String str, String str2) {
        try {
            return (String) f8694a.invoke(null, "tiktok_systrace", Bugly.SDK_IS_DEV);
        } catch (Exception e10) {
            Log.e("SystemProperties", "get error", e10);
            return Bugly.SDK_IS_DEV;
        }
    }
}
