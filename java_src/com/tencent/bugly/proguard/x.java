package com.tencent.bugly.proguard;

import android.util.Log;
import java.util.Locale;
/* loaded from: classes4.dex */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    public static String f30674a = "CrashReport";

    /* renamed from: b  reason: collision with root package name */
    public static boolean f30675b = false;

    /* renamed from: c  reason: collision with root package name */
    private static String f30676c = "CrashReportInfo";

    private static boolean a(int i9, String str, Object... objArr) {
        if (f30675b) {
            if (str == null) {
                str = "null";
            } else if (objArr != null && objArr.length != 0) {
                str = String.format(Locale.US, str, objArr);
            }
            if (i9 == 0) {
                Log.i(f30674a, str);
                return true;
            } else if (i9 == 1) {
                Log.d(f30674a, str);
                return true;
            } else if (i9 == 2) {
                Log.w(f30674a, str);
                return true;
            } else if (i9 == 3) {
                Log.e(f30674a, str);
                return true;
            } else if (i9 != 5) {
                return false;
            } else {
                Log.i(f30676c, str);
                return true;
            }
        }
        return false;
    }

    public static boolean b(String str, Object... objArr) {
        return a(5, str, objArr);
    }

    public static boolean c(String str, Object... objArr) {
        return a(1, str, objArr);
    }

    public static boolean d(String str, Object... objArr) {
        return a(2, str, objArr);
    }

    public static boolean e(String str, Object... objArr) {
        return a(3, str, objArr);
    }

    public static boolean b(Class cls, String str, Object... objArr) {
        return a(1, String.format(Locale.US, "[%s] %s", cls.getSimpleName(), str), objArr);
    }

    public static boolean b(Throwable th2) {
        if (f30675b) {
            return a(3, z.a(th2), new Object[0]);
        }
        return false;
    }

    public static boolean a(String str, Object... objArr) {
        return a(0, str, objArr);
    }

    public static boolean a(Class cls, String str, Object... objArr) {
        return a(0, String.format(Locale.US, "[%s] %s", cls.getSimpleName(), str), objArr);
    }

    public static boolean a(Throwable th2) {
        if (f30675b) {
            return a(2, z.a(th2), new Object[0]);
        }
        return false;
    }
}
