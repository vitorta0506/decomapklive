package ec;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
/* loaded from: classes4.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f38558a;

    public static String a(String str, String str2, Context context) {
        return b(context).getString(str, str2);
    }

    public static synchronized SharedPreferences b(Context context) {
        SharedPreferences sharedPreferences;
        synchronized (h.class) {
            if (f38558a == null) {
                if (Build.VERSION.SDK_INT >= 24) {
                    f38558a = context.createDeviceProtectedStorageContext().getSharedPreferences("aegis", 0);
                } else {
                    f38558a = context.getApplicationContext().getSharedPreferences("aegis", 0);
                }
            }
            sharedPreferences = f38558a;
        }
        return sharedPreferences;
    }

    public static void c(String str, String str2, Context context) {
        b(context).edit().putString(str, str2).apply();
    }
}
