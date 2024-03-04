package cn.jiguang.l;

import android.content.Context;
import android.text.TextUtils;
import cn.jiguang.o.d;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b extends cn.jiguang.o.a {

    /* renamed from: c  reason: collision with root package name */
    private static volatile b f2642c;

    /* renamed from: a  reason: collision with root package name */
    private Context f2643a;

    /* renamed from: b  reason: collision with root package name */
    private JSONObject f2644b;

    /* renamed from: d  reason: collision with root package name */
    private String f2645d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2646e;

    public static b a() {
        if (f2642c == null) {
            synchronized (b.class) {
                if (f2642c == null) {
                    f2642c = new b();
                }
            }
        }
        return f2642c;
    }

    private void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, List<cn.jiguang.m.a> list) {
        try {
            if (this.f2644b == null) {
                this.f2644b = new JSONObject();
            }
            if (cn.jiguang.i.a.a().d(1608)) {
                this.f2644b.put(TPDownloadProxyEnum.USER_SSID, str);
            }
            if (cn.jiguang.i.a.a().d(1601)) {
                this.f2644b.put(TPDownloadProxyEnum.USER_BSSID, str2);
            }
            if (cn.jiguang.i.a.a().d(1605)) {
                this.f2644b.put("local_ip", str3);
            }
            if (cn.jiguang.i.a.a().d(1606)) {
                this.f2644b.put("local_mac", str4);
            }
            if (cn.jiguang.i.a.a().d(1607)) {
                this.f2644b.put("netmask", str5);
            }
            if (cn.jiguang.i.a.a().d(1604)) {
                this.f2644b.put("gateway", str8);
            }
            if (cn.jiguang.i.a.a().d(1602)) {
                this.f2644b.put("dhcp", str9);
            }
            if (cn.jiguang.i.a.a().d(1603)) {
                JSONArray jSONArray = new JSONArray();
                if (!TextUtils.isEmpty(str6)) {
                    jSONArray.put(str6);
                }
                if (!TextUtils.isEmpty(str7)) {
                    jSONArray.put(str7);
                }
                this.f2644b.put("dns", jSONArray);
            }
            JSONArray jSONArray2 = new JSONArray();
            for (cn.jiguang.m.a aVar : list) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ip", aVar.f2647a);
                jSONObject.put(TPDownloadProxyEnum.USER_MAC, aVar.f2650d);
                jSONArray2.put(jSONObject);
            }
            this.f2644b.put("data", jSONArray2);
        } catch (JSONException e10) {
            cn.jiguang.al.a.d("JArp", "packageJson exception: " + e10.getMessage());
        }
    }

    @Override // cn.jiguang.o.a
    protected String a(Context context) {
        this.f2643a = context;
        return "JArp";
    }

    @Override // cn.jiguang.o.a
    protected void a(String str, JSONObject jSONObject) {
        if (cn.jiguang.i.a.a().a(1600)) {
            this.f2646e = true;
            JSONObject optJSONObject = jSONObject.optJSONObject("content");
            boolean z10 = !optJSONObject.optBoolean("disable");
            cn.jiguang.o.b.a(this.f2643a, "JArp", z10);
            if (z10) {
                long optLong = optJSONObject.optLong("frequency", 0L) * 1000;
                if (optLong == 0) {
                    cn.jiguang.o.b.b(this.f2643a, true);
                    return;
                }
                cn.jiguang.o.b.b(this.f2643a, false);
                cn.jiguang.o.b.b(this.f2643a, "JArp", optLong);
            }
        }
    }

    @Override // cn.jiguang.o.a
    protected boolean a(Context context, String str) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0105, code lost:
        if (android.text.TextUtils.equals(r6, "0.0.0.0") != false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0130, code lost:
        if (android.text.TextUtils.equals(r9, "0.0.0.0") != false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0172, code lost:
        if (android.text.TextUtils.equals(r14, "0.0.0.0") != false) goto L85;
     */
    @Override // cn.jiguang.o.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(android.content.Context r18, java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.l.b.b(android.content.Context, java.lang.String):void");
    }

    @Override // cn.jiguang.o.a
    protected boolean b() {
        return cn.jiguang.o.b.k(this.f2643a, "JArp");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public boolean c(Context context, String str) {
        if (cn.jiguang.i.a.a().a(1600)) {
            long currentTimeMillis = System.currentTimeMillis();
            if (TextUtils.isEmpty(this.f2645d)) {
                this.f2645d = "";
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("JArp");
            sb2.append(this.f2645d);
            return currentTimeMillis - cn.jiguang.o.b.i(context, sb2.toString()) > cn.jiguang.o.b.j(context, "JArp");
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void d(Context context, String str) {
        if (cn.jiguang.i.a.a().a(1600)) {
            JSONObject jSONObject = this.f2644b;
            if (jSONObject == null) {
                cn.jiguang.al.a.a("JArp", "there are no data to report");
                return;
            }
            d.a(context, jSONObject, "mac_list");
            d.a(context, this.f2644b, new a(this.f2645d, context, "JArp", str));
            this.f2644b = null;
        }
    }
}
