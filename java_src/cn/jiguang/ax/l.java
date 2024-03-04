package cn.jiguang.ax;

import android.text.TextUtils;
import java.util.LinkedHashSet;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    LinkedHashSet<g> f2183a;

    /* renamed from: b  reason: collision with root package name */
    LinkedHashSet<g> f2184b;

    /* renamed from: c  reason: collision with root package name */
    LinkedHashSet<g> f2185c;

    /* renamed from: d  reason: collision with root package name */
    LinkedHashSet<g> f2186d;

    /* renamed from: e  reason: collision with root package name */
    LinkedHashSet<g> f2187e;

    /* renamed from: f  reason: collision with root package name */
    JSONObject f2188f;

    /* renamed from: g  reason: collision with root package name */
    transient g f2189g;

    /* renamed from: h  reason: collision with root package name */
    boolean f2190h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            this.f2183a = a(jSONObject, "ips");
            this.f2184b = a(jSONObject, "ssl_ips");
            this.f2185c = a(jSONObject, "http_report");
            this.f2186d = a(jSONObject, "https_report");
            this.f2187e = a(jSONObject, "sis_ips");
            this.f2190h = jSONObject.optBoolean("data_report");
            this.f2188f = jSONObject.optJSONObject("tcp_report");
            cn.jiguang.as.d.c("sis", "get sis=" + jSONObject.toString(2));
        } catch (Throwable unused) {
        }
    }

    private LinkedHashSet<g> a(JSONObject jSONObject, String str) {
        LinkedHashSet<g> linkedHashSet = new LinkedHashSet<>();
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray(str);
            if (optJSONArray != null) {
                for (int i9 = 0; i9 < optJSONArray.length(); i9++) {
                    g a10 = g.a(optJSONArray.optString(i9, null));
                    if (a10 != null && a10.a()) {
                        linkedHashSet.add(a10);
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return linkedHashSet;
    }

    public boolean a() {
        LinkedHashSet<g> linkedHashSet;
        LinkedHashSet<g> linkedHashSet2 = this.f2183a;
        return (linkedHashSet2 == null || linkedHashSet2.isEmpty()) && ((linkedHashSet = this.f2184b) == null || linkedHashSet.isEmpty());
    }
}
