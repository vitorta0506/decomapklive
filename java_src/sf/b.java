package sf;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.PowerManager;
import android.provider.Settings;
import android.text.TextUtils;
import com.xiaomi.push.q3;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f57886a;

    /* renamed from: b  reason: collision with root package name */
    private static String f57887b;

    /* renamed from: c  reason: collision with root package name */
    private static String f57888c;

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f57889d = {"--", "a-", "u-", "v-", "o-", "g-"};

    public static int a() {
        Object g10 = q3.g("android.os.UserHandle", "myUserId", new Object[0]);
        if (g10 == null) {
            return -1;
        }
        return ((Integer) Integer.class.cast(g10)).intValue();
    }

    private static String b() {
        String[] strArr = f57889d;
        return 5 >= strArr.length ? strArr[0] : strArr[5];
    }

    public static String c(Context context) {
        if (f57887b == null) {
            String i9 = i(context);
            f57887b = b() + com.xiaomi.push.g.i(i9);
        }
        return f57887b;
    }

    public static boolean d(Context context) {
        try {
            return !c.a(context).b();
        } catch (Exception e10) {
            tf.c.l("failure to read gaid limit:" + e10.getMessage());
            return true;
        }
    }

    public static boolean e(Context context, String str) {
        ApplicationInfo applicationInfo;
        PackageInfo packageInfo = (PackageInfo) q3.e(context.getPackageManager(), "getPackageInfoAsUser", str, 0, 999);
        if (packageInfo != null && (applicationInfo = packageInfo.applicationInfo) != null) {
            int i9 = applicationInfo.flags;
            if ((i9 & 2097152) != 2097152 || (i9 & 8388608) == 8388608) {
                return false;
            }
        }
        return true;
    }

    public static boolean f(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        for (String str2 : f57889d) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    public static String g(Context context) {
        if (d(context)) {
            try {
                return c.a(context).a();
            } catch (Exception e10) {
                tf.c.l("failure to get gaid:" + e10.getMessage());
                return null;
            }
        }
        return null;
    }

    public static boolean h(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra("status", -1);
            return intExtra == 2 || intExtra == 5;
        }
        return false;
    }

    public static String i(Context context) {
        String str = f57886a;
        if (str != null) {
            return str;
        }
        try {
            f57886a = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable th2) {
            tf.c.l("failure to get androidId: " + th2);
        }
        return f57886a;
    }

    public static boolean j(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return powerManager == null || powerManager.isScreenOn();
    }

    public static synchronized String k(Context context) {
        synchronized (b.class) {
            String str = f57888c;
            if (str != null) {
                return str;
            }
            String i9 = com.xiaomi.push.g.i(i(context));
            f57888c = i9;
            return i9;
        }
    }

    public static synchronized String l(Context context) {
        String i9;
        synchronized (b.class) {
            i9 = com.xiaomi.push.g.i(i(context));
        }
        return i9;
    }
}
