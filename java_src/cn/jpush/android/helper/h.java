package cn.jpush.android.helper;

import android.os.Build;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static String f3102a = "";

    /* renamed from: b  reason: collision with root package name */
    private static String f3103b = "";

    /* renamed from: c  reason: collision with root package name */
    private static String f3104c = "";

    /* renamed from: d  reason: collision with root package name */
    private static String f3105d = "";

    /* renamed from: e  reason: collision with root package name */
    private static String f3106e = "";

    /* renamed from: f  reason: collision with root package name */
    private static String f3107f = "";

    /* renamed from: g  reason: collision with root package name */
    private static String f3108g = "";

    /* renamed from: h  reason: collision with root package name */
    private static String f3109h = "";

    public static String a() {
        try {
            String lowerCase = Build.MANUFACTURER.toLowerCase();
            if (!lowerCase.contains("huawei") && !lowerCase.contains("honor")) {
                if (lowerCase.contains("xiaomi")) {
                    return f();
                }
                if (lowerCase.contains("meizu")) {
                    return b();
                }
                if (!lowerCase.contains("oppo") && !lowerCase.contains("realme")) {
                    return lowerCase.contains("vivo") ? d() : lowerCase.contains("oneplus") ? g() : lowerCase.contains("samsung") ? h() : lowerCase.contains("meitu") ? i() : "";
                }
                return e();
            }
            return c();
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String a(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str2 = (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
            Logger.i("RomVersionHelper", "get " + str + " version is:" + str2);
            return str2;
        } catch (Throwable th2) {
            Logger.e("RomVersionHelper", " get " + str + "wrong error:" + th2.getMessage());
            return "";
        }
    }

    public static String b() {
        if (TextUtils.isEmpty(f3107f)) {
            String a10 = a("ro.build.display.id");
            f3107f = a10;
            return a10;
        }
        return f3107f;
    }

    private static String c() {
        if (TextUtils.isEmpty(f3102a)) {
            String a10 = a("ro.build.version.emui");
            f3102a = a10;
            return a10;
        }
        return f3102a;
    }

    private static String d() {
        if (TextUtils.isEmpty(f3104c)) {
            String a10 = a("ro.vivo.os.build.display.id");
            f3104c = a10;
            return a10;
        }
        return f3104c;
    }

    private static String e() {
        if (TextUtils.isEmpty(f3103b)) {
            String str = "OPPO_" + a("ro.build.version.opporom");
            f3103b = str;
            return str;
        }
        return f3103b;
    }

    private static String f() {
        if (TextUtils.isEmpty(f3106e)) {
            String str = "MIUI_" + a("ro.miui.ui.version.name");
            f3106e = str;
            return str;
        }
        return f3106e;
    }

    private static String g() {
        if (TextUtils.isEmpty(f3105d)) {
            String a10 = a("ro.rom.version");
            f3105d = a10;
            if (TextUtils.isEmpty(a10)) {
                f3105d = "OXYGEN_" + a("ro.oxygen.version");
            }
            if (!TextUtils.isEmpty(f3105d) && !f3105d.startsWith("Hydrogen") && !f3105d.startsWith("OXYGEN_")) {
                f3105d = "ONEPLUS_" + f3105d;
            }
            Logger.d("RomVersionHelper", "getOnePlusVersion = " + f3105d);
            return f3105d;
        }
        return f3105d;
    }

    private static String h() {
        String str;
        if (TextUtils.isEmpty(f3108g)) {
            String a10 = a("ro.build.version.sem");
            if ("2601".equals(a10)) {
                str = "SAMSUNG_EXUI_9.0";
            } else if ("2801".equals(a10)) {
                str = "SAMSUNG_ONEUI_1.0";
            } else if ("2802".equals(a10)) {
                str = "SAMSUNG_ONEUI_1.x";
            } else if ("2803".equals(a10)) {
                str = "SAMSUNG_ONEUI_1.5";
            } else if (!"2901".equals(a10)) {
                if ("2902".equals(a10)) {
                    str = "SAMSUNG_ONEUI_2.1";
                }
                return f3108g;
            } else {
                str = "SAMSUNG_ONEUI_2.0";
            }
            f3108g = str;
            return f3108g;
        }
        return f3108g;
    }

    private static String i() {
        if (TextUtils.isEmpty(f3109h)) {
            String str = "MEIOS_" + a("ro.build.version.meios");
            f3109h = str;
            return str;
        }
        return f3109h;
    }
}
