package cn.jiguang.bf;

import cn.jiguang.api.JCoreManager;
/* loaded from: classes.dex */
public class d {
    private static void a(int i9, boolean z10, String str, String str2, Throwable th2) {
        JCoreManager.onEvent(null, "JSupport", 18, str, null, Integer.valueOf(i9), Boolean.valueOf(z10), str2, th2);
    }

    public static void a(String str, String str2) {
        a(2, true, str, str2, null);
    }

    public static void b(String str, String str2) {
        a(3, true, str, str2, null);
    }

    public static void c(String str, String str2) {
        a(5, true, str, str2, null);
    }

    public static void d(String str, String str2) {
        a(5, false, str, str2, null);
    }

    public static void e(String str, String str2) {
        a(6, true, str, str2, null);
    }

    public static void f(String str, String str2) {
        a(6, false, str, str2, null);
    }
}
