package cn.jpush.android.o;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import cn.jpush.android.d.d;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.ActivityLifeCallBack;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.v.c;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static int f3177a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f3178b = false;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f3179c = true;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f3180d;

    public static void a(Context context) {
        e(context);
    }

    public static void a(Context context, int i9) {
        Logger.d("DyPushConstants", "changeForegroundStat, userType: " + i9);
        f3177a = i9;
        f3178b = i9 > 0;
        Bundle bundle = new Bundle();
        bundle.putInt("user_type", i9);
        JCoreHelper.runActionWithService(context, JPushConstants.SDK_TYPE, "change_foreground_dy", bundle);
        cn.jpush.android.p.a.a().b(context, i9);
    }

    public static void a(Context context, Bundle bundle) {
    }

    public static void a(Context context, String str) {
        d dVar = new d();
        dVar.br = str;
        cn.jpush.android.p.a.a(context, "cn.jpush.android.intent.SYNC_BLACK_LIST", dVar, true);
    }

    public static void a(Context context, String str, long j10) {
        Logger.d("DyPushConstants", "saveInAppInfo, content: " + str + ", displayTime: " + j10);
        Bundle bundle = new Bundle();
        bundle.putString("type", "config_info");
        bundle.putString("content", str);
        bundle.putLong("display_time", j10);
        JCoreHelper.runActionWithService(context, JPushConstants.SDK_TYPE, "save_config", bundle);
    }

    public static void a(Context context, boolean z10) {
        Logger.d("DyPushConstants", "changeInstallStatus, support: " + z10);
        f3179c = z10;
        Bundle bundle = new Bundle();
        bundle.putBoolean("install_status", z10);
        JCoreHelper.runActionWithService(context, JPushConstants.SDK_TYPE, "install_status", bundle);
    }

    public static void b(Context context) {
        try {
            if (cn.jpush.android.af.a.k(context)) {
                Logger.d("DyPushConstants", "force send rtc in foreground for logined, and sync activity task count if need.");
                c.a().d(context);
            }
        } catch (Throwable th2) {
            Logger.w("DyPushConstants", "[forceRtcForLogined] force send rtc error, " + th2.getMessage());
        }
    }

    public static void c(Context context) {
        if (JPushConstants.SDK_VERSION_CODE < 369) {
            a.b();
            return;
        }
        cn.jpush.android.r.a.a();
        try {
            ActivityLifeCallBack.syncActivityTaskCount();
        } catch (Throwable unused) {
            Logger.w("DyPushConstants", "no syncActivityTaskCount method in ActivityLifeCallBack, sdk_code: " + JPushConstants.SDK_VERSION_CODE);
        }
    }

    public static void d(Context context) {
        Logger.d("DyPushConstants", "saveInAppState...");
        Bundle bundle = new Bundle();
        bundle.putString("type", "config_state");
        JCoreHelper.runActionWithService(context, JPushConstants.SDK_TYPE, "save_config", bundle);
    }

    private static void e(Context context) {
        String str;
        Activity p10;
        if (JPushConstants.SDK_VERSION_CODE >= 369) {
            Logger.d("DyPushConstants", "JPush local version: " + JPushConstants.SDK_VERSION_CODE + ", large than: 369 min in app version, need not register another lifecycle");
            return;
        }
        Logger.d("DyPushConstants", "initPageLifecycle init, local jpush version: " + JPushConstants.SDK_VERSION_CODE + ", isInitLife: " + f3180d);
        if (f3180d) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        try {
            f3180d = true;
            if (applicationContext instanceof Application) {
                String d10 = cn.jpush.android.af.a.d(applicationContext);
                String packageName = applicationContext.getPackageName();
                if (d10 == null || packageName == null || !applicationContext.getPackageName().equals(d10)) {
                    d dVar = new d();
                    dVar.f3031q = 2;
                    cn.jpush.android.aa.c.a(applicationContext, "sync_reg_lifecycle", dVar, (Intent) null);
                    str = "need not initPageLifecycle in other process :" + d10;
                } else {
                    a aVar = new a();
                    ((Application) applicationContext).registerActivityLifecycleCallbacks(aVar);
                    if (a.f3171a == 0 && (p10 = cn.jpush.android.af.a.p(applicationContext)) != null) {
                        aVar.onActivityCreated(p10, null);
                        aVar.onActivityStarted(p10);
                        aVar.onActivityResumed(p10);
                    }
                    str = "initPageLifecycle in main process,packageName:" + packageName + ",currentProcessName:" + d10;
                }
                Logger.d("DyPushConstants", str);
            }
        } catch (Throwable th2) {
            Logger.ww("DyPushConstants", "registerActivityLifecycleCallbacks failed:" + th2.getMessage());
        }
    }
}
