package cn.jpush.android.cache;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.helper.Logger;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f2987a;

    public static void a(Context context) {
        f2987a = context.getSharedPreferences("cn.jpush.config", 0);
    }

    public static void a(Context context, int i9) {
        r(context).edit().putInt("service_stoped", i9).apply();
    }

    public static void a(Context context, long j10) {
        if (j10 < 0) {
            Logger.w("PushConfig", "freeze end time was incorrect!");
            return;
        }
        if (j10 > 1800) {
            Logger.i("PushConfig", "freeze end time was greate than half an hour");
            j10 = 1800;
        }
        r(context).edit().putLong("TAFreezeSetTime", System.currentTimeMillis()).putLong("TAFreezeEndTime", j10 * 1000).apply();
    }

    public static void a(Context context, String str) {
        r(context).edit().putString("mobile_number", str).apply();
    }

    public static void a(Context context, String str, String str2) {
        SharedPreferences.Editor edit = r(context).edit();
        edit.putString("jpush_save_custom_builder" + str, str2).apply();
    }

    public static void a(Context context, boolean z10) {
        r(context).edit().putBoolean("ups_state", z10).apply();
    }

    public static int b(Context context) {
        SharedPreferences reload = Sp.reload(context, "cn.jpush.config");
        if (reload == null) {
            reload = r(context);
        }
        int i9 = reload.getInt("service_stoped", -1);
        if (i9 < 0) {
            int i10 = context.getSharedPreferences("cn.jpush.android.user.profile", 0).getInt("service_stoped", 0);
            a(context, i10);
            return i10;
        }
        return i9;
    }

    public static void b(Context context, long j10) {
        r(context).edit().putLong("geofence_interval", j10).apply();
    }

    public static void b(Context context, String str) {
        r(context).edit().putString("setting_push_time", str).apply();
    }

    public static void b(Context context, boolean z10) {
        r(context).edit().putBoolean("notification_enabled", z10).apply();
    }

    public static boolean b(Context context, int i9) {
        String str;
        if (i9 != 0 && b(context) >= 1) {
            str = "The service is stopped, it will give up all the actions until you call resumePush method to resume the service.";
        } else if (i9 != 1 && !c(context)) {
            str = "The service is stopped, it will give up all the actions until you call JPushUPSManager.trunOn method to resume the service.";
        } else if (i9 == 2 || ((Boolean) Sp.get(context, Key.UPSRegister())).booleanValue()) {
            return false;
        } else {
            str = "The service is stopped, it will give up all the actions until you call JPushUPSManager.registerToken method to resume the service.";
        }
        Logger.ww("PushConfig", str);
        return true;
    }

    public static long c(Context context, long j10) {
        long j11 = r(context).getLong("geofence_interval", -1L);
        if (j11 == -1) {
            j11 = context.getSharedPreferences("cn.jpush.android.user.profile", 0).getLong("geofence_interval", -1L);
            if (j11 != -1) {
                b(context, j11);
            }
        }
        return j11 == -1 ? j10 : j11;
    }

    public static void c(Context context, int i9) {
        r(context).edit().putInt("notification_num", i9).apply();
    }

    public static void c(Context context, String str) {
        r(context).edit().putString("setting_silence_push_time", str).apply();
    }

    public static void c(Context context, boolean z10) {
        r(context).edit().putBoolean("geofence_pull_enable", z10).apply();
    }

    public static boolean c(Context context) {
        return r(context).getBoolean("ups_state", true);
    }

    public static String d(Context context, String str) {
        SharedPreferences r10 = r(context);
        String string = r10.getString("jpush_save_custom_builder" + str, "");
        if (TextUtils.isEmpty(string)) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("cn.jpush.android.user.profile", 0);
            String string2 = sharedPreferences.getString("jpush_save_custom_builder" + str, "");
            a(context, str, string2);
            return string2;
        }
        return string;
    }

    public static void d(Context context, int i9) {
        r(context).edit().putInt("geofence_max_num", i9).apply();
    }

    public static void d(Context context, boolean z10) {
        r(context).edit().putBoolean("push_lbs_enable", z10).apply();
    }

    public static boolean d(Context context) {
        String str;
        if (b(context) >= 1) {
            str = "The service is stopped, it will give up all the actions until you call resumePush method to resume the service.";
        } else if (!c(context)) {
            str = "The service is stopped, it will give up all the actions until you call JPushUPSManager.trunOn method to resume the service.";
        } else if (((Boolean) Sp.get(context, Key.UPSRegister())).booleanValue()) {
            return false;
        } else {
            str = "The service is stopped, it will give up all the actions until you call JPushUPSManager.registerToken method to resume the service.";
        }
        Logger.dd("PushConfig", str);
        return true;
    }

    public static int e(Context context, int i9) {
        int i10 = r(context).getInt("geofence_max_num", -1);
        if (i10 == -1 && (i10 = context.getSharedPreferences("cn.jpush.android.user.profile", 0).getInt("geofence_max_num", -1)) != -1) {
            d(context, i10);
        }
        return i10 == -1 ? i9 : i10;
    }

    public static String e(Context context) {
        return r(context).getString("mobile_number", null);
    }

    public static void e(Context context, String str) {
        r(context).edit().putString("geofence_pull_limit", str).apply();
    }

    public static void f(Context context, String str) {
        r(context).edit().putString("geofence_last_pull_state", str).apply();
    }

    public static boolean f(Context context) {
        return r(context).getBoolean("notification_enabled", true);
    }

    public static String g(Context context) {
        return r(context).getString("setting_push_time", "");
    }

    public static void g(Context context, String str) {
        r(context).edit().putString("push_ssp_last_state", str).apply();
    }

    public static String h(Context context) {
        return r(context).getString("setting_silence_push_time", "");
    }

    public static void h(Context context, String str) {
        r(context).edit().putString("push_inapp_last_state", str).apply();
    }

    public static int i(Context context) {
        return r(context).getInt("notification_num", JPushInterface.DEFAULT_NOTIFICATION_NUM);
    }

    public static void i(Context context, String str) {
        r(context).edit().putString("push_ssp_last_info", str).apply();
    }

    public static void j(Context context, String str) {
        r(context).edit().putString("push_inapp_last_info", str).apply();
    }

    public static boolean j(Context context) {
        long j10 = r(context).getLong("TAFreezeEndTime", -1L);
        if (j10 > 1800) {
            j10 = 0;
        }
        long j11 = r(context).getLong("TAFreezeSetTime", -1L);
        if (j10 == -1 || j11 == -1) {
            return false;
        }
        if (System.currentTimeMillis() - j11 < 0 || System.currentTimeMillis() - j11 > j10) {
            r(context).edit().putLong("TAFreezeSetTime", -1L).putLong("TAFreezeEndTime", -1L).apply();
            Logger.w("PushConfig", "incorrect timestamp");
            return true;
        }
        return false;
    }

    public static boolean k(Context context) {
        return r(context).getBoolean("geofence_pull_enable", false);
    }

    public static String l(Context context) {
        return r(context).getString("geofence_pull_limit", "");
    }

    public static String m(Context context) {
        return r(context).getString("geofence_last_pull_state", "");
    }

    public static boolean n(Context context) {
        return r(context).getBoolean("push_lbs_enable", true);
    }

    public static String o(Context context) {
        return r(context).getString("push_ssp_last_state", "0,0");
    }

    public static String p(Context context) {
        return r(context).getString("push_inapp_last_state", "0,0");
    }

    public static String q(Context context) {
        SharedPreferences reload = Sp.reload(context, "cn.jpush.config");
        if (reload == null) {
            reload = r(context);
        }
        return reload.getString("push_inapp_last_info", ",0");
    }

    private static SharedPreferences r(Context context) {
        if (f2987a == null) {
            a(context);
        }
        return f2987a;
    }
}
