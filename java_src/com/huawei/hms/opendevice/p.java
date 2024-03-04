package com.huawei.hms.opendevice;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.support.log.HMSLog;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.List;
/* loaded from: classes4.dex */
public abstract class p {

    /* renamed from: a  reason: collision with root package name */
    public static String f27670a;

    public static String a() {
        try {
            FileInputStream fileInputStream = new FileInputStream("/proc/self/cmdline");
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream, StandardCharsets.UTF_8);
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        inputStreamReader.close();
                        fileInputStream.close();
                        return "";
                    }
                    String trim = readLine.trim();
                    bufferedReader.close();
                    inputStreamReader.close();
                    fileInputStream.close();
                    return trim;
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th4) {
                            th2.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th7) {
                        th5.addSuppressed(th7);
                    }
                    throw th6;
                }
            }
        } catch (IOException unused) {
            HMSLog.e("CommFun", "get current app processes IOException!");
            return "";
        } catch (Exception e10) {
            HMSLog.e("CommFun", "get current app processes exception!" + e10.getMessage());
            return "";
        }
    }

    public static boolean b() {
        int i9 = HwBuildEx.VERSION.EMUI_SDK_INT;
        HMSLog.d("CommFun", "Emui Api Level:" + i9);
        return i9 > 0;
    }

    public static String c(Context context) {
        String parent;
        if (Build.VERSION.SDK_INT >= 24) {
            parent = context.createDeviceProtectedStorageContext().getDataDir() + "";
        } else {
            parent = context.getFilesDir().getParent();
        }
        if (TextUtils.isEmpty(parent)) {
            HMSLog.e("CommFun", "get storage root path of the current user failed.");
        }
        return parent;
    }

    public static long d(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.huawei.android.pushagent", 16384).versionCode;
        } catch (Exception unused) {
            HMSLog.e("CommFun", "get nc versionCode error");
            return -1L;
        }
    }

    public static boolean e(Context context) {
        return b() && HwBuildEx.VERSION.EMUI_SDK_INT < 21 && d(context) < 110001400;
    }

    public static String b(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
        if (activityManager == null) {
            return "";
        }
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses != null && runningAppProcesses.size() != 0) {
            int myPid = Process.myPid();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid && runningAppProcessInfo.processName != null) {
                    HMSLog.i("CommFun", "info.pid -> " + runningAppProcessInfo.pid + ", info.processName -> " + runningAppProcessInfo.processName);
                    return runningAppProcessInfo.processName;
                }
            }
            return "";
        }
        HMSLog.w("CommFun", "get running app processes null!");
        return "";
    }

    public static String a(Context context) {
        if (!TextUtils.isEmpty(f27670a)) {
            return f27670a;
        }
        String b10 = b(context);
        f27670a = b10;
        if (!TextUtils.isEmpty(b10)) {
            return f27670a;
        }
        String a10 = a();
        f27670a = a10;
        return a10;
    }
}
