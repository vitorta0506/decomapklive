package cn.jiguang.b;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.appevents.UserDataStore;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.rtmp.TXLiveConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f2372a;

    /* renamed from: b  reason: collision with root package name */
    private static List<Integer> f2373b;

    /* renamed from: c  reason: collision with root package name */
    private static Map<Integer, JSONArray> f2374c;

    /* renamed from: d  reason: collision with root package name */
    private static a f2375d;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f2377a = "";

        /* renamed from: b  reason: collision with root package name */
        public Map<Integer, b> f2378b = new HashMap();

        public void a() {
            this.f2377a = "";
            this.f2378b.clear();
        }
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private int f2379a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f2380b;

        /* renamed from: c  reason: collision with root package name */
        private int f2381c;

        public void a(int i9) {
            this.f2379a = i9;
        }

        public void a(boolean z10) {
            this.f2380b = z10;
        }

        public boolean a() {
            return this.f2380b;
        }

        public int b() {
            return this.f2381c;
        }

        public void b(int i9) {
            this.f2381c = i9;
        }

        public String toString() {
            return "ControlDataBody{ac=" + this.f2379a + ", sw=" + this.f2380b + ", ri=" + this.f2381c + '}';
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        f2373b = arrayList;
        f2374c = null;
        f2375d = null;
        arrayList.add(2021);
        f2373b.add(2022);
        f2373b.add(2023);
        f2373b.add(2025);
        f2373b.add(2026);
        f2373b.add(2027);
        f2373b.add(Integer.valueOf((int) TXLiveConstants.PLAY_EVT_GET_METADATA));
        f2373b.add(2029);
        f2373b.add(Integer.valueOf((int) TXLiveConstants.PLAY_EVT_GET_FLVSESSIONKEY));
    }

    private static long a(Context context, int i9, long j10) {
        SharedPreferences h10 = h(context);
        return h10.getLong("KEY_JSON_DATA_TIME_" + i9, j10);
    }

    public static synchronized b a(Context context, int i9) {
        b bVar;
        synchronized (c.class) {
            bVar = g(context).f2378b.get(Integer.valueOf(i9));
        }
        return bVar;
    }

    private static String a(Context context, int i9, String str) {
        SharedPreferences h10 = h(context);
        return h10.getString(i9 + "", str);
    }

    private static JSONArray a(JSONObject jSONObject, int i9, JSONArray jSONArray) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        if (2021 == i9 && (optJSONObject = jSONArray.optJSONObject(jSONArray.length() - 1)) != null && (optJSONObject2 = optJSONObject.optJSONObject(PushConstants.EXTRA)) != null && 1 == optJSONObject2.optInt("type")) {
            if (jSONObject.optLong("itime", 0L) - optJSONObject.optLong("itime", 0L) < 500) {
                jSONArray.remove(jSONArray.length() - 1);
            }
        }
        return jSONArray;
    }

    public static synchronized void a(Context context) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        synchronized (c.class) {
            cn.jiguang.as.d.c("JAnalyticsUtil", "sendAll");
            boolean b10 = b(context);
            cn.jiguang.as.d.c("JAnalyticsUtil", "sendAll haveControlData:" + b10);
            if (b10) {
                for (int i9 = 0; i9 < f2373b.size(); i9++) {
                    Integer num = f2373b.get(i9);
                    cn.jiguang.as.d.c("JAnalyticsUtil", "sendAll haveControlData code:" + num);
                    b a10 = a(context, num.intValue());
                    cn.jiguang.as.d.c("JAnalyticsUtil", "sendAll haveControlData controlData:" + a10);
                    if (a10 != null && a10.a()) {
                        if (System.currentTimeMillis() - a(context, num.intValue(), 0L) >= a10.b() * 1000) {
                            JSONArray jSONArray = f(context).get(num);
                            cn.jiguang.as.d.c("JAnalyticsUtil", "sendAll haveControlData jsonArray:" + jSONArray);
                            if (jSONArray != null) {
                                if (num.intValue() == 2021 && (optJSONObject = jSONArray.optJSONObject(jSONArray.length() - 1)) != null && (optJSONObject2 = optJSONObject.optJSONObject(PushConstants.EXTRA)) != null && 1 == optJSONObject2.optInt("type")) {
                                    long optLong = optJSONObject.optLong("itime", 0L);
                                    if (System.currentTimeMillis() - optLong < 2000) {
                                        cn.jiguang.as.d.c("JAnalyticsUtil", "sendAll haveControlData 2021 itime:" + optLong);
                                    }
                                }
                                cn.jiguang.as.d.c("JAnalyticsUtil", "sendAll haveControlData report:" + jSONArray);
                                cn.jiguang.d.a.a(context, jSONArray);
                                f(context).remove(num);
                                a(context, num.intValue(), (JSONArray) null);
                                b(context, num.intValue());
                            }
                        }
                    }
                }
            }
        }
    }

    private static void a(Context context, int i9, JSONArray jSONArray) {
        SharedPreferences.Editor edit = h(context).edit();
        if (jSONArray == null) {
            edit.remove(i9 + "");
        } else {
            edit.putString(i9 + "", jSONArray.toString());
        }
        edit.apply();
    }

    private static void a(Context context, Map<Integer, JSONArray> map) {
        for (int i9 = 0; i9 < f2373b.size(); i9++) {
            Integer num = f2373b.get(i9);
            String a10 = a(context, num.intValue(), (String) null);
            if (a10 != null) {
                try {
                    map.put(num, new JSONArray(a10));
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static synchronized void a(Context context, JSONObject jSONObject) {
        synchronized (c.class) {
            a(context, jSONObject, true);
        }
    }

    public static synchronized void a(final Context context, JSONObject jSONObject, boolean z10) {
        synchronized (c.class) {
            int optInt = jSONObject.optInt("code");
            if (b(context)) {
                b a10 = a(context, optInt);
                if (a10 != null && a10.a()) {
                    JSONArray jSONArray = f(context).get(Integer.valueOf(optInt));
                    if (jSONArray == null) {
                        jSONArray = new JSONArray();
                    }
                    JSONArray a11 = a(jSONObject, optInt, jSONArray);
                    f(context).put(Integer.valueOf(optInt), a11);
                    a11.put(jSONObject);
                    a(context, optInt, a11);
                }
                if (!z10) {
                    return;
                }
                cn.jiguang.bg.d.a("FUTURE_TASK", new cn.jiguang.bg.b() { // from class: cn.jiguang.b.c.1
                    @Override // cn.jiguang.bg.b
                    public void a() {
                        try {
                            c.a(context);
                        } catch (Throwable unused) {
                        }
                    }
                });
            } else if (2022 == optInt) {
                JSONArray jSONArray2 = f(context).get(Integer.valueOf(optInt));
                if (jSONArray2 == null) {
                    jSONArray2 = new JSONArray();
                }
                jSONArray2.put(jSONObject);
                a(context, optInt, jSONArray2);
            }
        }
    }

    public static void a(Context context, boolean z10) {
        h(context).edit().putBoolean("KEY_INSTALL_FIRST_START_APP", z10).apply();
    }

    private static synchronized void a(a aVar, JSONObject jSONObject) {
        synchronized (c.class) {
            aVar.a();
            if (jSONObject != null) {
                aVar.f2377a = jSONObject.optString("sign", "");
                JSONArray optJSONArray = jSONObject.optJSONArray(UserDataStore.CITY);
                if (optJSONArray != null) {
                    for (int i9 = 0; i9 < optJSONArray.length(); i9++) {
                        JSONObject optJSONObject = optJSONArray.optJSONObject(i9);
                        int optInt = optJSONObject.optInt("ac", -1);
                        boolean optBoolean = optJSONObject.optBoolean("sw", false);
                        int optInt2 = optJSONObject.optInt("ri", -1);
                        b bVar = new b();
                        bVar.a(optInt);
                        bVar.a(optBoolean);
                        bVar.b(optInt2);
                        cn.jiguang.as.d.c("JAnalyticsUtil", "setControlData :" + bVar);
                        aVar.f2378b.put(Integer.valueOf(optInt), bVar);
                    }
                }
            }
        }
    }

    private static void b(Context context, int i9) {
        SharedPreferences.Editor edit = h(context).edit();
        edit.putLong("KEY_JSON_DATA_TIME_" + i9, System.currentTimeMillis());
        edit.apply();
    }

    public static synchronized void b(Context context, JSONObject jSONObject) {
        synchronized (c.class) {
            a(g(context), jSONObject);
            SharedPreferences h10 = h(context);
            (jSONObject != null ? h10.edit().putString("KEY_JSON_DATA_CONTROL", jSONObject.toString()) : h10.edit().remove("KEY_JSON_DATA_CONTROL")).apply();
        }
    }

    public static synchronized boolean b(Context context) {
        boolean z10;
        synchronized (c.class) {
            z10 = !"".equals(h(context).getString("KEY_JSON_DATA_CONTROL", ""));
        }
        return z10;
    }

    public static boolean b(Context context, boolean z10) {
        return h(context).getBoolean("KEY_INSTALL_FIRST_START_APP", z10);
    }

    public static synchronized String c(Context context) {
        String str;
        synchronized (c.class) {
            str = g(context).f2377a;
        }
        return str;
    }

    public static long d(Context context) {
        return h(context).getLong("KEY_JSON_DATA_CONTROL_TIME", 0L);
    }

    public static void e(Context context) {
        h(context).edit().putLong("KEY_JSON_DATA_CONTROL_TIME", System.currentTimeMillis()).apply();
    }

    private static Map<Integer, JSONArray> f(Context context) {
        if (f2374c == null) {
            HashMap hashMap = new HashMap();
            f2374c = hashMap;
            a(context, hashMap);
        }
        return f2374c;
    }

    private static a g(Context context) {
        if (f2375d == null) {
            f2375d = new a();
            String string = h(context).getString("KEY_JSON_DATA_CONTROL", "");
            try {
                cn.jiguang.as.d.c("JAnalyticsUtil", "data control l:" + string);
                a(f2375d, new JSONObject(string));
            } catch (Throwable unused) {
            }
        }
        return f2375d;
    }

    private static SharedPreferences h(Context context) {
        if (f2372a == null) {
            f2372a = context.getSharedPreferences("cn.jiguang.analytics_push", 0);
        }
        return f2372a;
    }
}
