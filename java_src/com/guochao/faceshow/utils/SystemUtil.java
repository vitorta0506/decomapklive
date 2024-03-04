package com.guochao.faceshow.utils;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.facebook.internal.AnalyticsEvents;
import com.guochao.faceshow.aaspring.utils.EmptyUtils;
import com.guochao.faceshow.context.GCApplication;
/* loaded from: classes4.dex */
public class SystemUtil {
    private static int versionCode = -1;
    private static String versionName = "";

    public static String getAPPVersionNameAndVersionCode() {
        PackageManager packageManager = GCApplication.app().getPackageManager();
        if (packageManager != null) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(GCApplication.app().getPackageName(), 0);
                return String.format("%s (%s) ", packageInfo.versionName, Integer.valueOf(packageInfo.versionCode));
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                return "";
            }
        }
        return "";
    }

    public static String getAndroidID() {
        GCApplication app = GCApplication.app();
        if (app == null) {
            return "";
        }
        try {
            return Settings.Secure.getString(app.getContentResolver(), "android_id");
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String getDeviceBrand() {
        return Build.BRAND;
    }

    public static String getDeviceId() {
        String imsi = getIMSI();
        if (EmptyUtils.isEmpty(imsi)) {
            if (Build.VERSION.SDK_INT >= 26) {
                try {
                    imsi = ContextCompat.checkSelfPermission(GCApplication.app(), "android.permission.READ_PHONE_STATE") != 0 ? "" : Build.getSerial();
                } catch (Exception unused) {
                }
            } else {
                imsi = Build.SERIAL;
            }
        }
        return (EmptyUtils.isEmpty(imsi) || "unknown".equalsIgnoreCase(imsi)) ? getAndroidID() : imsi;
    }

    public static String getIMSI() {
        GCApplication app = GCApplication.app();
        if (app == null) {
            return "";
        }
        try {
            if (ContextCompat.checkSelfPermission(app, "android.permission.READ_PHONE_STATE") != 0) {
                return "";
            }
            String subscriberId = ((TelephonyManager) app.getSystemService("phone")).getSubscriberId();
            return subscriberId == null ? "" : subscriberId;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getNetType() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) GCApplication.app().getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable() || activeNetworkInfo.getType() != 1) {
            if (ContextCompat.checkSelfPermission(GCApplication.app(), "android.permission.READ_PHONE_STATE") != 0) {
                return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
            }
            switch (((TelephonyManager) GCApplication.app().getSystemService("phone")).getNetworkType()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    return "2G";
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    return "3G";
                case 13:
                case 18:
                    return "4G";
                case 19:
                default:
                    return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
                case 20:
                    return "5G";
            }
        }
        return "Wifi";
    }

    public static String getSimOperator() {
        TelephonyManager telephonyManager = (TelephonyManager) GCApplication.app().getSystemService("phone");
        return TextUtils.isEmpty(telephonyManager.getSimOperator()) ? "No Sim card found" : telephonyManager.getSimOperatorName();
    }

    public static String getSystemModel() {
        return Build.MODEL;
    }

    public static String getSystemVersion() {
        return Build.VERSION.RELEASE;
    }

    public static int getVersionCode() {
        int i9 = versionCode;
        if (i9 > 0) {
            return i9;
        }
        PackageManager packageManager = GCApplication.app().getPackageManager();
        if (packageManager != null) {
            try {
                int i10 = packageManager.getPackageInfo(GCApplication.app().getPackageName(), 0).versionCode;
                versionCode = i10;
                return i10;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
            }
        }
        return versionCode;
    }

    public static String getVersionName() {
        if (!TextUtils.isEmpty(versionName)) {
            return versionName;
        }
        PackageManager packageManager = GCApplication.app().getPackageManager();
        if (packageManager != null) {
            try {
                String str = packageManager.getPackageInfo(GCApplication.app().getPackageName(), 0).versionName;
                versionName = str;
                return str;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
            }
        }
        return versionName;
    }

    public static boolean supportVideoTransition() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public String getPhoneInfo() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("\n   主板：" + Build.BOARD);
        stringBuffer.append("\n   系统启动程序版本号：" + Build.BOOTLOADER);
        stringBuffer.append("\n   系统定制商：" + Build.BRAND);
        stringBuffer.append("\n   cpu指令集：" + Build.CPU_ABI);
        stringBuffer.append("\n   cpu指令集2 " + Build.CPU_ABI2);
        stringBuffer.append("\n   设置参数：" + Build.DEVICE);
        stringBuffer.append("\n   显示屏参数：" + Build.DISPLAY);
        stringBuffer.append("\n   www.2cto.com无线电固件版本：" + Build.getRadioVersion());
        stringBuffer.append("\n   硬件识别码：" + Build.FINGERPRINT);
        stringBuffer.append("\n   硬件名称：" + Build.HARDWARE);
        stringBuffer.append("\n   HOST: " + Build.HOST);
        stringBuffer.append("\n   修订版本列表：" + Build.ID);
        stringBuffer.append("\n   硬件制造商：" + Build.MANUFACTURER);
        stringBuffer.append("\n   版本：" + Build.MODEL);
        stringBuffer.append("\n   硬件序列号：" + Build.SERIAL);
        stringBuffer.append("\n   手机制造商：" + Build.PRODUCT);
        stringBuffer.append("\n   描述Build的标签：" + Build.TAGS);
        stringBuffer.append("\n   TIME: " + Build.TIME);
        stringBuffer.append("\n   builder类型：" + Build.TYPE);
        stringBuffer.append("\n   USER: " + Build.USER);
        return stringBuffer.toString();
    }
}
