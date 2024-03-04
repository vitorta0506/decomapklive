package com.huawei.hms.hatool;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes4.dex */
public abstract class f {

    /* loaded from: classes4.dex */
    public static class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    public static Object a(Class cls, String str, Class[] clsArr, Object[] objArr) {
        String str2;
        if (cls != null) {
            if (clsArr == null) {
                if (objArr != null) {
                    throw new a("paramsType is null, but params is not null");
                }
            } else if (objArr == null) {
                throw new a("paramsType or params should be same");
            } else {
                if (clsArr.length != objArr.length) {
                    throw new a("paramsType len:" + clsArr.length + " should equal params.len:" + objArr.length);
                }
            }
            try {
            } catch (NoSuchMethodException unused) {
                y.f("hmsSdk", "invokeStaticFun(): cls.getMethod(),No Such Method !");
            }
            try {
                return cls.getMethod(str, clsArr).invoke(null, objArr);
            } catch (IllegalAccessException unused2) {
                str2 = "invokeStaticFun(): method invoke Exception!";
                y.f("hmsSdk", str2);
                return null;
            } catch (IllegalArgumentException unused3) {
                str2 = "invokeStaticFun(): Illegal Argument!";
                y.f("hmsSdk", str2);
                return null;
            } catch (InvocationTargetException unused4) {
                str2 = "invokeStaticFun(): Invocation Target Exception!";
                y.f("hmsSdk", str2);
                return null;
            }
        }
        throw new a("class is null in invokeStaticFun");
    }

    public static Object a(String str, String str2, Class[] clsArr, Object[] objArr) {
        String str3;
        try {
            return a(Class.forName(str), str2, clsArr, objArr);
        } catch (a unused) {
            str3 = "invokeStaticFun(): Static function call Exception ";
            y.f("hmsSdk", str3);
            return null;
        } catch (ClassNotFoundException unused2) {
            str3 = "invokeStaticFun() Not found class!";
            y.f("hmsSdk", str3);
            return null;
        }
    }

    public static String a() {
        return a("ro.build.version.emui", "");
    }

    public static String a(Context context) {
        return context == null ? "" : Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    public static String a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        String a10 = a("android.os.SystemProperties", str, str2);
        return TextUtils.isEmpty(a10) ? a("com.huawei.android.os.SystemPropertiesEx", str, str2) : a10;
    }

    public static String a(String str, String str2, String str3) {
        Object a10 = a(str, "get", new Class[]{String.class, String.class}, new Object[]{str2, str3});
        return a10 != null ? (String) a10 : str3;
    }

    public static String b() {
        String a10 = a("com.huawei.android.os.SystemPropertiesEx", "ro.huawei.build.display.id", "");
        y.c("hmsSdk", "SystemPropertiesEx: get rom_ver: " + a10);
        if (TextUtils.isEmpty(a10)) {
            String str = Build.DISPLAY;
            y.c("hmsSdk", "SystemProperties: get rom_ver: " + str);
            return str;
        }
        return a10;
    }

    public static String b(Context context) {
        Bundle bundle;
        Object obj;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null || (obj = bundle.get("CHANNEL")) == null) {
                return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
            }
            String obj2 = obj.toString();
            return obj2.length() > 256 ? AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN : obj2;
        } catch (PackageManager.NameNotFoundException unused) {
            y.f("hmsSdk", "getChannel(): The packageName is not correct!");
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        }
    }

    public static String c(Context context) {
        return context == null ? "" : context.getPackageName();
    }

    public static String d(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(c(context), 16384).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            y.f("hmsSdk", "getVersion(): The package name is not correct!");
            return "";
        }
    }
}
