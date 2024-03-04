package cn.jpush.android.af;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import cn.jpush.android.helper.Logger;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.lang.reflect.Method;
import java.util.List;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static String f2908a;

    private static String a() {
        if (Build.VERSION.SDK_INT >= 28) {
            return Application.getProcessName();
        }
        return null;
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(f2908a)) {
            String a10 = a();
            f2908a = a10;
            if (TextUtils.isEmpty(a10)) {
                String b10 = b();
                f2908a = b10;
                if (TextUtils.isEmpty(b10)) {
                    String b11 = b(context);
                    f2908a = b11;
                    String str = !TextUtils.isEmpty(b11) ? f2908a : "";
                    f2908a = str;
                    return str;
                }
                return f2908a;
            }
            return f2908a;
        }
        return f2908a;
    }

    private static String b() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            if (invoke instanceof String) {
                return (String) invoke;
            }
            return null;
        } catch (Throwable th2) {
            Logger.w("ProcessUtil", "getCurrentProcessNameByActivityThread failed, " + th2.getMessage());
            return null;
        }
    }

    private static String b(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (context == null) {
            return null;
        }
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return null;
    }
}
