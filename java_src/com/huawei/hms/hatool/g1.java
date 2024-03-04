package com.huawei.hms.hatool;

import android.os.Build;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class g1 extends p {

    /* renamed from: f  reason: collision with root package name */
    public String f27462f;

    /* renamed from: g  reason: collision with root package name */
    public String f27463g;

    /* renamed from: h  reason: collision with root package name */
    public String f27464h;

    @Override // com.huawei.hms.hatool.s
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("_rom_ver", this.f27464h);
        jSONObject.put("_emui_ver", this.f27572a);
        jSONObject.put("_model", Build.MODEL);
        jSONObject.put("_mcc", this.f27462f);
        jSONObject.put("_mnc", this.f27463g);
        jSONObject.put("_package_name", this.f27573b);
        jSONObject.put("_app_ver", this.f27574c);
        jSONObject.put("_lib_ver", "2.2.0.313");
        jSONObject.put("_channel", this.f27575d);
        jSONObject.put("_lib_name", "hianalytics");
        jSONObject.put("_oaid_tracking_flag", this.f27576e);
        return jSONObject;
    }

    public void f(String str) {
        this.f27462f = str;
    }

    public void g(String str) {
        this.f27463g = str;
    }

    public void h(String str) {
        this.f27464h = str;
    }
}
