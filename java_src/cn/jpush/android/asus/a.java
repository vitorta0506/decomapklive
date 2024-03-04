package cn.jpush.android.asus;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.os.Build;
import android.text.TextUtils;
import cn.jpush.android.api.JThirdPlatFormInterface;
import cn.jpush.android.cache.Key;
import cn.jpush.android.cache.Sp;
import cn.jpush.android.e.c;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
/* loaded from: classes.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private static boolean f2936c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f2937d;

    /* renamed from: a  reason: collision with root package name */
    public static final String f2934a = "asus".toLowerCase();

    /* renamed from: b  reason: collision with root package name */
    public static String f2935b = "";

    /* renamed from: e  reason: collision with root package name */
    private static String f2938e = null;

    private static ActivityInfo a(Context context, String str, Class<? extends BroadcastReceiver> cls) {
        ActivityInfo[] activityInfoArr;
        if (context == null || TextUtils.isEmpty(str) || cls == null) {
            Logger.w("AsusPushHelper", "Action - hasComponent, invalid param, context:" + context + ",packageName:" + str + ",cls:" + cls);
            return null;
        }
        try {
            activityInfoArr = context.getPackageManager().getPackageInfo(str, 2).receivers;
        } catch (Throwable th2) {
            Logger.ww("AsusPushHelper", "getReceiver error:" + th2);
        }
        if (activityInfoArr != null && activityInfoArr.length != 0) {
            for (ActivityInfo activityInfo : activityInfoArr) {
                try {
                    if (cls.isAssignableFrom(Class.forName(activityInfo.name, false, cls.getClassLoader())) && activityInfo.enabled) {
                        return activityInfo;
                    }
                } catch (Throwable unused) {
                }
            }
            return null;
        }
        Logger.d("AsusPushHelper", "pkgInfo info is null");
        return null;
    }

    private static boolean a() {
        boolean equalsIgnoreCase = "asus".equalsIgnoreCase(Build.BRAND);
        return !equalsIgnoreCase ? "asus".equalsIgnoreCase(Build.MANUFACTURER) : equalsIgnoreCase;
    }

    public static boolean a(Context context) {
        b(context);
        return f2936c;
    }

    public static synchronized void b(Context context) {
        synchronized (a.class) {
            if (f2937d) {
                return;
            }
            if (context == null) {
                Logger.ww("AsusPushHelper", "context is null");
                return;
            }
            if (i(context) && (cn.jpush.android.c.b.a(context) || a())) {
                f2936c = true;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f2936c ? "support " : "not support ");
            sb2.append(f2934a);
            Logger.d("AsusPushHelper", sb2.toString());
            f2937d = true;
        }
    }

    public static void c(final Context context) {
        try {
            b(context);
            if (f2936c) {
                cn.jpush.android.c.b.a(context, e(context), new c() { // from class: cn.jpush.android.asus.a.1
                    @Override // cn.jpush.android.e.a
                    public void a(cn.jpush.android.e.b bVar) {
                        try {
                            Logger.dd("AsusPushHelper", "tokenResult:" + bVar);
                            cn.jpush.android.ae.c.a().a(context, (byte) 6, bVar.a());
                        } catch (Throwable unused) {
                        }
                    }
                });
            }
        } catch (Throwable th2) {
            Logger.w("AsusPushHelper", "register error:" + th2.getMessage());
        }
    }

    public static byte d(Context context) {
        return (byte) 6;
    }

    public static String e(Context context) {
        return !TextUtils.isEmpty(f2935b) ? f2935b : JCoreHelper.getAppKey(context);
    }

    public static String f(Context context) {
        return "";
    }

    public static String g(Context context) {
        return cn.jpush.android.c.b.d(context);
    }

    public static boolean h(Context context) {
        String str;
        String e10 = e(context);
        if (TextUtils.isEmpty(e10)) {
            str = f2934a + " appkey or appid is empty,need not clear plugin rid";
        } else {
            String appKey = JCoreHelper.getAppKey(context);
            if (!TextUtils.isEmpty(appKey)) {
                String str2 = (String) Sp.get(context, Key.ThirdPush_ClearFlag());
                String md5 = JThirdPlatFormInterface.toMD5(e10 + appKey + JCoreHelper.getJCoreSDKVersionInt() + JCoreHelper.getJPushSDKVersionInt());
                if (TextUtils.isEmpty(str2)) {
                    Sp.set(context, Key.ThirdPush_ClearFlag().set(md5));
                    return true;
                } else if (TextUtils.isEmpty(md5)) {
                    return true;
                } else {
                    if (TextUtils.equals(str2, md5)) {
                        return false;
                    }
                    Logger.d("AsusPushHelper", "local set changed,re bind token");
                    Sp.set(context, Key.ThirdPush_ClearFlag().set(md5));
                    return true;
                }
            }
            str = "jpush appkey is empty,need not clear plugin rid";
        }
        Logger.ii("AsusPushHelper", str);
        return false;
    }

    private static boolean i(Context context) {
        ActivityInfo a10 = a(context, context.getPackageName(), AsusPushMessageReceiver.class);
        if (a10 == null) {
            Logger.ww("AsusPushHelper", "AndroidManifest.xml missing receiver extends asus's AsusPushMessageReceiver");
            return false;
        }
        Logger.d("AsusPushHelper", "found receiver:" + a10.name);
        return true;
    }
}
