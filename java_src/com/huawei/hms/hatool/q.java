package com.huawei.hms.hatool;

import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class q implements s {

    /* renamed from: a  reason: collision with root package name */
    public String f27579a;

    /* renamed from: b  reason: collision with root package name */
    public String f27580b;

    /* renamed from: c  reason: collision with root package name */
    public String f27581c;

    /* renamed from: d  reason: collision with root package name */
    public String f27582d;

    /* renamed from: e  reason: collision with root package name */
    public String f27583e;

    /* renamed from: f  reason: collision with root package name */
    public String f27584f;

    @Override // com.huawei.hms.hatool.s
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", this.f27579a);
        jSONObject.put("eventtime", this.f27582d);
        jSONObject.put("event", this.f27580b);
        jSONObject.put("event_session_name", this.f27583e);
        jSONObject.put("first_session_event", this.f27584f);
        if (TextUtils.isEmpty(this.f27581c)) {
            return null;
        }
        jSONObject.put("properties", new JSONObject(this.f27581c));
        return jSONObject;
    }

    public void a(String str) {
        this.f27581c = str;
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f27580b = jSONObject.optString("event");
        this.f27581c = jSONObject.optString("properties");
        this.f27581c = d.a(this.f27581c, d0.f().a());
        this.f27579a = jSONObject.optString("type");
        this.f27582d = jSONObject.optString("eventtime");
        this.f27583e = jSONObject.optString("event_session_name");
        this.f27584f = jSONObject.optString("first_session_event");
    }

    public String b() {
        return this.f27582d;
    }

    public void b(String str) {
        this.f27580b = str;
    }

    public String c() {
        return this.f27579a;
    }

    public void c(String str) {
        this.f27582d = str;
    }

    public JSONObject d() {
        JSONObject a10 = a();
        a10.put("properties", d.b(this.f27581c, d0.f().a()));
        return a10;
    }

    public void d(String str) {
        this.f27579a = str;
    }

    public void e(String str) {
        this.f27584f = str;
    }

    public void f(String str) {
        this.f27583e = str;
    }
}
