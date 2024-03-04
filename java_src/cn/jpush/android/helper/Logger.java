package cn.jpush.android.helper;

import cn.jiguang.api.JCoreManager;
/* loaded from: classes.dex */
public class Logger {
    private static void a(int i9, boolean z10, String str, String str2, Throwable th2) {
        JCoreManager.onEvent(null, "JPush", 18, str, null, Integer.valueOf(i9), Boolean.valueOf(z10), str2, th2);
    }

    public static void d(String str, String str2) {
        a(3, true, str, str2, null);
    }

    public static void dd(String str, String str2) {
        a(3, false, str, str2, null);
    }

    public static void e(String str, String str2) {
        a(6, true, str, str2, null);
    }

    public static void e(String str, String str2, Throwable th2) {
        a(6, true, str, str2, th2);
    }

    public static void ee(String str, String str2) {
        a(6, false, str, str2, null);
    }

    public static void ee(String str, String str2, Throwable th2) {
        a(6, false, str, str2, th2);
    }

    public static void i(String str, String str2) {
        a(4, true, str, str2, null);
    }

    public static void ii(String str, String str2) {
        a(4, false, str, str2, null);
    }

    public static void v(String str, String str2) {
        a(2, true, str, str2, null);
    }

    public static void vv(String str, String str2) {
        a(2, false, str, str2, null);
    }

    public static void w(String str, String str2) {
        a(5, true, str, str2, null);
    }

    public static void ww(String str, String str2) {
        a(5, false, str, str2, null);
    }

    public static void ww(String str, String str2, Throwable th2) {
        a(5, false, str, str2, th2);
    }
}
