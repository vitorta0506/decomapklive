package cn.jiguang.d;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import cn.jiguang.analytics.page.ActivityLifecycle;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.as.d;
import cn.jiguang.f.c;
import cn.jiguang.f.g;
import cn.jiguang.internal.ActionManager;
import cn.jiguang.internal.JConstants;
import com.facebook.appevents.UserDataStore;
import com.facebook.internal.ServerProtocol;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {
    public static Object a() {
        return ActionManager.getActionMap();
    }

    public static JSONObject a(Context context, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                d.c("JBridgeHelper", "file_name is null , give up read ");
                return null;
            }
            String d10 = c.d(c.a(context, str));
            if (g.a(d10)) {
                d.c("JBridgeHelper", "read String is empty");
                return null;
            }
            return new JSONObject(d10.trim());
        } catch (Throwable th2) {
            d.c("JBridgeHelper", "can't build " + str + " into JsonObject, give up read :" + th2);
            return null;
        }
    }

    public static JSONObject a(Context context, JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("itime", b.b(context));
            jSONObject.put("type", str);
            jSONObject.put("account_id", cn.jiguang.g.b.a(context, cn.jiguang.g.a.m()));
        } catch (JSONException e10) {
            d.g("JBridgeHelper", "fillBase exception:" + e10);
        }
        return jSONObject;
    }

    public static synchronized void a(Context context) {
        String str;
        String str2;
        synchronized (a.class) {
            try {
                if (JConstants.isInstrumentationHookFailed && (context instanceof Application)) {
                    String a10 = cn.jiguang.f.a.a(context);
                    String packageName = context.getPackageName();
                    if (a10 == null || packageName == null || !context.getPackageName().equals(a10)) {
                        str = "JBridgeHelper";
                        str2 = "need not registerActivityLifecycleCallbacks in other process :" + a10;
                    } else {
                        JConstants.isInstrumentationHookFailed = false;
                        ActivityLifecycle activityLifecycle = new ActivityLifecycle();
                        ((Application) context).registerActivityLifecycleCallbacks(activityLifecycle);
                        Activity o10 = cn.jiguang.f.a.o(context);
                        if (o10 != null && ActivityLifecycle.activityTaskCount == 0) {
                            activityLifecycle.onActivityCreated(o10, null);
                            activityLifecycle.onActivityStarted(o10);
                            activityLifecycle.onActivityResumed(o10);
                        }
                        str = "JBridgeHelper";
                        str2 = "registerActivityLifecycleCallbacks in main process,packageName:" + packageName + ",currentProcessName:" + a10;
                    }
                    d.c(str, str2);
                }
            } finally {
            }
        }
    }

    public static void a(Context context, Intent intent) {
        if (intent != null) {
            try {
                if ("asm".equals(intent.getAction())) {
                    JCoreManager.onEvent(context, JConstants.SDK_TYPE, 3, "asm", intent.getExtras(), new Object[0]);
                    return;
                }
            } catch (Throwable th2) {
                d.g("JBridgeHelper", "shareActionRun error:" + th2.getMessage());
                return;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("shareActionRun intent error:");
        sb2.append(intent == null ? "null" : intent.getAction());
        d.c("JBridgeHelper", sb2.toString());
    }

    public static void a(Context context, Object obj) {
        JCoreManager.onEvent(context, JConstants.SDK_TYPE, 14, null, null, obj);
    }

    public static void a(String str, String str2) {
        ActionManager.addAction(str, str2);
    }

    public static String b(Context context) {
        return (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.d());
    }

    public static String c(Context context) {
        return (String) cn.jiguang.g.b.b(context, cn.jiguang.g.a.l());
    }

    public static String d(Context context) {
        return (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.m());
    }

    public static String e(Context context) {
        return TextUtils.isEmpty("") ? cn.jiguang.ar.a.a(context) : "";
    }

    public static long f(Context context) {
        return ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.c())).longValue();
    }

    public static String g(Context context) {
        return cn.jiguang.ar.a.c(context);
    }

    public static String h(Context context) {
        return (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.a());
    }

    public static String i(Context context) {
        return (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.e());
    }

    public static Object j(Context context) {
        HashMap hashMap = new HashMap();
        long longValue = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.j())).longValue();
        int intValue = ((Integer) cn.jiguang.g.b.a(context, cn.jiguang.g.a.k())).intValue();
        hashMap.put("uuid", (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.i()));
        hashMap.put(UserDataStore.CITY, Long.valueOf(longValue));
        hashMap.put(ServerProtocol.DIALOG_PARAM_STATE, Integer.valueOf(intValue));
        return hashMap;
    }

    public static int k(Context context) {
        return ((Integer) cn.jiguang.g.b.a(context, cn.jiguang.g.a.f())).intValue();
    }

    public static boolean l(Context context) {
        d.c("JBridgeHelper", "canShowLbsPermissionDialog");
        Boolean bool = (Boolean) cn.jiguang.g.b.a(context, cn.jiguang.g.a.z());
        if (bool != null && !bool.booleanValue()) {
            d.d("JBridgeHelper", "lbs disable");
            return false;
        }
        long longValue = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.y())).longValue();
        long longValue2 = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.x())).longValue();
        d.c("JBridgeHelper", "lbs permission dialog shield, firstInit=" + longValue2 + ", delay=" + longValue);
        if (longValue2 > 0) {
            return longValue <= 0 || System.currentTimeMillis() > longValue2 + longValue;
        }
        cn.jiguang.g.b.a(context, cn.jiguang.g.a.x().a((cn.jiguang.g.a<Long>) Long.valueOf(System.currentTimeMillis())));
        return longValue <= 0;
    }

    public static int m(Context context) {
        return ((Integer) cn.jiguang.g.b.a(context, cn.jiguang.g.a.k())).intValue();
    }
}
