package cn.jiguang.ao;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import cn.jiguang.o.e;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* loaded from: classes.dex */
    public static class a extends e {

        /* renamed from: a  reason: collision with root package name */
        private Context f1983a;

        /* renamed from: c  reason: collision with root package name */
        private JSONObject f1984c;

        a(Context context, JSONObject jSONObject) {
            this.f1983a = context;
            this.f1984c = jSONObject;
            this.f2707b = "JWakeCmd#WakeAction";
        }

        @Override // cn.jiguang.o.e
        public void a() {
            try {
                long f10 = cn.jiguang.o.b.f(this.f1983a, "JWakeCmdcmd");
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = this.f1984c;
                if (jSONObject == null && currentTimeMillis - f10 < 3600000) {
                    cn.jiguang.al.a.d("JWakeCmd", "is not cmd wake time");
                }
                b.c(this.f1983a, jSONObject);
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JWakeCmd", "WakeAction failed:" + th2.getMessage());
            }
        }
    }

    public static void a(Context context, JSONObject jSONObject) {
        try {
            cn.jiguang.al.a.a("JWakeCmd", jSONObject == null ? "executeWakeAction: [JWakeCmd] from heartBeat" : "executeWakeAction: [JWakeCmd] from cmd");
            boolean booleanValue = ((Boolean) cn.jiguang.ao.a.b(context)).booleanValue();
            cn.jiguang.al.a.a("JWakeCmd", "JWakeCmd isActionUserEnable:" + booleanValue);
            if (booleanValue) {
                cn.jiguang.o.d.a(new a(context, jSONObject));
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.e("JWakeCmd", "[executeWakeAction] failed:" + th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, JSONObject jSONObject) {
        List<cn.jiguang.ap.c> a10;
        ApplicationInfo applicationInfo;
        try {
            cn.jiguang.o.b.e(context, "JWakeCmdcmd");
            String c10 = cn.jiguang.s.c.c(context, "bwct.catch.v2");
            cn.jiguang.al.a.a("JWakeCmd", "read cmd wakeTarget:" + c10);
            if (jSONObject != null) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("content");
                int optInt = jSONObject2.optInt("type", 1);
                String optString = jSONObject2.optString("pkgName", "");
                String optString2 = jSONObject2.optString("serviceName", "");
                a10 = null;
                if (optInt == 1 && (applicationInfo = context.getPackageManager().getApplicationInfo(optString, 128)) != null) {
                    a10 = new ArrayList<>();
                    cn.jiguang.ap.c cVar = new cn.jiguang.ap.c();
                    cVar.f2013a = optString;
                    cVar.f2014b = optString2;
                    cVar.f2015c = applicationInfo.targetSdkVersion;
                    cVar.f2021i = 1;
                    cVar.f2019g = 4;
                    a10.add(cVar);
                }
                String a11 = cn.jiguang.aq.c.a(cn.jiguang.aq.d.a(c10, optString, optString2, optInt));
                cn.jiguang.al.a.a("JWakeCmd", "write cmd wakeTarget:" + a11);
                cn.jiguang.s.c.a(context, "bwct.catch.v2", a11);
            } else if (c10 == null || TextUtils.isEmpty(c10)) {
                cn.jiguang.al.a.d("JWakeCmd", "there are no cache cmd wakeTarget");
                return;
            } else {
                a10 = cn.jiguang.aq.c.a(context, cn.jiguang.aq.c.a(c10));
            }
            if (a10 != null) {
                cn.jiguang.ao.a.a(context, a10);
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakeCmd", "parse throwable:" + th2.getMessage());
        }
    }
}
