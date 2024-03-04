package cn.jiguang.am;

import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.text.TextUtils;
import cn.jiguang.o.b;
import cn.jiguang.o.d;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.lang.reflect.InvocationTargetException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {
    public static void a(Context context, int i9) {
        boolean z10;
        boolean z11;
        if (cn.jiguang.i.a.a().a(1800)) {
            String f10 = b.f(context);
            boolean a10 = new a().a(context);
            boolean z12 = true;
            if (!TextUtils.isEmpty(f10)) {
                if (TextUtils.equals("ON", f10)) {
                    z10 = false;
                    z11 = true;
                } else {
                    z10 = !TextUtils.equals("OFF", f10);
                    z11 = false;
                }
                if (z10) {
                    cn.jiguang.al.a.a("JNotificationState", "notification state do not changed");
                    z12 = z10;
                } else if (z11 == a10) {
                    z12 = false;
                }
            }
            cn.jiguang.al.a.a("JNotificationState", "lastCacheNotificationState:" + f10 + ",currentNotificationSate:" + a10 + ",isNeedReport:" + z12 + ",triggerScene:" + i9);
            if (!z12) {
                cn.jiguang.al.a.a("JNotificationState", "do not need report notification state");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_NOTIFICATION_STATE, a10);
                if (cn.jiguang.i.a.a().a(1802)) {
                    jSONObject.put("device_id", d.g(context));
                }
                jSONObject.put("trigger_scene", i9);
                d.a(context, jSONObject, "android_notification_state");
                d.a(context, (Object) jSONObject);
                b.u(context, a10 ? "ON" : "OFF");
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JNotificationState", "report notification state failed, error:" + th2.getMessage());
            }
        }
    }

    private boolean a(Context context) {
        return Build.VERSION.SDK_INT >= 24 ? b(context) : c(context);
    }

    private boolean b(Context context) {
        try {
            return ((NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION)).areNotificationsEnabled();
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JNotificationState", "invoke areNotificationsEnabled method failed, error:" + th2.getMessage());
            return true;
        }
    }

    private boolean c(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            String packageName = context.getApplicationContext().getPackageName();
            int i9 = applicationInfo.uid;
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            Class<?> cls2 = Integer.TYPE;
            return ((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke((AppOpsManager) context.getSystemService("appops"), Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i9), packageName)).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            return true;
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JNotificationState", "getNotificationStateCommon failed, other error:" + th2.getMessage());
            return true;
        }
    }
}
