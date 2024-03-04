package com.xiaomi.channel.commonutils.android;

import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.xiaomi.push.q3;
import sf.e;
import tf.c;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static InterfaceC0369a f36194a;

    /* renamed from: com.xiaomi.channel.commonutils.android.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0369a {
        boolean a(Context context, String str);

        boolean b(Context context, String str);
    }

    /* loaded from: classes5.dex */
    public enum b {
        UNKNOWN(0),
        ALLOWED(1),
        NOT_ALLOWED(2);
        

        /* renamed from: a  reason: collision with other field name */
        private final int f12a;

        b(int i9) {
            this.f12a = i9;
        }

        public int a() {
            return this.f12a;
        }
    }

    public static int a(Context context) {
        Bundle bundle;
        if (context != null) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo("com.android.systemui", 128);
                if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
                    return 0;
                }
                return bundle.getInt("SupportForPushVersionCode");
            } catch (PackageManager.NameNotFoundException unused) {
                return 0;
            }
        }
        return 0;
    }

    public static int b(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 16384);
        } catch (Exception unused) {
            packageInfo = null;
        }
        if (packageInfo != null) {
            return packageInfo.versionCode;
        }
        return 0;
    }

    private static ApplicationInfo c(Context context, String str) {
        if (str.equals(context.getPackageName())) {
            return context.getApplicationInfo();
        }
        try {
            return context.getPackageManager().getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            c.l("not found app info " + str);
            return null;
        }
    }

    public static Drawable d(Context context, String str) {
        ApplicationInfo c10 = c(context, str);
        Drawable drawable = null;
        if (c10 != null) {
            try {
                drawable = c10.loadIcon(context.getPackageManager());
                if (drawable == null) {
                    drawable = c10.loadLogo(context.getPackageManager());
                }
            } catch (Exception e10) {
                c.l("get app icon drawable failed, " + e10);
            }
        }
        return drawable != null ? drawable : new ColorDrawable(0);
    }

    private static b e(Context context, ApplicationInfo applicationInfo) {
        int i9 = Build.VERSION.SDK_INT;
        if (applicationInfo == null || i9 < 24) {
            return b.UNKNOWN;
        }
        Boolean bool = null;
        try {
            if (applicationInfo.packageName.equals(context.getPackageName())) {
                bool = Boolean.valueOf(((NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION)).areNotificationsEnabled());
            } else {
                Object e10 = i9 >= 29 ? q3.e(context.getSystemService(RemoteMessageConst.NOTIFICATION), "getService", new Object[0]) : context.getSystemService("security");
                if (e10 != null) {
                    bool = (Boolean) q3.n(e10, "areNotificationsEnabledForPackage", applicationInfo.packageName, Integer.valueOf(applicationInfo.uid));
                }
            }
            if (bool != null) {
                return bool.booleanValue() ? b.ALLOWED : b.NOT_ALLOWED;
            }
        } catch (Exception e11) {
            c.l("are notifications enabled error " + e11);
        }
        return b.UNKNOWN;
    }

    public static b f(Context context, String str, boolean z10) {
        ApplicationInfo applicationInfo;
        b e10;
        b bVar;
        if (context == null || TextUtils.isEmpty(str)) {
            return b.UNKNOWN;
        }
        try {
            applicationInfo = str.equals(context.getPackageName()) ? context.getApplicationInfo() : context.getPackageManager().getApplicationInfo(str, 0);
            e10 = e(context, applicationInfo);
            bVar = b.UNKNOWN;
        } catch (Throwable th2) {
            c.l("get app op error " + th2);
        }
        if (e10 != bVar) {
            return e10;
        }
        Integer num = (Integer) q3.b(AppOpsManager.class, "OP_POST_NOTIFICATION");
        if (num == null) {
            return bVar;
        }
        Integer num2 = (Integer) q3.e((AppOpsManager) context.getSystemService("appops"), "checkOpNoThrow", num, Integer.valueOf(applicationInfo.uid), str);
        int i9 = (Integer) q3.b(AppOpsManager.class, "MODE_ALLOWED");
        int i10 = (Integer) q3.b(AppOpsManager.class, "MODE_IGNORED");
        c.s(String.format("get app mode %s|%s|%s", num2, i9, i10));
        if (i9 == null) {
            i9 = 0;
        }
        if (i10 == null) {
            i10 = 1;
        }
        if (num2 != null) {
            return z10 ? !num2.equals(i10) ? b.ALLOWED : b.NOT_ALLOWED : num2.equals(i9) ? b.ALLOWED : b.NOT_ALLOWED;
        }
        return b.UNKNOWN;
    }

    public static String g(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 16384);
        } catch (Exception unused) {
            packageInfo = null;
        }
        return packageInfo != null ? packageInfo.versionName : "1.0";
    }

    public static boolean h(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        if (e.h()) {
            InterfaceC0369a interfaceC0369a = f36194a;
            return interfaceC0369a != null && interfaceC0369a.a(context, str);
        }
        return context.getPackageName().equals(str);
    }

    public static int i(Context context, String str) {
        ApplicationInfo c10 = c(context, str);
        if (c10 != null) {
            int i9 = c10.icon;
            return i9 == 0 ? c10.logo : i9;
        }
        return 0;
    }

    public static String j(Context context, String str) {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            return (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null) ? str : packageManager.getApplicationLabel(applicationInfo).toString();
        } catch (PackageManager.NameNotFoundException unused) {
            return str;
        }
    }

    public static boolean k(Context context, String str) {
        InterfaceC0369a interfaceC0369a = f36194a;
        return interfaceC0369a != null && interfaceC0369a.b(context, str);
    }

    public static boolean l(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (Settings.Secure.getInt(context.getContentResolver(), "freeform_window_state", -1) >= 0) {
                return str.equals(Settings.Secure.getString(context.getContentResolver(), "freeform_package_name"));
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
