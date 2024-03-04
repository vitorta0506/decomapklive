package cn.jiguang.b;

import android.content.Context;
import android.os.Bundle;
import cn.jiguang.f.h;
import cn.jpush.android.local.JPushConstants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.rtmp.TXLiveConstants;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static long f2365a;

    /* renamed from: b  reason: collision with root package name */
    private static long f2366b;

    private static JSONObject a(int i9, String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("code", i9);
            if (str != null) {
                jSONObject2.put("msg", str);
            }
            if (jSONObject != null) {
                jSONObject2.put(PushConstants.EXTRA, jSONObject);
            }
        } catch (Throwable unused) {
        }
        return jSONObject2;
    }

    private static JSONObject a(Context context, JSONObject jSONObject, boolean z10) {
        if (z10) {
            try {
                c(context);
            } catch (Throwable th2) {
                cn.jiguang.as.d.d("JAnylysis", "getContainer", th2);
            }
        }
        boolean z11 = false;
        boolean z12 = 1 == h.a(context);
        String b10 = h.b(context);
        int d10 = h.d(context);
        long currentTimeMillis = (System.currentTimeMillis() - f2365a) / 1000;
        boolean z13 = cn.jiguang.av.b.f2130a;
        if (f2366b != 0 && System.currentTimeMillis() - f2366b <= 500) {
            z11 = true;
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        jSONObject.put("type", "analysis_info");
        jSONObject.put("is_wifi", z12);
        jSONObject.put("oporater", b10);
        jSONObject.put("net_type", d10);
        jSONObject.put("keep_time", currentTimeMillis);
        jSONObject.put("background", z13);
        jSONObject.put("is_first", z11);
        jSONObject.put("itime", currentTimeMillis2);
        jSONObject.put("os", "a");
        return jSONObject;
    }

    public static void a(Context context) {
        Context applicationContext = context.getApplicationContext();
        if ("".equals(cn.jiguang.az.b.a().b(JPushConstants.SDK_TYPE, ""))) {
            cn.jiguang.as.d.c("JAnylysis", "periodTask not jpush sdk");
        } else {
            b.a(applicationContext);
        }
    }

    public static void a(Context context, int i9) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", i9);
        } catch (Throwable unused) {
        }
        a(context, 2021, "Start the APP", jSONObject);
    }

    public static void a(Context context, int i9, String str) {
        c.a(context, a(context, a(i9, str, (JSONObject) null), false), false);
    }

    private static void a(Context context, int i9, String str, JSONObject jSONObject) {
        a(context, a(i9, str, jSONObject));
    }

    public static void a(Context context, Bundle bundle, Object obj) {
        JSONObject a10;
        try {
            if ("".equals(cn.jiguang.az.b.a().b(JPushConstants.SDK_TYPE, ""))) {
                cn.jiguang.as.d.c("JAnylysis", "save not jpush sdk");
                return;
            }
            Context applicationContext = context.getApplicationContext();
            int i9 = bundle.getInt("code");
            String string = bundle.getString("msg");
            if (obj == null) {
                a10 = a(i9, string, (JSONObject) null);
            } else if (!(obj instanceof JSONObject)) {
                return;
            } else {
                a10 = a(i9, string, (JSONObject) obj);
            }
            a(applicationContext, a10);
        } catch (Throwable unused) {
        }
    }

    private static void a(Context context, JSONObject jSONObject) {
        JSONObject b10 = b(context, jSONObject);
        cn.jiguang.as.d.c("JAnylysis", "may save json:" + jSONObject);
        c.a(context, b10);
    }

    private static JSONObject b(Context context, JSONObject jSONObject) {
        return a(context, jSONObject, true);
    }

    private static void b(Context context, int i9, String str) {
        a(context, i9, str, null);
    }

    public static boolean b(Context context) {
        return c.b(context, true);
    }

    public static synchronized void c(Context context) {
        synchronized (a.class) {
            if (0 != f2365a) {
                return;
            }
            if (context.getPackageName().equals(cn.jiguang.f.a.a(context))) {
                f2365a = System.currentTimeMillis();
                b.a(context);
                if (b(context)) {
                    f2366b = System.currentTimeMillis();
                    c.a(context, false);
                    b(context, 2022, "The APP activation");
                }
                a(context, 1);
            }
        }
    }

    public static void d(Context context) {
        b(context, TXLiveConstants.PLAY_EVT_GET_FLVSESSIONKEY, "Register success");
    }

    public static void e(Context context) {
        b(context, 2023, "Exit the APP");
    }
}
