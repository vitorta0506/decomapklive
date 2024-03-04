package sf;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.xiaomi.push.q3;
/* loaded from: classes5.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static Context f57903a;

    public static int a() {
        try {
            Class<?> c10 = c(null, "miui.os.Build");
            if (c10.getField("IS_STABLE_VERSION").getBoolean(null)) {
                return 3;
            }
            return c10.getField("IS_DEVELOPMENT_VERSION").getBoolean(null) ? 2 : 1;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static Context b() {
        return f57903a;
    }

    public static Class<?> c(Context context, String str) {
        if (str == null || str.trim().length() == 0) {
            throw new ClassNotFoundException("class is empty");
        }
        boolean z10 = context != null;
        if (z10 && Build.VERSION.SDK_INT >= 29) {
            try {
                return context.getClassLoader().loadClass(str);
            } catch (Throwable unused) {
            }
        }
        try {
            return Class.forName(str);
        } catch (Throwable th2) {
            tf.c.l(String.format("loadClass fail hasContext= %s, errMsg = %s", Boolean.valueOf(z10), th2.getLocalizedMessage()));
            throw new ClassNotFoundException("loadClass fail ", th2);
        }
    }

    public static void d(Context context) {
        f57903a = context.getApplicationContext();
    }

    public static boolean e() {
        return TextUtils.equals((String) q3.g("android.os.SystemProperties", "get", "sys.boot_completed"), "1");
    }

    public static boolean f(Context context) {
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception e10) {
            tf.c.o(e10);
            return false;
        }
    }
}
