package cn.jiguang.analytics.page;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jiguang.api.JAnalyticsAction;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.as.d;
import cn.jiguang.au.f;
import cn.jiguang.bg.b;
import cn.jiguang.d.a;
import cn.jiguang.internal.JConstants;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class ActivityLifecycle implements Application.ActivityLifecycleCallbacks {
    private static final String TAG = "ActivityLifecycle";
    public static final long WAKE_VIOLATION_COUNT = 5;
    public static final long WAKE_VIOLATION_DURATION = 50;
    public static int activityTaskCount;
    public static long lastWakeTime;
    private String lastActivity = "";

    private boolean isTranslucentNotitleTheme(Activity activity) {
        try {
            TypedArray obtainStyledAttributes = activity.getTheme().obtainStyledAttributes(new int[]{16842838, 16842841, 16842836, 16842840, 16843435});
            boolean z10 = obtainStyledAttributes.getBoolean(0, false);
            Drawable drawable = obtainStyledAttributes.getDrawable(1);
            int color = obtainStyledAttributes.getColor(2, -1);
            boolean z11 = obtainStyledAttributes.getBoolean(3, false);
            Drawable drawable2 = obtainStyledAttributes.getDrawable(4);
            d.c(TAG, "notitle:" + z10 + ", overlay:" + drawable + ", color:" + color + ", translucent:" + z11 + "background:" + drawable2);
            obtainStyledAttributes.recycle();
            if (z10 && z11 && drawable == null && drawable2 == null) {
                if (color == activity.getResources().getColor(17170445)) {
                    return true;
                }
            }
        } catch (Throwable th2) {
            d.g(TAG, "check TranslucentNotitleTheme failed :" + th2);
        }
        return false;
    }

    private boolean isWakeActivity(Activity activity) {
        if (activity != null) {
            try {
                if (activity.getIntent() == null || TextUtils.isEmpty(activity.getIntent().getAction())) {
                    return false;
                }
                return "cn.jpush.android.intent.DActivity".equals(activity.getIntent().getAction());
            } catch (Throwable unused) {
                return false;
            }
        }
        return false;
    }

    private void reportWakeViolation(final Context context) {
        cn.jiguang.bg.d.a("FUTURE_TASK", new b() { // from class: cn.jiguang.analytics.page.ActivityLifecycle.1
            @Override // cn.jiguang.bg.b
            public void a() {
                try {
                    JSONObject jSONObject = new JSONObject();
                    a.a(context, jSONObject, "wake_violation");
                    f.a(context, jSONObject);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        d.c(TAG, "onActivityCreated:" + activity.getClass().getCanonicalName());
        try {
            JAnalyticsAction jAnalyticsAction = JConstants.jAnalyticsAction;
            if (jAnalyticsAction != null) {
                jAnalyticsAction.dispatchStatus(activity, "onCreate");
            }
            if (isWakeActivity(activity)) {
                lastWakeTime = System.currentTimeMillis();
                return;
            }
            long j10 = lastWakeTime;
            if (j10 > 0 && j10 - System.currentTimeMillis() < 50) {
                d.c(TAG, "wake activity violation");
                int intValue = ((Integer) cn.jiguang.g.b.a(activity.getApplicationContext(), cn.jiguang.g.a.T())).intValue() + 1;
                if (intValue >= 5) {
                    reportWakeViolation(activity.getApplicationContext());
                    intValue = 0;
                }
                cn.jiguang.g.b.a(activity.getApplicationContext(), cn.jiguang.g.a.T().a((cn.jiguang.g.a<Integer>) Integer.valueOf(intValue)));
            }
            lastWakeTime = 0L;
        } catch (Throwable unused) {
            d.c(TAG, "onActivityCreated failed");
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        try {
            d.e(TAG, "onActivityPaused:" + activity.getClass().getCanonicalName());
            JAnalyticsAction jAnalyticsAction = JConstants.jAnalyticsAction;
            if (jAnalyticsAction != null) {
                jAnalyticsAction.dispatchPause(activity);
            }
            if (JConstants.isInstrumentationHookFailed) {
                return;
            }
            PushSA.getInstance().onPause(activity);
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        try {
            d.e(TAG, "onActivityResumed:" + activity.getClass().getCanonicalName());
            JAnalyticsAction jAnalyticsAction = JConstants.jAnalyticsAction;
            if (jAnalyticsAction != null) {
                jAnalyticsAction.dispatchResume(activity);
            }
            if (JConstants.isInstrumentationHookFailed) {
                return;
            }
            PushSA.getInstance().onResume(activity);
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (activity != null) {
            d.c(TAG, "onActivityStarted:" + activity.getClass().getCanonicalName());
        }
        try {
            if (activityTaskCount == 0) {
                d.c(TAG, "isForeground");
                if (activity != null) {
                    JCoreManager.onEvent(activity.getApplicationContext(), JConstants.SDK_TYPE, 66, null, null, Integer.valueOf(isTranslucentNotitleTheme(activity) ? 2 : 1));
                }
                JAnalyticsAction jAnalyticsAction = JConstants.jAnalyticsAction;
                if (jAnalyticsAction != null) {
                    jAnalyticsAction.dispatchStatus(activity, "onStart");
                }
            }
            activityTaskCount++;
            this.lastActivity = activity.getClass().getCanonicalName();
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        try {
            d.c(TAG, "onActivityStopped:" + activity.getClass().getCanonicalName());
            int i9 = activityTaskCount;
            if (i9 > 0) {
                activityTaskCount = i9 - 1;
            }
            if (activityTaskCount == 0) {
                if (!TextUtils.equals(this.lastActivity, activity.getClass().getCanonicalName())) {
                    activityTaskCount++;
                    return;
                }
                d.c(TAG, "is not Foreground");
                JCoreManager.onEvent(activity.getApplicationContext(), JConstants.SDK_TYPE, 66, null, null, 0);
            }
        } catch (Throwable unused) {
        }
    }
}
