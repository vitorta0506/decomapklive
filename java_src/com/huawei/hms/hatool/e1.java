package com.huawei.hms.hatool;

import org.json.JSONObject;
/* loaded from: classes4.dex */
public class e1 extends n {

    /* renamed from: b  reason: collision with root package name */
    public String f27448b = "";

    /* renamed from: c  reason: collision with root package name */
    public String f27449c = "";

    /* renamed from: d  reason: collision with root package name */
    public String f27450d = "";

    /* renamed from: e  reason: collision with root package name */
    public String f27451e = "";

    /* renamed from: f  reason: collision with root package name */
    public String f27452f = "";

    /* renamed from: g  reason: collision with root package name */
    public String f27453g;

    @Override // com.huawei.hms.hatool.s
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("androidid", this.f27554a);
        jSONObject.put("oaid", this.f27453g);
        jSONObject.put("uuid", this.f27452f);
        jSONObject.put("upid", this.f27451e);
        jSONObject.put("imei", this.f27448b);
        jSONObject.put("sn", this.f27449c);
        jSONObject.put("udid", this.f27450d);
        return jSONObject;
    }

    public void b(String str) {
        this.f27448b = str;
    }

    public void c(String str) {
        this.f27453g = str;
    }

    public void d(String str) {
        this.f27449c = str;
    }

    public void e(String str) {
        this.f27450d = str;
    }

    public void f(String str) {
        this.f27451e = str;
    }

    public void g(String str) {
        this.f27452f = str;
    }
}
