package cn.jpush.android.b;

import android.content.Context;
import android.text.TextUtils;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import java.io.Serializable;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b implements Serializable {
    private static final long serialVersionUID = 2310616383854860780L;

    /* renamed from: a  reason: collision with root package name */
    public String f2952a;

    /* renamed from: b  reason: collision with root package name */
    public long f2953b;

    /* renamed from: c  reason: collision with root package name */
    public String f2954c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2955d;

    /* renamed from: e  reason: collision with root package name */
    public long f2956e;

    /* renamed from: f  reason: collision with root package name */
    public double f2957f = 200.0d;

    /* renamed from: g  reason: collision with root package name */
    public double f2958g = 200.0d;

    /* renamed from: h  reason: collision with root package name */
    public String f2959h;

    /* renamed from: i  reason: collision with root package name */
    public int f2960i;

    /* renamed from: j  reason: collision with root package name */
    public String f2961j;

    /* renamed from: k  reason: collision with root package name */
    public String f2962k;

    /* renamed from: l  reason: collision with root package name */
    public int f2963l;

    /* renamed from: m  reason: collision with root package name */
    public int f2964m;

    /* renamed from: n  reason: collision with root package name */
    public int f2965n;

    /* renamed from: o  reason: collision with root package name */
    public long f2966o;

    /* renamed from: p  reason: collision with root package name */
    public String f2967p;

    /* renamed from: q  reason: collision with root package name */
    public int f2968q;

    /* renamed from: r  reason: collision with root package name */
    public String f2969r;

    /* renamed from: s  reason: collision with root package name */
    public int f2970s;

    /* renamed from: t  reason: collision with root package name */
    public cn.jpush.android.d.d f2971t;

    public static b a(Context context, JSONObject jSONObject) {
        try {
            if (jSONObject == null) {
                Logger.w("Geofence", "geofence json is null");
                return null;
            }
            b bVar = new b();
            Logger.d("Geofence", "geofence message:" + jSONObject.toString());
            bVar.f2962k = jSONObject.optString("op");
            bVar.f2952a = jSONObject.optString("geofenceid");
            bVar.f2961j = jSONObject.optString("name");
            bVar.f2953b = jSONObject.optLong("radius");
            bVar.f2954c = jSONObject.optString("status");
            bVar.f2955d = jSONObject.optBoolean("repeat");
            bVar.f2963l = jSONObject.optInt("repeat_week_num");
            bVar.f2964m = jSONObject.optInt("repeat_day_num");
            bVar.f2965n = jSONObject.optInt("repeat_time");
            bVar.f2956e = jSONObject.optLong("expiration");
            bVar.f2960i = jSONObject.optInt("type", 1);
            bVar.f2957f = jSONObject.optDouble("lon", 200.0d);
            bVar.f2958g = jSONObject.optDouble("lat", 200.0d);
            bVar.f2966o = jSONObject.optLong("lastTime");
            bVar.f2967p = jSONObject.optString("lastTimeWeek");
            bVar.f2968q = jSONObject.optInt("weekNum");
            bVar.f2969r = jSONObject.optString("lastTimeDay");
            bVar.f2970s = jSONObject.optInt("dayNum");
            bVar.f2959h = jSONObject.optString("lastGeoStatus");
            String optString = jSONObject.optString("entity");
            if (!TextUtils.isEmpty(optString)) {
                bVar.f2971t = cn.jpush.android.d.d.b(optString, context.getPackageName(), JCoreHelper.getAppKey(context), 0L);
            }
            return bVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static b a(JSONObject jSONObject) {
        try {
            if (jSONObject == null) {
                Logger.w("Geofence", "geofence json is null");
                return null;
            }
            b bVar = new b();
            Logger.d("Geofence", "geofence message:" + jSONObject.toString());
            bVar.f2962k = jSONObject.optString("op");
            bVar.f2952a = jSONObject.optString("geofenceid");
            bVar.f2961j = jSONObject.optString("name");
            bVar.f2953b = jSONObject.optLong("radius");
            bVar.f2954c = jSONObject.optString("status");
            bVar.f2955d = jSONObject.optBoolean("repeat");
            bVar.f2963l = jSONObject.optInt("repeat_week_num");
            bVar.f2964m = jSONObject.optInt("repeat_day_num");
            bVar.f2965n = jSONObject.optInt("repeat_time");
            bVar.f2956e = jSONObject.optLong("expiration");
            bVar.f2960i = jSONObject.optInt("type", 1);
            JSONObject optJSONObject = jSONObject.optJSONObject("center");
            if (optJSONObject != null) {
                bVar.f2957f = optJSONObject.optDouble("lon", 200.0d);
                bVar.f2958g = optJSONObject.optDouble("lat", 200.0d);
            }
            return bVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    public JSONObject a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("op", this.f2962k);
            jSONObject.put("geofenceid", this.f2952a);
            jSONObject.put("name", this.f2961j);
            jSONObject.put("radius", this.f2953b);
            jSONObject.put("status", this.f2954c);
            jSONObject.put("repeat", this.f2955d);
            jSONObject.put("repeat_week_num", this.f2963l);
            jSONObject.put("repeat_day_num", this.f2964m);
            jSONObject.put("repeat_time", this.f2965n);
            jSONObject.put("expiration", this.f2956e);
            jSONObject.put("type", this.f2960i);
            jSONObject.put("lon", this.f2957f);
            jSONObject.put("lat", this.f2958g);
            jSONObject.put("lastTime", this.f2966o);
            jSONObject.put("lastTimeWeek", this.f2967p);
            jSONObject.put("weekNum", this.f2968q);
            jSONObject.put("lastTimeDay", this.f2969r);
            jSONObject.put("dayNum", this.f2970s);
            jSONObject.put("lastGeoStatus", this.f2959h);
            cn.jpush.android.d.d dVar = this.f2971t;
            if (dVar != null) {
                jSONObject.put("entity", dVar.f3022h);
            }
            return jSONObject;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    public void a(b bVar) {
        this.f2959h = bVar.f2959h;
        this.f2966o = bVar.f2966o;
        this.f2967p = bVar.f2967p;
        this.f2969r = bVar.f2969r;
        this.f2968q = bVar.f2968q;
        this.f2970s = bVar.f2970s;
    }

    public void b(JSONObject jSONObject) {
        try {
            if (jSONObject.has("name")) {
                this.f2961j = jSONObject.optString("name");
            }
            long optLong = jSONObject.optLong("radius", -1L);
            if (optLong > 0) {
                this.f2953b = optLong;
            }
            if (jSONObject.has("status")) {
                this.f2954c = jSONObject.optString("status");
            }
            if (jSONObject.has("repeat")) {
                boolean optBoolean = jSONObject.optBoolean("repeat");
                this.f2955d = optBoolean;
                if (optBoolean) {
                    if (jSONObject.has("repeat_week_num")) {
                        this.f2963l = jSONObject.optInt("repeat_week_num");
                    }
                    if (jSONObject.has("repeat_day_num")) {
                        this.f2964m = jSONObject.optInt("repeat_day_num");
                    }
                    if (jSONObject.has("repeat_time")) {
                        this.f2965n = jSONObject.optInt("repeat_time");
                    }
                }
            }
            if (jSONObject.has("expiration")) {
                this.f2956e = jSONObject.optLong("expiration");
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("center");
            if (optJSONObject != null) {
                double optDouble = optJSONObject.optDouble("lon", 200.0d);
                double optDouble2 = optJSONObject.optDouble("lat", 200.0d);
                if (optDouble >= -180.0d && optDouble <= 180.0d && optDouble2 >= -90.0d && optDouble2 <= 90.0d) {
                    this.f2957f = optDouble;
                    this.f2958g = optDouble2;
                    return;
                }
                Logger.w("Geofence", "update center failed because value invalid, [" + optDouble2 + "," + optDouble + "]");
            }
        } catch (Throwable unused) {
        }
    }
}
