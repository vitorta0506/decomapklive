package com.xiaomi.push.service;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
/* loaded from: classes5.dex */
public class u1 {
    public static ComponentName a(Context context, Intent intent) {
        if (intent != null) {
            try {
                ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
                if (resolveActivity != null) {
                    ActivityInfo activityInfo = resolveActivity.activityInfo;
                    return new ComponentName(activityInfo.packageName, activityInfo.name);
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static boolean b(Context context, ComponentName componentName) {
        try {
            new Intent().setComponent(componentName);
            context.getPackageManager().getActivityInfo(componentName, 128);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
