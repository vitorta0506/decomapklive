package com.huawei.hms.stats;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.provider.Settings;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static int f27783a;

    /* renamed from: b  reason: collision with root package name */
    public static final Object f27784b = new Object();

    public static boolean a(Context context) {
        Bundle bundle;
        if (context == null) {
            HMSLog.e("AnalyticsSwitchHolder", "In getBiIsReportSetting, context is null.");
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
                if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                    return bundle.getBoolean("com.huawei.hms.client.bireport.setting");
                }
            } catch (PackageManager.NameNotFoundException unused) {
                HMSLog.e("AnalyticsSwitchHolder", "In getBiIsReportSetting, Failed to read meta data bi report setting.");
            } catch (RuntimeException e10) {
                HMSLog.e("AnalyticsSwitchHolder", "In getBiIsReportSetting, Failed to read meta data bi report setting.", e10);
            }
        }
        HMSLog.i("AnalyticsSwitchHolder", "In getBiIsReportSetting, configuration not found for bi report setting.");
        return false;
    }

    public static boolean b(Context context) {
        Bundle bundle;
        if (context == null) {
            HMSLog.e("AnalyticsSwitchHolder", "In getBiSetting, context is null.");
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
                if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                    return bundle.getBoolean("com.huawei.hms.client.bi.setting");
                }
            } catch (PackageManager.NameNotFoundException unused) {
                HMSLog.e("AnalyticsSwitchHolder", "In getBiSetting, Failed to read meta data bisetting.");
            } catch (RuntimeException e10) {
                HMSLog.e("AnalyticsSwitchHolder", "In getBiSetting, Failed to read meta data bisetting.", e10);
            }
        }
        HMSLog.i("AnalyticsSwitchHolder", "In getBiSetting, configuration not found for bisetting.");
        return false;
    }

    public static boolean c(Context context) {
        synchronized (f27784b) {
            boolean z10 = true;
            if (f27783a == 0) {
                if (context == null) {
                    return true;
                }
                if (a(context)) {
                    HMSLog.i("AnalyticsSwitchHolder", "Builder->biReportSetting :true");
                    f27783a = 1;
                } else if (b(context)) {
                    HMSLog.i("AnalyticsSwitchHolder", "Builder->biSetting :true");
                    f27783a = 2;
                } else if ("CN".equalsIgnoreCase(GrsApp.getInstance().getIssueCountryCode(context))) {
                    f27783a = 1;
                } else {
                    HMSLog.i("AnalyticsSwitchHolder", "not ChinaROM");
                    try {
                        int i9 = Settings.Secure.getInt(context.getContentResolver(), "hw_app_analytics_state");
                        HMSLog.i("AnalyticsSwitchHolder", "hw_app_analytics_state value is " + i9);
                        if (i9 == 1) {
                            f27783a = 1;
                        } else {
                            f27783a = 2;
                        }
                    } catch (Settings.SettingNotFoundException unused) {
                        HMSLog.i("AnalyticsSwitchHolder", "Get OOBE failed");
                        f27783a = 2;
                    }
                }
            }
            if (f27783a == 1) {
                z10 = false;
            }
            return z10;
        }
    }
}
