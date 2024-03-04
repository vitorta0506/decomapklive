package com.huawei.hms.hatool;

import org.json.JSONObject;
/* loaded from: classes4.dex */
public class f1 extends o {

    /* renamed from: g  reason: collision with root package name */
    public String f27461g = "";

    @Override // com.huawei.hms.hatool.s
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("protocol_version", "1");
        jSONObject.put("compress_mode", "1");
        jSONObject.put("serviceid", this.f27558d);
        jSONObject.put("appid", this.f27555a);
        jSONObject.put("hmac", this.f27461g);
        jSONObject.put("chifer", this.f27560f);
        jSONObject.put("timestamp", this.f27556b);
        jSONObject.put("servicetag", this.f27557c);
        jSONObject.put("requestid", this.f27559e);
        return jSONObject;
    }

    public void g(String str) {
        this.f27461g = str;
    }
}
