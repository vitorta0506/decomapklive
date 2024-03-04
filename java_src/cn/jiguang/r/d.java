package cn.jiguang.r;

import android.text.TextUtils;
import cn.jiguang.o.c;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static String f2757a = "";

    /* renamed from: b  reason: collision with root package name */
    private static String f2758b = "";

    /* renamed from: c  reason: collision with root package name */
    private static String f2759c = "";

    /* renamed from: d  reason: collision with root package name */
    private static String f2760d = "";

    /* renamed from: e  reason: collision with root package name */
    private static String f2761e = "";

    /* renamed from: f  reason: collision with root package name */
    private static String f2762f = "";

    public static String a() {
        try {
            String lowerCase = c.a.f2700b.toLowerCase();
            if (lowerCase.contains("huawei")) {
                return b();
            }
            if (lowerCase.contains("xiaomi")) {
                return f();
            }
            if (lowerCase.contains("meizu")) {
                return e();
            }
            if (!lowerCase.contains("oppo") && !lowerCase.contains("realme")) {
                return lowerCase.contains("vivo") ? c() : lowerCase.contains("oneplus") ? g() : "";
            }
            return d();
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String a(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str2 = (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
            cn.jiguang.al.a.c("JRomVersionHelper", "get " + str + " version is:" + str2);
            return str2;
        } catch (Throwable th2) {
            cn.jiguang.al.a.f("JRomVersionHelper", " get " + str + "wrong error:" + th2.getMessage());
            return "";
        }
    }

    private static String b() {
        if (TextUtils.isEmpty(f2757a)) {
            String a10 = a("ro.build.version.emui");
            f2757a = a10;
            return a10;
        }
        return f2757a;
    }

    private static String c() {
        if (TextUtils.isEmpty(f2759c)) {
            String a10 = a("ro.vivo.os.build.display.id");
            f2759c = a10;
            return a10;
        }
        return f2759c;
    }

    private static String d() {
        if (TextUtils.isEmpty(f2758b)) {
            String a10 = a("ro.build.version.opporom");
            f2758b = a10;
            return a10;
        }
        return f2758b;
    }

    private static String e() {
        if (TextUtils.isEmpty(f2762f)) {
            String a10 = a("ro.build.display.id");
            f2762f = a10;
            return a10;
        }
        return f2762f;
    }

    private static String f() {
        if (TextUtils.isEmpty(f2761e)) {
            String a10 = a("ro.miui.ui.version.name");
            f2761e = a10;
            return a10;
        }
        return f2761e;
    }

    private static String g() {
        if (TextUtils.isEmpty(f2760d)) {
            String a10 = a("ro.rom.version");
            f2760d = a10;
            return a10;
        }
        return f2760d;
    }
}
