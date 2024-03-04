package cn.jiguang.h;

import android.content.Context;
import android.os.Bundle;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.o.d;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static long f2601a;

    public static void a(Context context, int i9) {
        cn.jiguang.al.a.a("JAnalytics", "sendStartAPP:" + i9);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - f2601a < 2000) {
            cn.jiguang.al.a.a("JAnalytics", "sendStartAPP return:" + i9);
            return;
        }
        f2601a = currentTimeMillis;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", i9);
        } catch (Throwable unused) {
        }
        a(context, 2021, "Start the APP", jSONObject);
    }

    public static void a(Context context, int i9, String str, JSONObject jSONObject) {
        b(context, i9, str, jSONObject);
    }

    public static void b(Context context, int i9, String str, JSONObject jSONObject) {
        if (context == null) {
            cn.jiguang.al.a.f("JAnalytics", "reportPushAnylysis NULL context");
        } else if (!d.c()) {
            cn.jiguang.b.a.a(context, i9, str);
        } else {
            Bundle bundle = new Bundle();
            bundle.putInt("code", i9);
            bundle.putString("msg", str);
            JCoreManager.onEvent(context, null, 87, null, bundle, jSONObject);
        }
    }
}
