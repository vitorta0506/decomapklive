package cn.jiguang.b;

import android.content.Context;
import cn.jiguang.net.HttpRequest;
import cn.jiguang.net.HttpResponse;
import cn.jiguang.net.HttpUtils;
import cn.jpush.android.local.JPushConstants;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static String f2367a = null;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f2368b = false;

    /* renamed from: c  reason: collision with root package name */
    private static final String f2369c = cn.jiguang.s.a.b(new byte[]{88, 8, 73, 72, 109, 123, 93, 64, 118, 122, 76, 87, 93, 0, 97, 74});

    /* renamed from: d  reason: collision with root package name */
    private static final String f2370d = cn.jiguang.s.a.b(new byte[]{67, 100, 100, 125, 66, 78, 118, 116, 100, 79, 80, 94, 41, 100, 66, 111});

    public static void a(final Context context) {
        cn.jiguang.bg.d.a("FUTURE_TASK", new cn.jiguang.bg.b() { // from class: cn.jiguang.b.b.1
            @Override // cn.jiguang.bg.b
            public void a() {
                if (b.f2368b) {
                    return;
                }
                synchronized (b.class) {
                    if (b.f2368b) {
                        return;
                    }
                    boolean unused = b.f2368b = true;
                    b.c(context);
                    boolean unused2 = b.f2368b = false;
                }
            }
        });
    }

    private static String b() {
        cn.jiguang.as.d.c("HttpControl", "BuildConfig.INTERNAL_USE:false");
        cn.jiguang.as.d.c("HttpControl", "URL_BASE_TEST:" + f2367a);
        return "https://ce3e75d5.jpush.cn";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void c(Context context) {
        synchronized (b.class) {
            long currentTimeMillis = System.currentTimeMillis() - c.d(context);
            if (currentTimeMillis < 86400000) {
                cn.jiguang.as.d.c("HttpControl", "controlData time:" + currentTimeMillis);
                return;
            }
            String b10 = cn.jiguang.az.b.a().b(JPushConstants.SDK_TYPE, "");
            if ("".equals(b10)) {
                cn.jiguang.as.d.c("JAnalyticsManager", "controlData not jpush sdk");
                return;
            }
            String b11 = b();
            HttpRequest httpRequest = new HttpRequest(b11 + "/wi/sm2cg");
            httpRequest.setRequestProperty("Content-Type", "application/jason");
            JSONObject jSONObject = new JSONObject();
            cn.jiguang.be.a a10 = cn.jiguang.be.a.a(context);
            jSONObject.put("ak", cn.jiguang.d.a.e(context));
            jSONObject.put("p", "a");
            jSONObject.put("mo", a10.f2453c);
            jSONObject.put("ma", a10.f2462l);
            jSONObject.put("ro", cn.jiguang.r.d.a());
            jSONObject.put("apv", a10.f2451a);
            jSONObject.put("jcv", cn.jiguang.a.a.f1808b);
            jSONObject.put("jpv", b10);
            jSONObject.put("av", a10.f2467q);
            jSONObject.put("aiv", 0);
            jSONObject.put("sign", c.b(context) ? c.c(context) : "");
            String jSONObject2 = jSONObject.toString();
            cn.jiguang.as.d.c("HttpControl", "controlData ulr:" + httpRequest.getUrl());
            cn.jiguang.as.d.c("HttpControl", "controlData body:" + jSONObject2);
            byte[] bytes = jSONObject2.getBytes();
            String str = f2369c;
            String str2 = f2370d;
            String a11 = cn.jiguang.bh.d.a(bytes, str, str2);
            httpRequest.setBody(a11);
            cn.jiguang.as.d.c("HttpControl", "controlData aesEncryptBody:" + a11);
            HttpResponse httpPost = HttpUtils.httpPost(context, httpRequest);
            cn.jiguang.as.d.c("HttpControl", "controlData httpResponse:" + httpPost.toString());
            if (200 == httpPost.getResponseCode()) {
                String str3 = new String(cn.jiguang.bh.d.a(httpPost.getResponseBody(), str, str2));
                cn.jiguang.as.d.c("HttpControl", "controlData response body:" + str3);
                JSONObject jSONObject3 = new JSONObject(str3);
                int optInt = jSONObject3.optInt("code");
                if (2000 == optInt) {
                    c.e(context);
                    c.b(context, jSONObject3.optJSONObject("body"));
                } else if (4009 == optInt) {
                    c.e(context);
                } else {
                    cn.jiguang.as.d.h("HttpControl", "controlData response body w:" + str3);
                }
            }
        }
    }
}
