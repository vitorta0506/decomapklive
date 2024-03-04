package cn.jpush.android.o;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public static int f3171a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static WeakReference<Activity> f3172b = null;

    /* renamed from: c  reason: collision with root package name */
    private static Activity f3173c = null;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f3174d = false;

    /* renamed from: e  reason: collision with root package name */
    private static String f3175e = "";

    /* renamed from: f  reason: collision with root package name */
    private static long f3176f;

    public static long a() {
        return f3176f;
    }

    public static Activity a(Context context) {
        if (f3173c != null) {
            Logger.dd("DyActivityLifeCallback", "use dLifeCycle activity");
            return f3173c;
        }
        Activity activity = null;
        try {
            if (f3172b != null) {
                Logger.d("DyActivityLifeCallback", "mActivity is null, try to use weakActivity: " + f3172b);
                Activity activity2 = f3172b.get();
                if (activity2 != null) {
                    try {
                        Logger.dd("DyActivityLifeCallback", "use weak activity");
                    } catch (Throwable unused) {
                        activity = activity2;
                    }
                }
                activity = activity2;
            }
            if (activity == null) {
                activity = cn.jpush.android.af.a.p(context);
                if (activity != null) {
                    Logger.dd("DyActivityLifeCallback", "use current stack activity");
                    f3172b = new WeakReference<>(activity);
                    if (!f3174d) {
                        Logger.d("DyActivityLifeCallback", "init activity lifecycle for getting current stack activity");
                        f3174d = true;
                        b.a(context);
                    }
                } else {
                    Logger.d("DyActivityLifeCallback", "current stack activity is null");
                }
            }
        } catch (Throwable unused2) {
        }
        return activity;
    }

    public static void b() {
        if (f3171a == 0) {
            Logger.d("DyActivityLifeCallback", "need sync activity task count");
            f3171a++;
        }
    }

    public void a(Activity activity) {
        f3173c = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (activity != null) {
            try {
                cn.jpush.android.p.a.a().c(activity.getApplicationContext(), activity.getClass().getCanonicalName());
            } catch (Throwable unused) {
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        try {
            if (f3173c == null || activity == null) {
                return;
            }
            Logger.d("DyActivityLifeCallback", "[onActivityPaused], mActivityName: " + f3173c.getClass().getCanonicalName() + ", activityName: " + activity.getClass().getCanonicalName());
            if (f3173c.getClass().getCanonicalName() != null && f3173c.getClass().getCanonicalName().equals(activity.getClass().getCanonicalName())) {
                f3173c = null;
            }
            f3172b = new WeakReference<>(activity);
            cn.jpush.android.p.a.a().a(activity.getApplicationContext(), activity.getClass().getCanonicalName());
        } catch (Throwable th2) {
            Logger.w("DyActivityLifeCallback", " onActivityDestroyed error: " + th2.getMessage());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        a(activity);
        if (activity != null) {
            f3175e = activity.getClass().getCanonicalName();
            cn.jpush.android.p.a.a().b(activity.getApplicationContext(), f3175e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        try {
            a(activity);
            if (f3171a == 0) {
                Logger.d("DyActivityLifeCallback", "is Foreground");
                f3176f = System.currentTimeMillis();
                b.a(activity.getApplicationContext(), cn.jpush.android.af.a.a(activity) ? 2 : 1);
            }
            f3171a++;
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        try {
            int i9 = f3171a;
            if (i9 > 0) {
                f3171a = i9 - 1;
            }
            if (f3171a != 0 || activity == null) {
                return;
            }
            String canonicalName = activity.getClass().getCanonicalName();
            Logger.d("DyActivityLifeCallback", "onActivityStopped, curClzName: " + canonicalName + ", latestCurClzName: " + f3175e);
            if (!f3175e.equals(canonicalName)) {
                f3171a++;
                return;
            }
            Logger.d("DyActivityLifeCallback", "is not Foreground");
            b.a(JPushConstants.getAppContext(activity), 0);
        } catch (Throwable unused) {
        }
    }
}
