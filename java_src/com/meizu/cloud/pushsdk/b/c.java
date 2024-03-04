package com.meizu.cloud.pushsdk.b;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.meizu.cloud.pushinternal.DebugLogger;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static String f28222a = "";

    public static String a(Context context) {
        if (TextUtils.isEmpty(f28222a)) {
            f28222a = !a() ? d(context) : b(context);
            return f28222a;
        }
        return f28222a;
    }

    public static boolean a() {
        String a10 = i.a("ro.target.product");
        if (TextUtils.isEmpty(a10)) {
            DebugLogger.i("DeviceUtils", "current product is phone");
            return true;
        }
        DebugLogger.i("DeviceUtils", "current product is " + a10);
        return false;
    }

    public static String b(Context context) {
        String deviceId;
        try {
            com.meizu.cloud.pushsdk.b.b.d a10 = com.meizu.cloud.pushsdk.b.b.a.a("android.telephony.MzTelephonyManager").a("getDeviceId", new Class[0]).a(new Object[0]);
            if (a10.f28220a) {
                deviceId = (String) a10.f28221b;
            } else {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager == null) {
                    return null;
                }
                deviceId = telephonyManager.getDeviceId();
            }
            return deviceId;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String c(Context context) {
        return null;
    }

    private static String d(Context context) {
        StringBuilder sb2 = new StringBuilder();
        String str = Build.SERIAL;
        DebugLogger.i("DeviceUtils", "device serial " + str);
        if (!TextUtils.isEmpty(str)) {
            sb2.append(str);
            String c10 = c(context);
            DebugLogger.e("DeviceUtils", "mac address " + c10);
            if (!TextUtils.isEmpty(c10)) {
                sb2.append(c10.replace(CertificateUtil.DELIMITER, "").toUpperCase());
                return sb2.toString();
            }
        }
        return null;
    }
}
