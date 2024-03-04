package cn.jiguang.au;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jiguang.f.h;
import cn.jiguang.internal.JConstants;
import cn.jiguang.o.c;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static a f2111a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile FutureTask<?> f2112b;

    /* renamed from: c  reason: collision with root package name */
    private static final Object f2113c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static final LinkedHashSet<String> f2114d;

    /* renamed from: e  reason: collision with root package name */
    private static final String f2115e;

    /* renamed from: f  reason: collision with root package name */
    private static final LinkedHashSet<String> f2116f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends cn.jiguang.bg.b {

        /* renamed from: a  reason: collision with root package name */
        private final Context f2117a;

        private a(Context context) {
            this.f2117a = context;
            this.f2494h = "SisTask";
        }

        @Override // cn.jiguang.bg.b
        public void a() {
            try {
                String c10 = e.c(this.f2117a);
                LinkedHashSet d10 = e.d(this.f2117a);
                d10.addAll(e.a());
                cn.jiguang.as.d.c("ReportSis", "sis urls=" + d10.toString() + " post json=" + c10);
                if (!cn.jiguang.f.a.d(this.f2117a)) {
                    cn.jiguang.as.d.g("ReportSis", "give up sis, because network is not connected");
                    return;
                }
                Iterator it = d10.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (!TextUtils.isEmpty(str)) {
                        if (Build.VERSION.SDK_INT >= 28 && !str.startsWith(c.a.f2702d)) {
                            cn.jiguang.as.d.g("ReportSis", "won't use http at device since 28");
                        } else if (e.b(this.f2117a, str, c10)) {
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    static {
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet<>();
        f2114d = linkedHashSet;
        String b10 = cn.jiguang.s.a.b(new byte[]{126, 101, 68, 80, 106, 50, 57, 62, 68, 83, 112, 123, 56, 123, 64, 85, 106, 96, 56, 114, 94});
        f2115e = b10;
        linkedHashSet.add(b10);
        f2116f = new LinkedHashSet<>();
    }

    public static LinkedHashSet<String> a() {
        if (JConstants.isTestEnv()) {
            LinkedHashSet<String> linkedHashSet = f2116f;
            if (!linkedHashSet.isEmpty()) {
                return linkedHashSet;
            }
        }
        return f2114d;
    }

    public static void a(Context context, boolean z10) {
        String str;
        StringBuilder sb2;
        if (f2111a == null) {
            f2111a = new a(context);
        }
        if (f2112b == null || f2112b.isCancelled() || f2112b.isDone()) {
            synchronized (f2113c) {
                if (f2112b == null || f2112b.isCancelled() || f2112b.isDone()) {
                    f2112b = new FutureTask<>(f2111a, null);
                    cn.jiguang.bg.d.a("FUTURE_TASK", f2112b);
                }
            }
        }
        if (z10) {
            try {
                f2112b.get(10L, TimeUnit.SECONDS);
            } catch (InterruptedException e10) {
                e = e10;
                str = "ReportSis";
                sb2 = new StringBuilder();
                sb2.append("sis task e:");
                sb2.append(e);
                cn.jiguang.as.d.g(str, sb2.toString());
            } catch (ExecutionException e11) {
                e = e11;
                str = "ReportSis";
                sb2 = new StringBuilder();
                sb2.append("sis task e:");
                sb2.append(e);
                cn.jiguang.as.d.g(str, sb2.toString());
            } catch (TimeoutException e12) {
                e = e12;
                str = "ReportSis";
                sb2 = new StringBuilder();
                sb2.append("sis task e:");
                sb2.append(e);
                cn.jiguang.as.d.g(str, sb2.toString());
            } catch (Throwable th2) {
                e = th2;
                str = "ReportSis";
                sb2 = new StringBuilder();
                sb2.append("sis task e:");
                sb2.append(e);
                cn.jiguang.as.d.g(str, sb2.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Context context, String str, String str2) {
        g a10 = b.a(str, str2, context, true, 3, 2);
        cn.jiguang.as.d.c("ReportSis", "report sis code[" + a10.a() + "] from url=" + str + "\n body=" + a10.b());
        if (a10.a() == 0) {
            String b10 = a10.b();
            if (TextUtils.isEmpty(b10)) {
                return false;
            }
            try {
                cn.jiguang.au.a.a().a(context, new JSONObject(b10).getJSONObject("ret"));
                return true;
            } catch (Throwable th2) {
                cn.jiguang.as.d.g("ReportSis", "getUrls e:" + th2);
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(Context context) {
        long j10;
        Object a10;
        double d10;
        double d11;
        JSONObject jSONObject = new JSONObject();
        try {
            String e10 = cn.jiguang.d.a.e(context);
            long longValue = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.c())).longValue();
            int a11 = h.a(context);
            String b10 = h.b(context);
            jSONObject.put("type", a11);
            jSONObject.put("appkey", e10);
            jSONObject.put("sdkver", cn.jiguang.a.a.f1808b);
            jSONObject.put("platform", 0);
            j10 = 0;
            if (longValue != 0) {
                jSONObject.put("uid", longValue);
            }
            if (b10 != null) {
                jSONObject.put("opera", b10);
            }
            a10 = cn.jiguang.az.e.a(context, "get_loc_info", null);
            d10 = 200.0d;
        } catch (Throwable unused) {
        }
        if (a10 instanceof Bundle) {
            try {
                Bundle bundle = (Bundle) a10;
                double d12 = bundle.getDouble("lat");
                try {
                    d10 = bundle.getDouble("lot");
                    j10 = bundle.getLong(CrashHianalyticsData.TIME);
                } catch (Throwable unused2) {
                }
                double d13 = d10;
                d10 = d12;
                d11 = d13;
            } catch (Throwable unused3) {
            }
            if (d10 > -90.0d && d10 < 90.0d && d11 > -180.0d && d11 < 180.0d) {
                jSONObject.put("lat", d10);
                jSONObject.put("lng", d11);
                jSONObject.put(CrashHianalyticsData.TIME, j10);
            }
            return jSONObject.toString();
        }
        d11 = 200.0d;
        if (d10 > -90.0d) {
            jSONObject.put("lat", d10);
            jSONObject.put("lng", d11);
            jSONObject.put(CrashHianalyticsData.TIME, j10);
        }
        return jSONObject.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LinkedHashSet<String> d(Context context) {
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet<>();
        String str = (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.t());
        if (TextUtils.isEmpty(str)) {
            return linkedHashSet;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                linkedHashSet.add(jSONArray.optString(i9));
            }
        } catch (JSONException unused) {
        }
        return linkedHashSet;
    }
}
