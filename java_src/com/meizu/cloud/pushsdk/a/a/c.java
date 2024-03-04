package com.meizu.cloud.pushsdk.a.a;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final int f28171a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28172b;

    public c(int i9, String str) {
        this.f28171a = i9;
        this.f28172b = str;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code", this.f28171a);
            jSONObject.put("body", this.f28172b);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return "[NetResponse] " + jSONObject.toString();
    }
}
