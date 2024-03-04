package cn.jiguang.q;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d extends cn.jiguang.o.a {

    /* renamed from: c  reason: collision with root package name */
    private static volatile d f2744c;

    /* renamed from: a  reason: collision with root package name */
    private Context f2745a;

    /* renamed from: b  reason: collision with root package name */
    private JSONObject f2746b;

    public static d a() {
        if (f2744c == null) {
            synchronized (d.class) {
                if (f2744c == null) {
                    f2744c = new d();
                }
            }
        }
        return f2744c;
    }

    private boolean a(JSONObject jSONObject) {
        String h10 = cn.jiguang.o.b.h(this.f2745a);
        if (TextUtils.isEmpty(h10)) {
            cn.jiguang.al.a.a("JDeviceIds", "ids cache is empty");
        } else {
            try {
                return !h10.equals(cn.jiguang.o.d.c(jSONObject.toString()));
            } catch (Exception e10) {
                cn.jiguang.al.a.d("JDeviceIds", "[checkIdsChanged] toMD5 error: " + e10.getMessage());
            }
        }
        return true;
    }

    private void e() {
        try {
            Object obj = this.f2746b.get("data");
            if (obj != null) {
                String c10 = cn.jiguang.o.d.c(cn.jiguang.o.d.g(obj.toString()));
                cn.jiguang.o.b.w(this.f2745a, c10);
                cn.jiguang.al.a.a("JDeviceIds", "device ids refresh cache success, md5-ids: " + c10);
            }
        } catch (Exception e10) {
            cn.jiguang.al.a.d("JDeviceIds", "ids encrypted failed, err: " + e10.getMessage());
        }
    }

    @Override // cn.jiguang.o.a
    protected String a(Context context) {
        this.f2745a = context;
        return "JDeviceIds";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void b(Context context, String str) {
        String str2;
        if (cn.jiguang.i.a.a().e(1900)) {
            return;
        }
        try {
            JSONObject a10 = cn.jiguang.u.a.a(context);
            if (a10 == null) {
                cn.jiguang.al.a.d("JDeviceIds", "ids collect failed");
            } else if (!a(a10)) {
                cn.jiguang.al.a.a("JDeviceIds", "ids not changed, need not report");
            } else {
                try {
                    str2 = cn.jiguang.o.d.f(a10.toString());
                } catch (Exception e10) {
                    cn.jiguang.al.a.d("JDeviceIds", "ids encrypted failed, err: " + e10.getMessage());
                    str2 = "";
                }
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                if (this.f2746b == null) {
                    this.f2746b = new JSONObject();
                }
                this.f2746b.put("data", str2);
                cn.jiguang.al.a.a("JDeviceIds", "collect success:" + this.f2746b + ", origin ids: " + a10.toString());
                super.b(context, str);
            }
        } catch (JSONException e11) {
            cn.jiguang.al.a.d("JDeviceIds", "packageJson exception: " + e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void d(Context context, String str) {
        if (cn.jiguang.i.a.a().e(1900)) {
            return;
        }
        JSONObject jSONObject = this.f2746b;
        if (jSONObject == null) {
            cn.jiguang.al.a.d("JDeviceIds", "there are no data to report");
            return;
        }
        cn.jiguang.o.d.a(context, jSONObject, "sdk_joa");
        cn.jiguang.o.d.a(context, (Object) this.f2746b);
        super.d(context, str);
        e();
        cn.jiguang.al.a.a("JDeviceIds", str + "report success, reportData: " + this.f2746b);
        this.f2746b = null;
    }
}
