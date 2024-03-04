package com.huawei.hms.hatool;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class j0 implements n0 {

    /* renamed from: a  reason: collision with root package name */
    public Context f27490a = b.i();

    /* renamed from: b  reason: collision with root package name */
    public String f27491b;

    /* renamed from: c  reason: collision with root package name */
    public JSONObject f27492c;

    /* renamed from: d  reason: collision with root package name */
    public String f27493d;

    /* renamed from: e  reason: collision with root package name */
    public String f27494e;

    /* renamed from: f  reason: collision with root package name */
    public String f27495f;

    /* renamed from: g  reason: collision with root package name */
    public String f27496g;

    /* renamed from: h  reason: collision with root package name */
    public Boolean f27497h;

    public j0(String str, JSONObject jSONObject, String str2, String str3, long j10) {
        this.f27491b = str;
        this.f27492c = jSONObject;
        this.f27493d = str2;
        this.f27494e = str3;
        this.f27495f = String.valueOf(j10);
        if (a.i(str2, "oper")) {
            f0 a10 = e0.a().a(str2, j10);
            this.f27496g = a10.a();
            this.f27497h = Boolean.valueOf(a10.b());
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONArray jSONArray;
        y.c("hmsSdk", "Begin to run EventRecordTask...");
        int h10 = b.h();
        int k10 = c.k(this.f27493d, this.f27494e);
        if (q0.a(this.f27490a, "stat_v2_1", h10 * 1048576)) {
            y.c("hmsSdk", "stat sp file reach max limited size, discard new event");
            h0.a().a("", "alltype");
            return;
        }
        q qVar = new q();
        qVar.b(this.f27491b);
        qVar.a(this.f27492c.toString());
        qVar.d(this.f27494e);
        qVar.c(this.f27495f);
        qVar.f(this.f27496g);
        Boolean bool = this.f27497h;
        qVar.e(bool == null ? null : String.valueOf(bool));
        try {
            JSONObject d10 = qVar.d();
            String a10 = u0.a(this.f27493d, this.f27494e);
            String a11 = g0.a(this.f27490a, "stat_v2_1", a10, "");
            try {
                jSONArray = !TextUtils.isEmpty(a11) ? new JSONArray(a11) : new JSONArray();
            } catch (JSONException unused) {
                y.d("hmsSdk", "Cached data corrupted: stat_v2_1");
                jSONArray = new JSONArray();
            }
            jSONArray.put(d10);
            g0.b(this.f27490a, "stat_v2_1", a10, jSONArray.toString());
            if (jSONArray.toString().length() > k10 * 1024) {
                h0.a().a(this.f27493d, this.f27494e);
            }
        } catch (JSONException unused2) {
            y.e("hmsSdk", "eventRecord toJson error! The record failed.");
        }
    }
}
