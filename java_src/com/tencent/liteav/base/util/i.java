package com.tencent.liteav.base.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.liteav.base.Log;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes4.dex */
public final class i implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public volatile boolean f31005a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<Integer> f31006b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    private final Set<Integer> f31007c = new HashSet();

    public i(Context context, s<Boolean> sVar) {
        if (context == null) {
            Log.e("ProcessLifecycleOwner", "ProcessStateOwner init failed. Context is null", new Object[0]);
            return;
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(this);
        if (sVar != null) {
            this.f31005a = sVar.a().booleanValue();
        } else {
            Log.w("ProcessLifecycleOwner", "background state info is null", new Object[0]);
        }
    }

    public static boolean a(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
            if (activityManager == null) {
                Log.e("ProcessLifecycleOwner", "activityManager is null.", new Object[0]);
                return false;
            }
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                Log.e("ProcessLifecycleOwner", "processInfoList is null.", new Object[0]);
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100 && context.getPackageName().equals(runningAppProcessInfo.processName)) {
                    return false;
                }
            }
            return true;
        } catch (Exception e10) {
            Log.e("ProcessLifecycleOwner", "Get App background state failed. ".concat(String.valueOf(e10)), new Object[0]);
            return false;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(@NonNull Activity activity) {
        this.f31007c.add(Integer.valueOf(activity.hashCode()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(@NonNull Activity activity) {
        a(activity.hashCode());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(@NonNull Activity activity) {
        a(activity.hashCode());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(@NonNull Activity activity) {
        int hashCode = activity.hashCode();
        if (this.f31006b.contains(Integer.valueOf(hashCode))) {
            this.f31006b.remove(Integer.valueOf(hashCode));
            this.f31005a = this.f31006b.size() == 0;
        } else if (this.f31006b.size() == 0) {
            if (this.f31007c.contains(Integer.valueOf(hashCode))) {
                this.f31005a = true;
            }
        } else {
            this.f31005a = false;
        }
        this.f31007c.remove(Integer.valueOf(hashCode));
    }

    private void a(int i9) {
        this.f31006b.add(Integer.valueOf(i9));
        this.f31005a = false;
    }
}
