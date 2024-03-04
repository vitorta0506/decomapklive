package com.huawei.hms.push;

import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.log.HMSLog;
import java.util.Date;
import java.util.List;
/* loaded from: classes4.dex */
public class q {
    public static String a(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 128)).toString();
        } catch (PackageManager.NameNotFoundException unused) {
            HMSLog.i("PushSelfShowLog", "get the app name of package:" + str + " failed.");
            return null;
        }
    }

    public static Intent b(Context context, String str) {
        try {
            return context.getPackageManager().getLaunchIntentForPackage(str);
        } catch (Exception unused) {
            HMSLog.w("PushSelfShowLog", str + " not have launch activity");
            return null;
        }
    }

    public static boolean c(Context context, String str) {
        if (context != null && str != null && !"".equals(str)) {
            try {
                if (context.getPackageManager().getApplicationInfo(str, 8192) == null) {
                    return false;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(" is installed");
                HMSLog.d("PushSelfShowLog", sb2.toString());
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean d() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static boolean e() {
        return true;
    }

    public static int b() {
        return c() ? 67108864 : 134217728;
    }

    public static boolean c() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static Boolean a(Context context, String str, Intent intent) {
        try {
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            if (queryIntentActivities != null && queryIntentActivities.size() > 0) {
                int size = queryIntentActivities.size();
                for (int i9 = 0; i9 < size; i9++) {
                    if (queryIntentActivities.get(i9).activityInfo != null && str.equals(queryIntentActivities.get(i9).activityInfo.applicationInfo.packageName)) {
                        return Boolean.TRUE;
                    }
                }
            }
        } catch (Exception e10) {
            HMSLog.e("PushSelfShowLog", e10.toString(), e10);
        }
        return Boolean.FALSE;
    }

    public static long a(String str) {
        if (str == null) {
            str = "";
        }
        try {
            Date date = new Date();
            int hours = (date.getHours() * 2) + (date.getMinutes() / 30);
            String concat = str.concat(str);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("startIndex is ");
            sb2.append(hours);
            sb2.append(",ap is:");
            sb2.append(concat);
            sb2.append(",length is:");
            sb2.append(concat.length());
            HMSLog.i("PushSelfShowLog", sb2.toString());
            int length = concat.length();
            for (int i9 = hours; i9 < length; i9++) {
                if (concat.charAt(i9) != '0') {
                    long minutes = (((i9 - hours) * 30) - (date.getMinutes() % 30)) * 60000;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("startIndex is:");
                    sb3.append(hours);
                    sb3.append(" i is:");
                    sb3.append(i9);
                    sb3.append(" delay:");
                    sb3.append(minutes);
                    HMSLog.d("PushSelfShowLog", sb3.toString());
                    if (minutes >= 0) {
                        return minutes;
                    }
                    return 0L;
                }
            }
        } catch (Exception e10) {
            HMSLog.e("PushSelfShowLog", "error ", e10);
        }
        return 0L;
    }

    public static void a(Context context, Intent intent, long j10) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("enter setAPDelayAlarm(interval:");
            sb2.append(j10);
            sb2.append("ms.");
            HMSLog.d("PushSelfShowLog", sb2.toString());
            AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
            if (alarmManager != null) {
                alarmManager.set(0, System.currentTimeMillis() + j10, PendingIntent.getBroadcast(context, (int) (System.currentTimeMillis() / 1000), intent, b()));
            }
        } catch (Exception e10) {
            HMSLog.w("PushSelfShowLog", "set DelayAlarm error" + e10.toString());
        }
    }

    public static boolean a(Context context) {
        return "com.huawei.hwid".equals(context.getPackageName());
    }

    public static void a(Context context, int i9) {
        if (context == null) {
            HMSLog.e("PushSelfShowLog", "context is null");
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
            if (notificationManager != null) {
                notificationManager.cancel(i9);
            }
        } catch (Exception e10) {
            HMSLog.e("PushSelfShowLog", "removeNotifiCationById err:" + e10.toString());
        }
    }

    public static void a(Context context, Intent intent) {
        try {
            int intExtra = intent.getIntExtra("selfshow_auto_clear_id", 0);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("setDelayAlarm(cancel) alarmNotityId ");
            sb2.append(intExtra);
            HMSLog.d("PushSelfShowLog", sb2.toString());
            if (intExtra == 0) {
                return;
            }
            Intent intent2 = new Intent("com.huawei.intent.action.PUSH_DELAY_NOTIFY");
            intent2.setPackage(context.getPackageName()).setFlags(32);
            AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, intExtra, intent2, a());
            if (broadcast != null && alarmManager != null) {
                HMSLog.d("PushSelfShowLog", "alarm cancel");
                alarmManager.cancel(broadcast);
            } else {
                HMSLog.d("PushSelfShowLog", "alarm not exist");
            }
        } catch (Exception e10) {
            HMSLog.e("PushSelfShowLog", "cancelAlarm err:" + e10.toString());
        }
    }

    public static int a() {
        return d() ? 603979776 : 536870912;
    }
}
