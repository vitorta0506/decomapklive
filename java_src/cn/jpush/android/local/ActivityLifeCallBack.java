package cn.jpush.android.local;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import cn.jpush.android.helper.Logger;
/* loaded from: classes.dex */
public class ActivityLifeCallBack implements Application.ActivityLifecycleCallbacks {
    private static final String TAG = "ActivityLifeCallBack";
    public static int activityTaskCount = 0;
    private static String gLatestActivityName = "";

    public static void syncActivityTaskCount() {
        int i9 = activityTaskCount;
        if (i9 == 0) {
            activityTaskCount = i9 + 1;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        ActionHelper.getInstance().onActivityLifeCallback(activity, "destroyed");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        ActionHelper.getInstance().onActivityLifeCallback(activity, "paused");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        ActionHelper.getInstance().onActivityLifeCallback(activity, "resumed");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        ActionHelper.getInstance().onActivityLifeCallback(activity, "started");
        if (activityTaskCount == 0) {
            Logger.d(TAG, "is Foreground");
            if (activity != null) {
                JPushConstants.changeForegroudStat(activity.getApplicationContext(), true);
                gLatestActivityName = activity.getClass().getCanonicalName();
            }
        }
        activityTaskCount++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        ActionHelper.getInstance().onActivityLifeCallback(activity, "stopped");
        int i9 = activityTaskCount;
        if (i9 > 0) {
            activityTaskCount = i9 - 1;
        }
        if (activityTaskCount != 0 || activity == null) {
            return;
        }
        String canonicalName = activity.getClass().getCanonicalName();
        Logger.d(TAG, "onActivityStopped, curClzName: " + canonicalName + ", latestCurClzName: " + gLatestActivityName);
        if (!gLatestActivityName.equals(canonicalName)) {
            activityTaskCount++;
            return;
        }
        Logger.d(TAG, "is not Foreground");
        JPushConstants.changeForegroudStat(activity.getApplicationContext(), false);
    }
}
