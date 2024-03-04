package com.huawei.hms.framework.common;

import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.List;
/* loaded from: classes4.dex */
public class ActivityUtil {
    private static final String TAG = "ActivityUtil";

    public static PendingIntent getActivities(Context context, int i9, Intent[] intentArr, int i10) {
        if (context == null) {
            Logger.w(TAG, "context is null");
            return null;
        }
        try {
            return PendingIntent.getActivities(context, i9, intentArr, i10);
        } catch (RuntimeException e10) {
            Logger.e(TAG, "dealType rethrowFromSystemServer:", e10);
            return null;
        }
    }

    public static boolean isForeground(Context context) {
        ActivityManager activityManager;
        if (context == null || (activityManager = (ActivityManager) ContextCompat.getSystemService(context, PushConstants.INTENT_ACTIVITY_NAME)) == null) {
            return false;
        }
        List<ActivityManager.RunningAppProcessInfo> list = null;
        try {
            list = activityManager.getRunningAppProcesses();
        } catch (RuntimeException e10) {
            Logger.w(TAG, "activityManager getRunningAppProcesses occur exception: ", e10);
        }
        if (list != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : list) {
                String str = runningAppProcessInfo.processName;
                if (str != null && str.equals(context.getPackageName()) && runningAppProcessInfo.importance == 100) {
                    Logger.v(TAG, "isForeground true");
                    return true;
                }
            }
            return false;
        }
        return false;
    }
}
