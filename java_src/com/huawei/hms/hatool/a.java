package com.huawei.hms.hatool;
/* loaded from: classes4.dex */
public abstract class a {
    public static String a(String str, String str2) {
        j c10 = c(str, str2);
        return c10 != null ? c10.a() : "";
    }

    public static boolean b(String str, String str2) {
        j c10 = c(str, str2);
        return c10 != null && c10.e();
    }

    public static j c(String str, String str2) {
        k a10;
        m a11 = i.c().a(str);
        if (a11 == null || (a10 = a11.a(str2)) == null) {
            return null;
        }
        return a10.j();
    }

    public static String d(String str, String str2) {
        j c10 = c(str, str2);
        return c10 != null ? c10.b() : "";
    }

    public static boolean e(String str, String str2) {
        j c10 = c(str, str2);
        return c10 != null && c10.f();
    }

    public static boolean f(String str, String str2) {
        k a10;
        m a11 = i.c().a(str);
        if (a11 == null || (a10 = a11.a(str2)) == null) {
            return false;
        }
        return a10.c();
    }

    public static String g(String str, String str2) {
        j c10 = c(str, str2);
        return c10 != null ? c10.d() : "";
    }

    public static boolean h(String str, String str2) {
        j c10 = c(str, str2);
        return c10 != null && c10.g();
    }

    public static boolean i(String str, String str2) {
        k a10;
        m a11 = i.c().a(str);
        if (a11 == null || (a10 = a11.a(str2)) == null) {
            return false;
        }
        return a10.e();
    }

    public static String j(String str, String str2) {
        j c10 = c(str, str2);
        return c10 != null ? c10.c() : "";
    }

    public static boolean k(String str, String str2) {
        j c10 = c(str, str2);
        return c10 != null && c10.h();
    }
}
