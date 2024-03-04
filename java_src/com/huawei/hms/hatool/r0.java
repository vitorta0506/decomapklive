package com.huawei.hms.hatool;

import android.text.TextUtils;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class r0 {
    public static void a(String str, String str2) {
        b0 b0Var;
        String str3;
        String replace = "{url}/getPublicKey?keytype=2".replace("{url}", c.f(str, str2));
        String f10 = b.f();
        HashMap hashMap = new HashMap();
        hashMap.put("App-Id", f10);
        try {
            b0Var = a0.a(replace, new byte[0], hashMap);
        } catch (Exception e10) {
            y.e("GetPublicKey", "get pubKey response Exception :" + e10.getMessage());
            b0Var = null;
        }
        if (b0Var == null) {
            str3 = "get pubKey response is null";
        } else if (b0Var.b() == 200) {
            if (TextUtils.isEmpty(b0Var.a())) {
                return;
            }
            c(b0Var.a(), str2);
            return;
        } else {
            str3 = "get pubKey fail HttpCode :" + b0Var.b();
        }
        y.e("GetPublicKey", str3);
    }

    public static boolean a() {
        String a10 = b.a();
        if (TextUtils.isEmpty(a10)) {
            a10 = g0.a(b.i(), "Privacy_MY", "public_key_time_interval", "");
            b.f(a10);
        }
        String m10 = b.m();
        if (TextUtils.isEmpty(m10)) {
            m10 = g0.a(b.i(), "Privacy_MY", "public_key_time_last", "");
            b.c(m10);
        }
        if (TextUtils.isEmpty(a10) || TextUtils.isEmpty(m10)) {
            return true;
        }
        try {
            return System.currentTimeMillis() - Long.parseLong(m10) > ((long) Integer.parseInt(a10));
        } catch (NumberFormatException e10) {
            y.e("GetPublicKey", "checkCachePubKey NumberFormatException :" + e10.getMessage());
            return true;
        }
    }

    public static String b(String str, String str2) {
        String o10;
        String c10 = b.c();
        if (TextUtils.isEmpty(c10)) {
            c10 = g0.a(b.i(), "Privacy_MY", "public_key_version", "");
            b.g(c10);
        }
        if ("maint".equals(str2)) {
            o10 = b.n();
            if (TextUtils.isEmpty(o10)) {
                o10 = ac.a.d("HiAnalytics_Sdk_Public_Sp_Key", g0.a(b.i(), "Privacy_MY", "public_key_maint", ""));
                b.d(o10);
            }
        } else {
            o10 = b.o();
            if (TextUtils.isEmpty(o10)) {
                o10 = ac.a.d("HiAnalytics_Sdk_Public_Sp_Key", g0.a(b.i(), "Privacy_MY", "public_key_oper", ""));
                b.e(o10);
            }
        }
        if (TextUtils.isEmpty(o10) || TextUtils.isEmpty(c10) || a()) {
            o0.a().a(new m0(str, str2));
            return null;
        }
        return o10;
    }

    public static void c(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("publicKey");
            String optString2 = jSONObject.optString("publicKeyOM");
            String optString3 = jSONObject.optString("pubkey_version");
            String str3 = System.currentTimeMillis() + "";
            String optString4 = jSONObject.optString("timeInterval");
            g0.b(b.i(), "Privacy_MY", "public_key_oper", ac.a.g("HiAnalytics_Sdk_Public_Sp_Key", optString));
            g0.b(b.i(), "Privacy_MY", "public_key_maint", ac.a.g("HiAnalytics_Sdk_Public_Sp_Key", optString2));
            g0.b(b.i(), "Privacy_MY", "public_key_time_interval", optString4);
            g0.b(b.i(), "Privacy_MY", "public_key_version", optString3);
            g0.b(b.i(), "Privacy_MY", "public_key_time_last", str3);
            b.e(optString);
            b.d(optString2);
            b.g(optString3);
            b.c(str3);
            b.f(optString4);
        } catch (JSONException e10) {
            y.e("GetPublicKey", "get pubKey parse json JSONException :" + e10.getMessage());
        }
    }
}
