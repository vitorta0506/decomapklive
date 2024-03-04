package cn.jiguang.an;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jiguang.o.b;
import cn.jiguang.o.d;
import com.facebook.internal.ServerProtocol;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a extends cn.jiguang.o.a {

    /* renamed from: a  reason: collision with root package name */
    private Context f1960a;

    /* renamed from: b  reason: collision with root package name */
    private Bundle f1961b;

    /* renamed from: c  reason: collision with root package name */
    private String f1962c = "";

    /* renamed from: d  reason: collision with root package name */
    private int f1963d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f1964e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f1965f = 0;

    private JSONObject a(String str, int i9, int i10) {
        int i11;
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            jSONArray.put(i9);
            jSONArray.put(i10);
            if (!"core".equals(str)) {
                if ("push".equals(str)) {
                    jSONArray.put(d.h());
                    i11 = this.f1965f;
                }
                jSONObject2.put(str, jSONArray);
                jSONObject.put("type", HianalyticsBaseData.SDK_TYPE);
                jSONObject.put("itime", d.h(this.f1960a));
                jSONObject.put(ServerProtocol.DIALOG_PARAM_SDK_VERSION, jSONObject2);
                return jSONObject;
            }
            jSONArray.put(d.d());
            i11 = this.f1965f;
            jSONArray.put(i11);
            jSONObject2.put(str, jSONArray);
            jSONObject.put("type", HianalyticsBaseData.SDK_TYPE);
            jSONObject.put("itime", d.h(this.f1960a));
            jSONObject.put(ServerProtocol.DIALOG_PARAM_SDK_VERSION, jSONObject2);
            return jSONObject;
        } catch (JSONException e10) {
            cn.jiguang.al.a.d("JType", "package json exception: " + e10.getMessage());
            return null;
        }
    }

    private static boolean a(Context context, String str, int i9, int i10, int i11) {
        if (TextUtils.isEmpty(str) || i9 < 0 || i10 < 0) {
            return false;
        }
        int q10 = b.q(context, str);
        cn.jiguang.al.a.a("JType", "[isTypeReportEnable],lastversion:" + q10 + ",curversion:" + i11 + ",type:" + str);
        if (q10 != i11) {
            return true;
        }
        String p10 = b.p(context, str);
        return !p10.equals(i9 + "," + i10);
    }

    @Override // cn.jiguang.o.a
    protected String a(Context context) {
        this.f1960a = context;
        return "JType";
    }

    @Override // cn.jiguang.o.a
    protected void a(String str, Bundle bundle) {
        this.f1961b = bundle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void b(Context context, String str) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void d(Context context, String str) {
        JSONObject a10 = a(this.f1962c, this.f1963d, this.f1964e);
        if (a10 == null) {
            cn.jiguang.al.a.d("JType", "there are no data to report");
        } else {
            d.a(context, (Object) a10);
        }
    }

    @Override // cn.jiguang.o.a
    protected boolean d() {
        Bundle bundle = this.f1961b;
        if (bundle == null) {
            return false;
        }
        this.f1962c = bundle.getString("name");
        this.f1963d = this.f1961b.getInt("custom", 0);
        this.f1964e = this.f1961b.getInt("dynamic", 0);
        this.f1965f = this.f1961b.getInt("sdk_v", 0);
        cn.jiguang.al.a.a("JType", "parseBundle type:" + this.f1962c + ",custom:" + this.f1963d + ",dynamic:" + this.f1964e + ",sdkVersion:" + this.f1965f);
        boolean a10 = a(this.f1960a, this.f1962c, this.f1963d, this.f1964e, this.f1965f);
        if (a10) {
            b.a(this.f1960a, this.f1962c, this.f1965f);
            b.a(this.f1960a, this.f1962c, this.f1963d + "," + this.f1964e);
        } else {
            cn.jiguang.al.a.a("JType", "type [" + this.f1962c + "] data not change");
        }
        return a10;
    }
}
