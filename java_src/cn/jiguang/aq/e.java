package cn.jiguang.aq;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jpush.android.service.WakedResultReceiver;
import com.meizu.cloud.pushsdk.notification.model.AppIconSetting;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f2033a = false;

    /* renamed from: b  reason: collision with root package name */
    private static WakedResultReceiver f2034b;

    public static JSONArray a(Context context) {
        JSONObject a10;
        synchronized ("waked_cache_v2.json") {
            a10 = cn.jiguang.s.c.a(context, "waked_cache_v2.json");
        }
        if (a10 == null) {
            a10 = new JSONObject();
        }
        JSONArray optJSONArray = a10.optJSONArray("content");
        if (optJSONArray == null || optJSONArray.length() == 0) {
            cn.jiguang.al.a.a("JWakedHelper", "no save data");
            return null;
        }
        return a(context, optJSONArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ff A[Catch: all -> 0x024e, TryCatch #0 {all -> 0x024e, blocks: (B:4:0x0008, B:7:0x0010, B:8:0x0016, B:11:0x0024, B:13:0x0034, B:16:0x003b, B:35:0x00df, B:37:0x00ff, B:39:0x0110, B:41:0x0118, B:17:0x0051, B:21:0x0061, B:23:0x006f, B:25:0x007f, B:27:0x008f, B:28:0x009e, B:30:0x00a7, B:31:0x00ab, B:33:0x00c0, B:29:0x00a2, B:32:0x00af, B:34:0x00c4, B:42:0x011c, B:43:0x0135, B:45:0x013b, B:46:0x017c, B:48:0x0182, B:50:0x01cb, B:52:0x01d7, B:54:0x01dd, B:56:0x01e9, B:57:0x0218, B:58:0x022c, B:60:0x0232, B:61:0x0246), top: B:68:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONArray a(android.content.Context r19, org.json.JSONArray r20) {
        /*
            Method dump skipped, instructions count: 617
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.aq.e.a(android.content.Context, org.json.JSONArray):org.json.JSONArray");
    }

    private static JSONObject a(String str, int i9, boolean z10) {
        if (str == null) {
            str = "";
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("wake_type", i9);
            jSONObject.put("package", str);
            jSONObject.put("app_alive", z10);
            return jSONObject;
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakedHelper", "packageWakedJson error:" + th2.getMessage());
            return null;
        }
    }

    private static void a(Context context, int i9) {
        if (context == null) {
            cn.jiguang.al.a.d("JWakedHelper", "context is null,can not notify waked");
            return;
        }
        WakedResultReceiver e10 = e(context);
        f2034b = e10;
        if (e10 == null) {
            cn.jiguang.al.a.d("JWakedHelper", "waked receiver is null");
            return;
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("1", context);
        hashMap.put("2", Integer.valueOf(i9));
        f2034b.onWakeMap(hashMap);
    }

    public static void a(final Context context, final Bundle bundle, final int i9) {
        try {
            cn.jiguang.al.a.a("JWakedHelper", "executeWakedAction.");
            a(context, i9);
            cn.jiguang.o.d.a(new cn.jiguang.o.e() { // from class: cn.jiguang.aq.e.1
                @Override // cn.jiguang.o.e
                public void a() {
                    e.c(context, bundle, i9);
                }
            });
            cn.jiguang.h.a.a(context, 2);
        } catch (Throwable th2) {
            cn.jiguang.al.a.a("JWakedHelper", "executeWakedAction failed:" + th2.getLocalizedMessage());
        }
    }

    public static void a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AppIconSetting.DEFAULT_LARGE_ICON, str);
            synchronized ("di.json") {
                JSONObject a10 = cn.jiguang.s.c.a(context, "di.json");
                if (a10 == null) {
                    a10 = new JSONObject();
                }
                JSONArray optJSONArray = a10.optJSONArray("content");
                if (optJSONArray == null) {
                    optJSONArray = new JSONArray();
                }
                optJSONArray.put(jSONObject);
                a10.put("content", optJSONArray);
                cn.jiguang.s.c.a(context, "di.json", a10);
                cn.jiguang.al.a.a("JWakedHelper", "save di is: " + str + ", success!");
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakedHelper", "saveDId failed:" + th2.getMessage());
        }
    }

    private static void a(Context context, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            cn.jiguang.al.a.a("JWakedHelper", "save waked data : " + jSONObject.toString());
            jSONObject.put("itime", cn.jiguang.o.d.h(context));
            jSONObject.put("type", "aat3");
            synchronized ("waked_cache_v2.json") {
                JSONObject a10 = cn.jiguang.s.c.a(context, "waked_cache_v2.json");
                if (a10 == null) {
                    a10 = new JSONObject();
                }
                JSONArray optJSONArray = a10.optJSONArray("content");
                if (optJSONArray == null) {
                    optJSONArray = new JSONArray();
                }
                optJSONArray.put(jSONObject);
                a10.put("content", optJSONArray);
                cn.jiguang.s.c.a(context, "waked_cache_v2.json", a10);
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakedHelper", "saveWakedData failed:" + th2.getMessage());
        }
    }

    public static JSONArray b(Context context) {
        JSONObject a10;
        synchronized ("di.json") {
            a10 = cn.jiguang.s.c.a(context, "di.json");
        }
        if (a10 == null) {
            a10 = new JSONObject();
        }
        JSONArray optJSONArray = a10.optJSONArray("content");
        if (optJSONArray == null || optJSONArray.length() == 0) {
            cn.jiguang.al.a.a("JWakedHelper", "no save data");
            return null;
        }
        return optJSONArray;
    }

    public static void c(Context context) {
        synchronized ("di.json") {
            cn.jiguang.s.c.a(context, "di.json", (String) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, Bundle bundle, int i9) {
        String str;
        if (bundle == null) {
            str = "bundle is null,give up save";
        } else if (b.b(context).f2008u) {
            String str2 = null;
            try {
                str2 = bundle.getString("from_package");
            } catch (Throwable unused) {
            }
            if (str2 == null) {
                str2 = "";
            }
            JSONObject a10 = a(str2, i9, f2033a);
            f2033a = true;
            if (a10 == null) {
                return;
            }
            try {
                String string = bundle.getString("jg_extras");
                if (!TextUtils.isEmpty(string)) {
                    a10.put("jg_extras", string);
                }
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JWakedHelper", "save waked extras error:" + th2.getMessage());
            }
            a(context, a10);
            return;
        } else {
            str = "server set do not report waked data,give up save";
        }
        cn.jiguang.al.a.d("JWakedHelper", str);
    }

    public static void d(Context context) {
        synchronized ("waked_cache_v2.json") {
            cn.jiguang.s.c.a(context, "waked_cache_v2.json", (String) null);
        }
    }

    private static WakedResultReceiver e(Context context) {
        WakedResultReceiver wakedResultReceiver = f2034b;
        if (wakedResultReceiver != null) {
            return wakedResultReceiver;
        }
        try {
            Intent intent = new Intent();
            intent.setAction("cn.jpush.android.intent.WakedReceiver");
            intent.setPackage(context.getPackageName());
            intent.addCategory(context.getPackageName());
            List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
            if (queryBroadcastReceivers == null || queryBroadcastReceivers.size() == 0) {
                return null;
            }
            return (WakedResultReceiver) Class.forName(queryBroadcastReceivers.get(0).activityInfo.name).newInstance();
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakedHelper", "find waked receiver throwable:" + th2.getMessage());
            return null;
        }
    }
}
