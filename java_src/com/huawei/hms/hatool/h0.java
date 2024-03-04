package com.huawei.hms.hatool;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class h0 {

    /* renamed from: b  reason: collision with root package name */
    public static h0 f27465b;

    /* renamed from: a  reason: collision with root package name */
    public Context f27466a;

    static {
        new HashMap();
    }

    public static h0 a() {
        return b();
    }

    public static synchronized h0 b() {
        h0 h0Var;
        synchronized (h0.class) {
            if (f27465b == null) {
                f27465b = new h0();
            }
            h0Var = f27465b;
        }
        return h0Var;
    }

    public void a(Context context) {
        this.f27466a = context;
        b(context);
        i.c().b().h(f.a());
    }

    public void a(String str, int i9) {
        if (this.f27466a == null) {
            y.e("hmsSdk", "onReport() null context or SDK was not init.");
            return;
        }
        y.c("hmsSdk", "onReport: Before calling runtaskhandler()");
        a(str, u0.a(i9), b.g());
    }

    public void a(String str, int i9, String str2, JSONObject jSONObject) {
        long currentTimeMillis = System.currentTimeMillis();
        if (2 == i9) {
            currentTimeMillis = u0.a("yyyy-MM-dd", currentTimeMillis);
        }
        o0.c().a(new j0(str2, jSONObject, str, u0.a(i9), currentTimeMillis));
    }

    public void a(String str, String str2) {
        if (!c.a(str, str2)) {
            y.c("hmsSdk", "auto report is closed tag:" + str);
            return;
        }
        long j10 = c.j(str, str2);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - j10 <= 30000) {
            y.f("hmsSdk", "autoReport timeout. interval < 30s ");
            return;
        }
        y.a("hmsSdk", "begin to call onReport!");
        c.a(str, str2, currentTimeMillis);
        a(str, str2, b.g());
    }

    public void a(String str, String str2, String str3) {
        Context context = this.f27466a;
        if (context == null) {
            y.e("hmsSdk", "onReport() null context or SDK was not init.");
            return;
        }
        String a10 = h.a(context);
        if (c.e(str, str2) && !"WIFI".equals(a10)) {
            y.c("hmsSdk", "strNetworkType is :" + a10);
        } else if (TextUtils.isEmpty(a10) || "2G".equals(a10)) {
            y.e("hmsSdk", "The network is bad.");
        } else {
            o0.c().a(new k0(str, str2, str3));
        }
    }

    public final void b(Context context) {
        String str;
        String d10 = f.d(context);
        b.a(d10);
        if (w0.b().a()) {
            String a10 = g0.a(context, "global_v2", "app_ver", "");
            g0.b(context, "global_v2", "app_ver", d10);
            b.b(a10);
            if (!TextUtils.isEmpty(a10)) {
                if (a10.equals(d10)) {
                    return;
                }
                y.c("hmsSdk", "the appVers are different!");
                a().a("", "alltype", a10);
                return;
            }
            str = "app ver is first save!";
        } else {
            str = "userManager.isUserUnlocked() == false";
        }
        y.c("hmsSdk", str);
    }
}
