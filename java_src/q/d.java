package q;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.alibaba.android.arouter.facade.template.ILogger;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static String f57096a;

    /* renamed from: b  reason: collision with root package name */
    private static int f57097b;

    private static PackageInfo a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 16384);
        } catch (Exception unused) {
            o.a.f55433c.error(ILogger.defaultTag, "Get package info error.");
            return null;
        }
    }

    public static boolean b(Context context) {
        PackageInfo a10 = a(context);
        if (a10 != null) {
            String str = a10.versionName;
            int i9 = a10.versionCode;
            SharedPreferences sharedPreferences = context.getSharedPreferences("SP_AROUTER_CACHE", 0);
            if (str.equals(sharedPreferences.getString("LAST_VERSION_NAME", null)) && i9 == sharedPreferences.getInt("LAST_VERSION_CODE", -1)) {
                return false;
            }
            f57096a = str;
            f57097b = i9;
        }
        return true;
    }

    public static void c(Context context) {
        if (TextUtils.isEmpty(f57096a) || f57097b == 0) {
            return;
        }
        context.getSharedPreferences("SP_AROUTER_CACHE", 0).edit().putString("LAST_VERSION_NAME", f57096a).putInt("LAST_VERSION_CODE", f57097b).apply();
    }
}
