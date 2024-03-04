package cn.jpush.android.r;

import android.app.Activity;
import android.content.Context;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static int f3187a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static WeakReference<Activity> f3188b = null;

    /* renamed from: c  reason: collision with root package name */
    private static Activity f3189c = null;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f3190d = false;

    /* renamed from: e  reason: collision with root package name */
    private static String f3191e = "";

    /* renamed from: f  reason: collision with root package name */
    private static long f3192f;

    public static Activity a(Context context) {
        return JPushConstants.SDK_VERSION_CODE < 369 ? cn.jpush.android.o.a.a(context) : b(context);
    }

    public static void a() {
        if (f3187a == 0) {
            Logger.d("InAppActivityLifeCallback", "need sync activity task count");
            f3187a++;
        }
    }

    public static long b() {
        return JPushConstants.SDK_VERSION_CODE < 369 ? cn.jpush.android.o.a.a() : f3192f;
    }

    private static Activity b(Context context) {
        if (f3189c != null) {
            Logger.dd("InAppActivityLifeCallback", "use LifeCycle activity");
            return f3189c;
        }
        Activity activity = null;
        try {
            if (f3188b != null) {
                Logger.d("InAppActivityLifeCallback", "mActivity is null, try to user weakActivity: " + f3188b);
                Activity activity2 = f3188b.get();
                if (activity2 != null) {
                    try {
                        Logger.dd("InAppActivityLifeCallback", "use weak activity");
                    } catch (Throwable unused) {
                        activity = activity2;
                    }
                }
                activity = activity2;
            }
            if (activity == null) {
                activity = cn.jpush.android.af.a.p(context);
                if (activity != null) {
                    Logger.dd("InAppActivityLifeCallback", "use current stack activity");
                    f3188b = new WeakReference<>(activity);
                    if (!f3190d) {
                        Logger.d("InAppActivityLifeCallback", "init activity lifecycle for getting current stack activity");
                        f3190d = true;
                        JPushConstants.init(context);
                    }
                } else {
                    Logger.d("InAppActivityLifeCallback", "current stack activity is null");
                }
            }
        } catch (Throwable unused2) {
        }
        return activity;
    }

    public void a(Activity activity) {
        f3189c = activity;
    }

    public void b(Activity activity) {
        if (activity != null) {
            try {
                f3191e = activity.getClass().getCanonicalName();
                Logger.d("InAppActivityLifeCallback", "[onActivityStarted], activity: " + f3191e + ", activityTaskCount: " + f3187a);
                a(activity);
                if (JPushConstants.getAppContext(activity) != null) {
                    if (f3187a == 0) {
                        Logger.d("InAppActivityLifeCallback", "is foreground, change foreground state");
                        f3192f = System.currentTimeMillis();
                        cn.jpush.android.o.b.a(activity.getApplicationContext(), cn.jpush.android.af.a.a(activity) ? 2 : 1);
                    }
                    f3187a++;
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void c(Activity activity) {
        a(activity);
        if (activity != null) {
            cn.jpush.android.p.a.a().b(activity.getApplicationContext(), activity.getClass().getCanonicalName());
        }
    }

    public void d(Activity activity) {
        try {
            if (f3189c == null || activity == null) {
                return;
            }
            Logger.d("InAppActivityLifeCallback", "[onActivityPaused], mActivityName: " + f3189c.getClass().getCanonicalName() + ", activityName: " + activity.getClass().getCanonicalName());
            if (f3189c.getClass().getCanonicalName() != null && f3189c.getClass().getCanonicalName().equals(activity.getClass().getCanonicalName())) {
                f3189c = null;
            }
            f3188b = new WeakReference<>(activity);
            cn.jpush.android.p.a.a().a(activity.getApplicationContext(), activity.getClass().getCanonicalName());
        } catch (Throwable th2) {
            Logger.w("InAppActivityLifeCallback", " onActivityDestroyed error: " + th2.getMessage());
        }
    }

    public void e(Activity activity) {
        if (activity != null) {
            try {
                String canonicalName = activity.getClass().getCanonicalName();
                Logger.d("InAppActivityLifeCallback", "[onActivityStopped], curClzName: " + canonicalName + ", latestCurClzName: " + f3191e + ", activityTaskCount: " + f3187a);
                Context appContext = JPushConstants.getAppContext(activity);
                int i9 = f3187a;
                if (i9 > 0) {
                    f3187a = i9 - 1;
                }
                if (f3187a == 0) {
                    if (!f3191e.equals(canonicalName)) {
                        f3187a++;
                        return;
                    }
                    Logger.d("InAppActivityLifeCallback", "is not Foreground, change to foreground state");
                    cn.jpush.android.o.b.a(appContext, 0);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void f(Activity activity) {
        Logger.d("InAppActivityLifeCallback", "[onActivityDestroyed]");
        if (activity != null) {
            try {
                cn.jpush.android.p.a.a().c(activity.getApplicationContext(), activity.getClass().getCanonicalName());
            } catch (Throwable unused) {
            }
        }
    }
}
