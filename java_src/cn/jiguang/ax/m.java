package cn.jiguang.ax;

import android.text.TextUtils;
import java.util.LinkedList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    public String f2191a;

    /* renamed from: b  reason: collision with root package name */
    public int f2192b;

    /* renamed from: c  reason: collision with root package name */
    public g f2193c;

    /* renamed from: d  reason: collision with root package name */
    public long f2194d;

    /* renamed from: e  reason: collision with root package name */
    public long f2195e;

    /* renamed from: f  reason: collision with root package name */
    public long f2196f;

    /* renamed from: g  reason: collision with root package name */
    public int f2197g;

    /* renamed from: h  reason: collision with root package name */
    public double f2198h;

    /* renamed from: i  reason: collision with root package name */
    public double f2199i;

    /* renamed from: j  reason: collision with root package name */
    public long f2200j;

    /* renamed from: k  reason: collision with root package name */
    public int f2201k;

    public static m a(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() != 0) {
            try {
                m mVar = new m();
                mVar.f2191a = jSONObject.optString("appkey");
                mVar.f2192b = jSONObject.getInt("type");
                mVar.f2193c = g.a(jSONObject.getString("addr"));
                mVar.f2195e = jSONObject.getLong("rtime");
                mVar.f2196f = jSONObject.getLong("interval");
                mVar.f2197g = jSONObject.getInt("net");
                mVar.f2201k = jSONObject.getInt("code");
                mVar.f2194d = jSONObject.optLong("uid");
                mVar.f2198h = jSONObject.optDouble("lat");
                mVar.f2199i = jSONObject.optDouble("lng");
                mVar.f2200j = jSONObject.optLong("ltime");
                return mVar;
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static LinkedList<m> a(String str) {
        LinkedList<m> linkedList = new LinkedList<>();
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                    linkedList.add(a(jSONArray.getJSONObject(i9)));
                }
            } catch (JSONException unused) {
            }
        }
        return linkedList;
    }

    private static boolean a(double d10, double d11) {
        return d10 > -90.0d && d10 < 90.0d && d11 > -180.0d && d11 < 180.0d;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.f2191a)) {
                jSONObject.put("appkey", this.f2191a);
            }
            jSONObject.put("type", this.f2192b);
            jSONObject.put("addr", this.f2193c.toString());
            jSONObject.put("rtime", this.f2195e);
            jSONObject.put("interval", this.f2196f);
            jSONObject.put("net", this.f2197g);
            jSONObject.put("code", this.f2201k);
            long j10 = this.f2194d;
            if (j10 != 0) {
                jSONObject.put("uid", j10);
            }
            if (a(this.f2198h, this.f2199i)) {
                jSONObject.put("lat", this.f2198h);
                jSONObject.put("lng", this.f2199i);
                jSONObject.put("ltime", this.f2200j);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }
}
