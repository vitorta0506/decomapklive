package cn.jiguang.ai;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a extends cn.jiguang.o.a {

    /* renamed from: b  reason: collision with root package name */
    private static volatile a f1856b;

    /* renamed from: a  reason: collision with root package name */
    private Context f1857a;

    /* renamed from: cn.jiguang.ai.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class CallableC0035a implements Callable<cn.jiguang.aj.a> {
        CallableC0035a() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public cn.jiguang.aj.a call() {
            try {
                cn.jiguang.ai.b bVar = new cn.jiguang.ai.b(a.this.f1857a);
                bVar.b();
                for (int i9 = 0; i9 < 20; i9++) {
                    cn.jiguang.aj.a a10 = bVar.a();
                    if (a10 != null) {
                        return a10;
                    }
                    Thread.sleep(2000L);
                }
                return null;
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JLocation", "JLocationCellInfo call failed:" + th2.getMessage());
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Callable<cn.jiguang.aj.b> {
        b() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public cn.jiguang.aj.b call() {
            try {
                c a10 = c.a(a.this.f1857a);
                a10.c();
                for (int i9 = 0; i9 < 30; i9++) {
                    if (a10.b()) {
                        return a10.a();
                    }
                    Thread.sleep(1000L);
                }
                return null;
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JLocation", "JLocationGpsInfo call failed:" + th2.getMessage());
                return null;
            }
        }
    }

    private Bundle a(long j10, double d10, double d11) {
        Bundle bundle = new Bundle();
        bundle.putLong(CrashHianalyticsData.TIME, j10);
        bundle.putDouble("lot", d10);
        bundle.putDouble("lat", d11);
        return bundle;
    }

    public static a a() {
        if (f1856b == null) {
            synchronized (a.class) {
                if (f1856b == null) {
                    f1856b = new a();
                }
            }
        }
        return f1856b;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x017f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.json.JSONObject a(java.util.List<cn.jiguang.aj.c> r19, cn.jiguang.aj.a r20, cn.jiguang.aj.b r21) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ai.a.a(java.util.List, cn.jiguang.aj.a, cn.jiguang.aj.b):org.json.JSONObject");
    }

    private JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray jSONArray;
        cn.jiguang.al.a.a("JLocation", "currentJson:" + jSONObject + ",cacheJson:" + jSONObject2);
        if (jSONObject == null) {
            return jSONObject2;
        }
        if (jSONObject2 != null) {
            try {
                jSONArray = jSONObject2.getJSONArray("content");
            } catch (JSONException unused) {
                jSONArray = new JSONArray();
            }
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i9);
                if (cn.jiguang.i.a.a().d(1505)) {
                    JSONArray optJSONArray = optJSONObject.optJSONArray("wifi");
                    JSONArray optJSONArray2 = jSONObject.optJSONArray("wifi");
                    if (optJSONArray != null && optJSONArray.equals(optJSONArray2)) {
                        jSONObject.remove("wifi");
                    }
                }
                if (cn.jiguang.i.a.a().d(1501)) {
                    JSONArray optJSONArray3 = optJSONObject.optJSONArray("cell");
                    JSONArray optJSONArray4 = jSONObject.optJSONArray("cell");
                    if (optJSONArray3 != null && optJSONArray3.equals(optJSONArray4)) {
                        jSONObject.remove("cell");
                    }
                }
                if (cn.jiguang.i.a.a().d(1502)) {
                    JSONArray optJSONArray5 = optJSONObject.optJSONArray("gps");
                    JSONArray optJSONArray6 = jSONObject.optJSONArray("gps");
                    if (optJSONArray5 != null && optJSONArray5.equals(optJSONArray6)) {
                        jSONObject.remove("gps");
                    }
                }
            }
            if (jSONObject.length() != 0) {
                try {
                    if (cn.jiguang.i.a.a().d(1504)) {
                        jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, cn.jiguang.o.d.k(this.f1857a));
                    }
                    if (cn.jiguang.i.a.a().d(1503)) {
                        jSONObject.put("local_dns", cn.jiguang.o.d.f());
                    }
                    cn.jiguang.o.d.a(this.f1857a, jSONObject, "loc_info");
                    jSONArray.put(jSONObject);
                } catch (JSONException e10) {
                    cn.jiguang.al.a.d("JLocation", "package json exception:" + e10.getMessage());
                }
            }
            return jSONObject2;
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            try {
                JSONArray jSONArray2 = new JSONArray();
                jSONArray2.put(jSONObject);
                jSONObject3.put("content", jSONArray2);
                return jSONObject3;
            } catch (JSONException e11) {
                e = e11;
                jSONObject2 = jSONObject3;
                cn.jiguang.al.a.d("JLocation", "mergeJson exception:" + e.getMessage());
                return jSONObject2;
            }
        } catch (JSONException e12) {
            e = e12;
        }
    }

    private List<cn.jiguang.aj.c> c(Context context, int i9) {
        String str;
        List<cn.jiguang.aj.c> list = null;
        try {
            if (cn.jiguang.i.a.a().d(1505)) {
                if (!cn.jiguang.o.d.b(context, "android.permission.ACCESS_WIFI_STATE")) {
                    str = "collect wifi failed because has no android.permission.ACCESS_WIFI_STATE";
                } else if (cn.jiguang.o.d.j(context)) {
                    list = new d(context).a(i9);
                    cn.jiguang.al.a.a("JLocation", "collect wifi success:" + list);
                } else {
                    str = "collect wifi failed because not enable to collect wifi list";
                }
                cn.jiguang.al.a.d("JLocation", str);
            }
        } catch (Exception e10) {
            cn.jiguang.al.a.a("JLocation", "collect wifi failed :" + e10.getMessage());
        }
        return list;
    }

    private cn.jiguang.aj.b h(Context context) {
        StringBuilder sb2;
        String message;
        String str;
        String str2;
        cn.jiguang.aj.b bVar = null;
        if (c() && cn.jiguang.i.a.a().d(1502)) {
            try {
                cn.jiguang.al.a.a("JLocation", "coares:" + cn.jiguang.o.d.a(context, "android.permission.ACCESS_COARSE_LOCATION"));
                cn.jiguang.al.a.a("JLocation", "fine:" + cn.jiguang.o.d.a(context, "android.permission.ACCESS_FINE_LOCATION"));
                if (!cn.jiguang.o.d.a(context, "android.permission.ACCESS_COARSE_LOCATION") && !cn.jiguang.o.d.a(context, "android.permission.ACCESS_FINE_LOCATION")) {
                    cn.jiguang.al.a.d("JLocation", "collect gps failed because has no Manifest.permission.LOCATION");
                }
                if (cn.jiguang.o.d.m(context) && c.a(context).e()) {
                    cn.jiguang.aj.b d10 = c.a(context).d();
                    try {
                        if (d10 == null) {
                            FutureTask futureTask = new FutureTask(new b());
                            cn.jiguang.o.d.b(futureTask);
                            cn.jiguang.aj.b bVar2 = (cn.jiguang.aj.b) futureTask.get(31000L, TimeUnit.MILLISECONDS);
                            if (bVar2 != null) {
                                try {
                                    str2 = "collect gps success:" + bVar2.toString();
                                } catch (InterruptedException e10) {
                                    e = e10;
                                    bVar = bVar2;
                                    sb2 = new StringBuilder();
                                    sb2.append("collect gps exception:");
                                    message = e.getMessage();
                                    sb2.append(message);
                                    str = sb2.toString();
                                    cn.jiguang.al.a.d("JLocation", str);
                                    return bVar;
                                } catch (ExecutionException e11) {
                                    e = e11;
                                    bVar = bVar2;
                                    sb2 = new StringBuilder();
                                    sb2.append("collect gps exception:");
                                    message = e.getMessage();
                                    sb2.append(message);
                                    str = sb2.toString();
                                    cn.jiguang.al.a.d("JLocation", str);
                                    return bVar;
                                } catch (TimeoutException unused) {
                                    bVar = bVar2;
                                    str = "collect gps time out";
                                    cn.jiguang.al.a.d("JLocation", str);
                                    return bVar;
                                } catch (Throwable th2) {
                                    th = th2;
                                    bVar = bVar2;
                                    sb2 = new StringBuilder();
                                    sb2.append("collect gps throwable:");
                                    message = th.getMessage();
                                    sb2.append(message);
                                    str = sb2.toString();
                                    cn.jiguang.al.a.d("JLocation", str);
                                    return bVar;
                                }
                            } else {
                                str2 = "collect gps failed";
                            }
                            cn.jiguang.al.a.a("JLocation", str2);
                            d10 = bVar2;
                        } else {
                            cn.jiguang.al.a.a("JLocation", "load  last gps success:" + d10.toString());
                        }
                        if (d10 != null) {
                            cn.jiguang.o.b.t(context, d10.f1886a + "," + d10.f1889d + "," + d10.f1888c);
                        }
                        bVar = d10;
                    } catch (InterruptedException e12) {
                        e = e12;
                        bVar = d10;
                    } catch (ExecutionException e13) {
                        e = e13;
                        bVar = d10;
                    } catch (TimeoutException unused2) {
                        bVar = d10;
                    } catch (Throwable th3) {
                        th = th3;
                        bVar = d10;
                    }
                }
            } catch (InterruptedException e14) {
                e = e14;
            } catch (ExecutionException e15) {
                e = e15;
            } catch (TimeoutException unused3) {
            } catch (Throwable th4) {
                th = th4;
            }
        }
        return bVar;
    }

    @Override // cn.jiguang.o.a
    protected String a(Context context) {
        this.f1857a = context;
        return "JLocation";
    }

    @Override // cn.jiguang.o.a
    protected void a(String str, JSONObject jSONObject) {
        if (cn.jiguang.i.a.a().a(1500)) {
            int optInt = jSONObject.optInt("cmd");
            JSONObject optJSONObject = jSONObject.optJSONObject("content");
            if (optInt != 5) {
                if (optInt == 45) {
                    cn.jiguang.o.b.a(this.f1857a, "JLocation", optJSONObject.optLong("interval", 0L) * 1000);
                    return;
                }
                return;
            }
            boolean z10 = !optJSONObject.optBoolean("disable", true);
            cn.jiguang.o.b.a(this.f1857a, "JLocation", z10);
            if (z10) {
                cn.jiguang.o.b.b(this.f1857a, "JLocation", optJSONObject.optLong("frequency", 0L) * 1000);
            }
        }
    }

    @Override // cn.jiguang.o.a
    protected boolean a(Context context, String str) {
        return cn.jiguang.o.b.a(context, str);
    }

    public ArrayList<String> b(Context context, int i9) {
        ArrayList<String> arrayList = null;
        if (c()) {
            List<cn.jiguang.aj.c> c10 = c(context, Integer.MAX_VALUE);
            if (c10 != null) {
                arrayList = new ArrayList<>();
                for (cn.jiguang.aj.c cVar : c10) {
                    String str = cVar.f1894b;
                    if (!TextUtils.isEmpty(str) && !arrayList.contains(str)) {
                        arrayList.add(str);
                        if (arrayList.size() == i9) {
                            break;
                        }
                    }
                }
            }
            cn.jiguang.al.a.a("JLocation", "getWifiNameArray:" + arrayList);
            return arrayList;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d5  */
    @Override // cn.jiguang.o.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(android.content.Context r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ai.a.b(android.content.Context, java.lang.String):void");
    }

    @Override // cn.jiguang.o.a
    protected boolean b() {
        return cn.jiguang.o.b.k(this.f1857a, "JLocation");
    }

    @Override // cn.jiguang.o.a
    protected boolean c() {
        return cn.jiguang.o.b.l(this.f1857a, "JLocation");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void d(Context context, String str) {
        if (cn.jiguang.i.a.a().a(1500)) {
            JSONObject a10 = cn.jiguang.s.c.a(context, "rl.catch");
            if (a10 == null) {
                cn.jiguang.al.a.a("JLocation", "there are no data to report");
                return;
            }
            JSONArray optJSONArray = a10.optJSONArray("content");
            if (optJSONArray == null) {
                cn.jiguang.al.a.a("JLocation", "there are no content data to report");
                return;
            }
            cn.jiguang.o.d.a(context, optJSONArray);
            cn.jiguang.al.a.a("JLocation", "clean cache json");
            cn.jiguang.s.c.b(context, "rl.catch");
            super.d(context, str);
        }
    }

    @Override // cn.jiguang.o.a
    protected boolean d(Context context) {
        return true;
    }

    public Bundle f(Context context) {
        long j10;
        double d10;
        double d11;
        cn.jiguang.aj.b h10 = h(context);
        if (h10 != null) {
            j10 = h10.f1886a;
            d10 = h10.f1889d;
            d11 = h10.f1888c;
        } else {
            j10 = 0;
            d10 = 200.0d;
            d11 = 200.0d;
        }
        return a(j10, d10, d11);
    }

    @Override // cn.jiguang.o.a
    /* renamed from: g */
    public Bundle e(Context context) {
        long longValue;
        double doubleValue;
        double doubleValue2;
        String e10 = cn.jiguang.o.b.e(context);
        if (TextUtils.isEmpty(e10)) {
            longValue = 0;
            doubleValue = 200.0d;
            doubleValue2 = 200.0d;
        } else {
            String[] split = e10.split(",");
            longValue = Long.valueOf(split[0]).longValue();
            doubleValue = Double.valueOf(split[1]).doubleValue();
            doubleValue2 = Double.valueOf(split[2]).doubleValue();
        }
        return a(longValue, doubleValue, doubleValue2);
    }
}
