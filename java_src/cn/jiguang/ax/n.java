package cn.jiguang.ax;

import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    public int f2202a;

    /* renamed from: b  reason: collision with root package name */
    public String f2203b;

    /* renamed from: c  reason: collision with root package name */
    public String f2204c;

    /* renamed from: d  reason: collision with root package name */
    public long f2205d;

    /* renamed from: e  reason: collision with root package name */
    public String f2206e;

    /* renamed from: f  reason: collision with root package name */
    public double f2207f;

    /* renamed from: g  reason: collision with root package name */
    public double f2208g;

    /* renamed from: h  reason: collision with root package name */
    public long f2209h;

    /* renamed from: i  reason: collision with root package name */
    private int f2210i = 0;

    /* renamed from: j  reason: collision with root package name */
    private int f2211j = 0;

    public n(int i9, String str, String str2, long j10, String str3, double d10, double d11, long j11) {
        this.f2202a = i9;
        this.f2203b = str;
        this.f2204c = str2;
        this.f2205d = j10;
        this.f2206e = str3;
        this.f2207f = d10;
        this.f2208g = d11;
        this.f2209h = j11;
    }

    private static boolean a(double d10, double d11) {
        return d10 > -90.0d && d10 < 90.0d && d11 > -180.0d && d11 < 180.0d;
    }

    public JSONObject a(Set<String> set) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", this.f2202a);
            jSONObject.put("appkey", this.f2203b);
            jSONObject.put("sdkver", this.f2204c);
            jSONObject.put("platform", 0);
            long j10 = this.f2205d;
            if (j10 != 0) {
                jSONObject.put("uid", j10);
            }
            String str = this.f2206e;
            if (str != null) {
                jSONObject.put("opera", str);
            }
            if (a(this.f2207f, this.f2208g)) {
                jSONObject.put("lat", this.f2207f);
                jSONObject.put("lng", this.f2208g);
                jSONObject.put(CrashHianalyticsData.TIME, this.f2209h);
            }
            if (set != null && !set.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                for (String str2 : set) {
                    jSONArray.put(str2);
                }
                jSONObject.put("fail_ips", jSONArray);
            }
            int i9 = this.f2210i;
            if (i9 != 0) {
                jSONObject.put("ips_flag", i9);
            }
            int i10 = this.f2211j;
            if (i10 != 0) {
                jSONObject.put("report_flag", i10);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }
}
