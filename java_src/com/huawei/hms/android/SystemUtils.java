package com.huawei.hms.android;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.support.log.HMSLog;
import com.meizu.cloud.pushsdk.notification.model.AdvanceSetting;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import java.lang.reflect.InvocationTargetException;
import java.util.Locale;
/* loaded from: classes4.dex */
public class SystemUtils {
    public static String a() {
        return getSystemProperties("ro.product.locale", "");
    }

    public static String b() {
        return getSystemProperties("ro.product.locale.region", "");
    }

    public static String getLocalCountry() {
        Locale locale = Locale.getDefault();
        return locale != null ? locale.getCountry() : "";
    }

    public static String getNetType(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        return (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) ? "" : activeNetworkInfo.getTypeName();
    }

    public static String getSystemProperties(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException unused) {
            HMSLog.e("SystemUtils", "An exception occurred while reading: getSystemProperties:" + str);
            return str2;
        }
    }

    public static boolean isChinaROM() {
        String b10 = b();
        if (!TextUtils.isEmpty(b10)) {
            return AdvanceSetting.CLEAR_NOTIFICATION.equalsIgnoreCase(b10);
        }
        String a10 = a();
        if (!TextUtils.isEmpty(a10)) {
            return a10.toLowerCase(Locale.US).contains(AdvanceSetting.CLEAR_NOTIFICATION);
        }
        String localCountry = getLocalCountry();
        if (TextUtils.isEmpty(localCountry)) {
            return false;
        }
        return AdvanceSetting.CLEAR_NOTIFICATION.equalsIgnoreCase(localCountry);
    }

    public static boolean isEMUI() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("is Emui :");
        int i9 = HwBuildEx.VERSION.EMUI_SDK_INT;
        sb2.append(i9);
        HMSLog.i("SystemUtils", sb2.toString());
        return i9 > 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isSystemApp(android.content.Context r2, java.lang.String r3) {
        /*
            java.lang.String r0 = "SystemUtils"
            android.content.pm.PackageManager r2 = r2.getPackageManager()     // Catch: java.lang.RuntimeException -> Ld android.content.pm.PackageManager.NameNotFoundException -> L23
            r1 = 16384(0x4000, float:2.2959E-41)
            android.content.pm.PackageInfo r2 = r2.getPackageInfo(r3, r1)     // Catch: java.lang.RuntimeException -> Ld android.content.pm.PackageManager.NameNotFoundException -> L23
            goto L39
        Ld:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r1 = "isSystemApp RuntimeException:"
            r3.append(r1)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            com.huawei.hms.support.log.HMSLog.e(r0, r2)
            goto L38
        L23:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r1 = "isSystemApp Exception: "
            r3.append(r1)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            com.huawei.hms.support.log.HMSLog.e(r0, r2)
        L38:
            r2 = 0
        L39:
            r3 = 1
            if (r2 == 0) goto L44
            android.content.pm.ApplicationInfo r2 = r2.applicationInfo
            int r2 = r2.flags
            r2 = r2 & r3
            if (r2 <= 0) goto L44
            goto L45
        L44:
            r3 = 0
        L45:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.android.SystemUtils.isSystemApp(android.content.Context, java.lang.String):boolean");
    }

    public static boolean isTVDevice() {
        return getSystemProperties("ro.build.characteristics", V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND).equalsIgnoreCase("tv");
    }
}
