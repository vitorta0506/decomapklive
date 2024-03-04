package com.huawei.hms.support.log;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.huawei.hms.base.log.a;
import com.huawei.hms.base.log.d;
/* loaded from: classes4.dex */
public class HMSLog {

    /* renamed from: a  reason: collision with root package name */
    public static final a f27826a = new a();

    public static String a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 16384);
                return "HMS-" + packageInfo.versionName + "(" + packageInfo.versionCode + ")";
            } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
            }
        }
        return "HMS-[unknown-version]";
    }

    public static void d(String str, String str2) {
        f27826a.a(3, str, str2);
    }

    public static void e(String str, String str2) {
        f27826a.a(6, str, str2);
    }

    public static void i(String str, String str2) {
        f27826a.a(4, str, str2);
    }

    public static void init(Context context, int i9, String str) {
        a aVar = f27826a;
        aVar.a(context, i9, str);
        aVar.a(str, "============================================================================\n====== " + a(context) + "\n============================================================================");
    }

    public static boolean isErrorEnable() {
        return f27826a.a(6);
    }

    public static boolean isInfoEnable() {
        return f27826a.a(4);
    }

    public static boolean isWarnEnable() {
        return f27826a.a(5);
    }

    public static void setExtLogger(HMSExtLogger hMSExtLogger, boolean z10) throws IllegalArgumentException {
        if (hMSExtLogger != null) {
            d dVar = new d(hMSExtLogger);
            if (z10) {
                f27826a.a(dVar);
                return;
            } else {
                f27826a.a().a(dVar);
                return;
            }
        }
        throw new IllegalArgumentException("extLogger is not able to be null");
    }

    public static void w(String str, String str2) {
        f27826a.a(5, str, str2);
    }

    public static void e(String str, String str2, Throwable th2) {
        f27826a.b(6, str, str2, th2);
    }

    public static void e(String str, long j10, String str2) {
        a aVar = f27826a;
        aVar.a(6, str, "[" + j10 + "] " + str2);
    }

    public static void e(String str, long j10, String str2, Throwable th2) {
        a aVar = f27826a;
        aVar.b(6, str, "[" + j10 + "] " + str2, th2);
    }
}
