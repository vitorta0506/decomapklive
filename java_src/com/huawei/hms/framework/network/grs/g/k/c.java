package com.huawei.hms.framework.network.grs.g.k;

import android.content.Context;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final GrsBaseInfo f27414a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f27415b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<String> f27416c = new HashSet();

    public c(GrsBaseInfo grsBaseInfo, Context context) {
        this.f27414a = grsBaseInfo;
        this.f27415b = context;
    }

    private String e() {
        Set<String> b10 = com.huawei.hms.framework.network.grs.f.b.a(this.f27415b.getPackageName(), this.f27414a).b();
        if (b10.isEmpty()) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        for (String str : b10) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("services", jSONArray);
            Logger.i("GrsRequestInfo", "post service list is:%s", jSONObject.toString());
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    private String f() {
        Logger.v("GrsRequestInfo", "getGeoipService enter");
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        for (String str : this.f27416c) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("services", jSONArray);
            Logger.v("GrsRequestInfo", "post query service list is:%s", jSONObject.toString());
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    public Context a() {
        return this.f27415b;
    }

    public void a(String str) {
        this.f27416c.add(str);
    }

    public GrsBaseInfo b() {
        return this.f27414a;
    }

    public String c() {
        return this.f27416c.size() == 0 ? e() : f();
    }

    public Set<String> d() {
        return this.f27416c;
    }
}
