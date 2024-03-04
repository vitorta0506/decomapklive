package com.huawei.hms.hatool;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.huawei.hms.hatool.r  reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C0711r implements s {

    /* renamed from: a  reason: collision with root package name */
    public List<q> f27585a;

    /* renamed from: b  reason: collision with root package name */
    public o f27586b;

    /* renamed from: c  reason: collision with root package name */
    public p f27587c;

    /* renamed from: d  reason: collision with root package name */
    public s f27588d;

    /* renamed from: e  reason: collision with root package name */
    public String f27589e = "";

    /* renamed from: f  reason: collision with root package name */
    public String f27590f;

    public C0711r(String str) {
        this.f27590f = str;
    }

    @Override // com.huawei.hms.hatool.s
    public JSONObject a() {
        String str;
        List<q> list = this.f27585a;
        if (list == null || list.size() == 0) {
            str = "Not have actionEvent to send";
        } else if (this.f27586b == null || this.f27587c == null || this.f27588d == null) {
            str = "model in wrong format";
        } else {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("header", this.f27586b.a());
            JSONObject jSONObject2 = new JSONObject();
            JSONObject a10 = this.f27588d.a();
            a10.put("properties", this.f27587c.a());
            try {
                a10.put("events_global_properties", new JSONObject(this.f27589e));
            } catch (JSONException unused) {
                a10.put("events_global_properties", this.f27589e);
            }
            jSONObject2.put("events_common", a10);
            JSONArray jSONArray = new JSONArray();
            for (q qVar : this.f27585a) {
                JSONObject a11 = qVar.a();
                if (a11 != null) {
                    jSONArray.put(a11);
                } else {
                    y.e("hmsSdk", "custom event is empty,delete this event");
                }
            }
            jSONObject2.put("events", jSONArray);
            try {
                String a12 = d.a(t0.a(jSONObject2.toString().getBytes("UTF-8")), this.f27590f);
                if (TextUtils.isEmpty(a12)) {
                    y.e("hmsSdk", "eventInfo encrypt failed,report over!");
                    return null;
                }
                jSONObject.put("event", a12);
                return jSONObject;
            } catch (UnsupportedEncodingException unused2) {
                str = "getBitZip(): Unsupported coding : utf-8";
            }
        }
        y.e("hmsSdk", str);
        return null;
    }

    public void a(e1 e1Var) {
        this.f27588d = e1Var;
    }

    public void a(o oVar) {
        this.f27586b = oVar;
    }

    public void a(p pVar) {
        this.f27587c = pVar;
    }

    public void a(String str) {
        if (str != null) {
            this.f27589e = str;
        }
    }

    public void a(List<q> list) {
        this.f27585a = list;
    }
}
