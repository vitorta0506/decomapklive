package cn.jiguang.aw;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.as.d;
import cn.jiguang.g.b;
import java.util.LinkedHashMap;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static String f2132a;

    /* renamed from: b  reason: collision with root package name */
    public static int f2133b;

    /* renamed from: c  reason: collision with root package name */
    public static String f2134c;

    /* renamed from: d  reason: collision with root package name */
    public static int f2135d;

    /* renamed from: e  reason: collision with root package name */
    private static final LinkedHashMap<String, Integer> f2136e;

    /* renamed from: f  reason: collision with root package name */
    private static final LinkedHashMap<String, Integer> f2137f;

    /* renamed from: g  reason: collision with root package name */
    private static final LinkedHashMap<String, Integer> f2138g;

    /* renamed from: h  reason: collision with root package name */
    private static final LinkedHashMap<String, Integer> f2139h;

    /* renamed from: i  reason: collision with root package name */
    private static String f2140i;

    /* renamed from: j  reason: collision with root package name */
    private static String f2141j;

    /* renamed from: k  reason: collision with root package name */
    private static String f2142k;

    /* renamed from: l  reason: collision with root package name */
    private static String f2143l;

    static {
        LinkedHashMap<String, Integer> linkedHashMap = new LinkedHashMap<>();
        f2136e = linkedHashMap;
        linkedHashMap.put("s.jpush.cn", 19000);
        linkedHashMap.put("sis.jpush.io", 19000);
        linkedHashMap.put("easytomessage.com", 19000);
        LinkedHashMap<String, Integer> linkedHashMap2 = new LinkedHashMap<>();
        f2137f = linkedHashMap2;
        try {
            String str = new String(Base64.decode("MTIzLjE5Ni4xMTguMjM=", 2));
            String str2 = new String(Base64.decode("MTAzLjIyOS4yMTUuNjA=", 2));
            String str3 = new String(Base64.decode("MTE3LjEyMS40OS4xMDA=", 2));
            linkedHashMap2.put(str, 19000);
            linkedHashMap2.put(str2, 19000);
            linkedHashMap2.put(str3, 19000);
        } catch (Throwable unused) {
        }
        f2138g = new LinkedHashMap<>();
        f2139h = new LinkedHashMap<>();
        f2140i = "";
        f2141j = "";
        f2142k = "";
        f2143l = "";
    }

    public static String a(Context context) {
        if (!JCoreManager.isTestEnv() || TextUtils.isEmpty(f2140i)) {
            String str = (String) b.b(context, cn.jiguang.g.a.P());
            return !TextUtils.isEmpty(str) ? str : "im64.jpush.cn";
        }
        return f2140i;
    }

    public static LinkedHashMap<String, Integer> a() {
        if (JCoreManager.isTestEnv()) {
            LinkedHashMap<String, Integer> linkedHashMap = f2138g;
            if (!linkedHashMap.isEmpty()) {
                return linkedHashMap;
            }
        }
        return f2136e;
    }

    public static void a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            d.g("HostConfig", "conn info was empty");
            return;
        }
        d.c("HostConfig", "get conn info=" + str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("srv");
            d.c("HostConfig", "save srvHost:" + optString);
            if (!TextUtils.isEmpty(optString)) {
                b.a(context, cn.jiguang.g.a.Q().a((cn.jiguang.g.a<String>) optString));
            }
            String optString2 = jSONObject.optString("conn");
            d.c("HostConfig", "save connHost:" + optString2);
            if (TextUtils.isEmpty(optString2)) {
                return;
            }
            b.a(context, cn.jiguang.g.a.P().a((cn.jiguang.g.a<String>) optString2));
        } catch (Throwable unused) {
        }
    }

    public static String b(Context context) {
        if (!JCoreManager.isTestEnv() || TextUtils.isEmpty(f2141j)) {
            String str = (String) b.b(context, cn.jiguang.g.a.Q());
            return !TextUtils.isEmpty(str) ? str : "_im64._tcp.jpush.cn";
        }
        return f2141j;
    }

    public static LinkedHashMap<String, Integer> b() {
        if (JCoreManager.isTestEnv()) {
            LinkedHashMap<String, Integer> linkedHashMap = f2139h;
            if (!linkedHashMap.isEmpty()) {
                return linkedHashMap;
            }
        }
        return f2137f;
    }

    public static String c() {
        return (!JCoreManager.isTestEnv() || TextUtils.isEmpty(f2142k)) ? "_psis._udp.jpush.cn" : f2142k;
    }

    public static String d() {
        return (!JCoreManager.isTestEnv() || TextUtils.isEmpty(f2143l)) ? "" : f2143l;
    }
}
