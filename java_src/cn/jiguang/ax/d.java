package cn.jiguang.ax;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    final g f2152a;

    /* renamed from: b  reason: collision with root package name */
    int f2153b;

    /* renamed from: c  reason: collision with root package name */
    long f2154c;

    /* renamed from: d  reason: collision with root package name */
    long f2155d;

    /* renamed from: e  reason: collision with root package name */
    int f2156e;

    public d(g gVar) {
        this.f2152a = gVar;
    }

    public static d a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            d dVar = new d(new g(jSONObject.getString("ip"), jSONObject.getInt("port")));
            dVar.f2153b = jSONObject.optInt("status");
            dVar.f2154c = jSONObject.optLong("fetch_time");
            dVar.f2155d = jSONObject.optLong("cost");
            dVar.f2156e = jSONObject.optInt("prefer");
            return dVar;
        } catch (JSONException unused) {
            return null;
        }
    }

    public String a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ip", this.f2152a.f2161a);
            jSONObject.put("port", this.f2152a.f2162b);
            jSONObject.put("status", this.f2153b);
            jSONObject.put("fetch_time", this.f2154c);
            jSONObject.put("cost", this.f2155d);
            jSONObject.put("prefer", this.f2156e);
            return jSONObject.toString();
        } catch (JSONException unused) {
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (this.f2153b == dVar.f2153b && this.f2154c == dVar.f2154c && this.f2155d == dVar.f2155d && this.f2156e == dVar.f2156e) {
                g gVar = this.f2152a;
                g gVar2 = dVar.f2152a;
                return gVar != null ? gVar.equals(gVar2) : gVar2 == null;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        g gVar = this.f2152a;
        int hashCode = gVar != null ? gVar.hashCode() : 0;
        long j10 = this.f2154c;
        long j11 = this.f2155d;
        return (((((((hashCode * 31) + this.f2153b) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.f2156e;
    }

    public String toString() {
        return "IpInfo{ipPort=" + this.f2152a + ", status=" + this.f2153b + ", fetchTime=" + this.f2154c + ", cost=" + this.f2155d + ", prefer=" + this.f2156e + '}';
    }
}
