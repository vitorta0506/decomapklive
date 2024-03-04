package com.tencent.thumbplayer.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static Method f34477a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f34478b;

    /* renamed from: c  reason: collision with root package name */
    private static Method f34479c;

    static {
        try {
            f34477a = Class.class.getDeclaredMethod("forName", String.class);
            f34478b = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            f34479c = Class.class.getDeclaredMethod("getDeclaredField", String.class);
        } catch (Throwable th2) {
            TPLogUtil.e("TPPrimaryReflectUtil", th2.getMessage());
        }
    }

    public static Object a(@NonNull Object obj, @NonNull String str, @NonNull String str2, Class[] clsArr, Object... objArr) {
        try {
            Method a10 = a(str, str2, clsArr);
            if (a10 != null) {
                return a10.invoke(obj, objArr);
            }
            return null;
        } catch (Throwable th2) {
            TPLogUtil.e("TPPrimaryReflectUtil", th2.getMessage());
            return null;
        }
    }

    @Nullable
    private static Method a(@NonNull String str, @NonNull String str2, Class[] clsArr) {
        Method method = null;
        if (!a()) {
            return null;
        }
        try {
            Method method2 = (Method) f34478b.invoke((Class) f34477a.invoke(null, str), str2, clsArr);
            try {
                method2.setAccessible(true);
                return method2;
            } catch (Throwable th2) {
                th = th2;
                method = method2;
                TPLogUtil.e("TPPrimaryReflectUtil", th.getMessage());
                return method;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static boolean a() {
        return (f34477a == null || f34478b == null || f34479c == null) ? false : true;
    }
}
