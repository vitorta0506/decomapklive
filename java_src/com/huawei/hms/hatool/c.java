package com.huawei.hms.hatool;

import java.util.Map;
/* loaded from: classes4.dex */
public abstract class c {
    public static void a(String str, String str2, long j10) {
        k h10 = h(str, str2);
        if (h10 != null) {
            h10.a(j10);
        }
    }

    public static boolean a(String str, String str2) {
        k h10 = h(str, str2);
        if (h10 != null) {
            return h10.a();
        }
        return true;
    }

    public static int b(String str, String str2) {
        k h10 = h(str, str2);
        if (h10 != null) {
            return h10.d();
        }
        return 7;
    }

    public static boolean c(String str, String str2) {
        k h10 = h(str, str2);
        if (h10 != null) {
            return h10.g();
        }
        return true;
    }

    public static String d(String str, String str2) {
        k h10 = h(str, str2);
        return h10 != null ? h10.f() : "";
    }

    public static boolean e(String str, String str2) {
        k h10 = h(str, str2);
        if (h10 != null) {
            return h10.i();
        }
        return false;
    }

    public static String f(String str, String str2) {
        k h10 = h(str, str2);
        return h10 != null ? h10.h() : "";
    }

    public static String g(String str, String str2) {
        k h10 = h(str, str2);
        return h10 != null ? h10.n() : "";
    }

    public static k h(String str, String str2) {
        m a10 = i.c().a(str);
        if (a10 != null) {
            if ("alltype".equals(str2)) {
                k a11 = a10.a("oper");
                return a11 == null ? a10.a("maint") : a11;
            }
            return a10.a(str2);
        }
        return null;
    }

    public static Map<String, String> i(String str, String str2) {
        k h10 = h(str, str2);
        if (h10 != null) {
            return h10.k();
        }
        return null;
    }

    public static long j(String str, String str2) {
        k h10 = h(str, str2);
        if (h10 != null) {
            return h10.l();
        }
        return 0L;
    }

    public static int k(String str, String str2) {
        k h10 = h(str, str2);
        if (h10 != null) {
            return h10.b();
        }
        return 10;
    }

    public static String l(String str, String str2) {
        k h10 = h(str, str2);
        return h10 != null ? h10.o() : "";
    }

    public static String m(String str, String str2) {
        k h10 = h(str, str2);
        return h10 != null ? h10.q() : "";
    }

    public static String n(String str, String str2) {
        k h10 = h(str, str2);
        return h10 != null ? h10.m() : "";
    }

    public static String o(String str, String str2) {
        k h10 = h(str, str2);
        return h10 != null ? h10.p() : "";
    }
}
