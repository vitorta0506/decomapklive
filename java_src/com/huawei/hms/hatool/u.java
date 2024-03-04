package com.huawei.hms.hatool;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    public String f27595a;

    /* renamed from: b  reason: collision with root package name */
    public String f27596b;

    /* renamed from: c  reason: collision with root package name */
    public String f27597c;

    /* renamed from: d  reason: collision with root package name */
    public List<q> f27598d;

    /* renamed from: e  reason: collision with root package name */
    public String f27599e;

    public u(String str, String str2, String str3, List<q> list, String str4) {
        this.f27595a = str;
        this.f27596b = str2;
        this.f27597c = str3;
        this.f27598d = list;
        this.f27599e = str4;
    }

    public final String a(String str, String str2) {
        String str3;
        String f10 = c.f(str, str2);
        if (TextUtils.isEmpty(f10)) {
            y.a("hmsSdk", "No report address,TAG : %s,TYPE: %s ", str, str2);
            return "";
        }
        if ("oper".equals(str2)) {
            str3 = "{url}/common/hmshioperqrt";
        } else if ("maint".equals(str2)) {
            str3 = "{url}/common/hmshimaintqrt";
        } else if (!"diffprivacy".equals(str2)) {
            return "";
        } else {
            str3 = "{url}/common/common2";
        }
        return str3.replace("{url}", f10);
    }

    public void a() {
        n0 l0Var;
        o0 c10;
        String str;
        String a10 = a(this.f27595a, this.f27596b);
        if (!TextUtils.isEmpty(a10) || "preins".equals(this.f27596b)) {
            if (!"_hms_config_tag".equals(this.f27595a) && !"_openness_config_tag".equals(this.f27595a)) {
                b();
            }
            C0711r d10 = d();
            if (d10 != null) {
                byte[] a11 = a(d10);
                if (a11.length == 0) {
                    str = "request body is empty";
                } else {
                    l0Var = new i0(a11, a10, this.f27595a, this.f27596b, this.f27599e, this.f27598d);
                    c10 = o0.b();
                }
            } else {
                l0Var = new l0(this.f27598d, this.f27595a, this.f27599e, this.f27596b);
                c10 = o0.c();
            }
            c10.a(l0Var);
            return;
        }
        str = "collectUrl is empty";
        y.e("hmsSdk", str);
    }

    public final byte[] a(C0711r c0711r) {
        String str;
        try {
            JSONObject a10 = c0711r.a();
            if (a10 == null) {
                y.e("hmsSdk", "uploadEvents is null");
                return new byte[0];
            }
            return t0.a(a10.toString().getBytes("UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            str = "sendData(): getBytes - Unsupported coding format!!";
            y.e("hmsSdk", str);
            return new byte[0];
        } catch (JSONException unused2) {
            str = "uploadEvents to json error";
            y.e("hmsSdk", str);
            return new byte[0];
        }
    }

    public final void b() {
        if (q0.a(b.i(), "backup_event", 5242880)) {
            y.d("hmsSdk", "backup file reach max limited size, discard new event ");
            return;
        }
        JSONArray c10 = c();
        String a10 = u0.a(this.f27595a, this.f27596b, this.f27599e);
        y.c("hmsSdk", "Update data cached into backup,spKey: " + a10);
        g0.b(b.i(), "backup_event", a10, c10.toString());
    }

    public final JSONArray c() {
        JSONArray jSONArray = new JSONArray();
        for (q qVar : this.f27598d) {
            try {
                jSONArray.put(qVar.d());
            } catch (JSONException unused) {
                y.c("hmsSdk", "handleEvents: json error,Abandon this data");
            }
        }
        return jSONArray;
    }

    public final C0711r d() {
        return d1.a(this.f27598d, this.f27595a, this.f27596b, this.f27599e, this.f27597c);
    }
}
