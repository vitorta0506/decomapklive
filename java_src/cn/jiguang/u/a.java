package cn.jiguang.u;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import cn.jiguang.o.c;
import cn.jiguang.o.d;
import cn.jiguang.w.b;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {
    private static String a(Context context, String str) {
        try {
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("IdHelper", "getIdsByLocal failed:" + th2.getMessage());
        }
        if (b()) {
            cn.jiguang.al.a.d("IdHelper", "not get id in main thread");
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        String g10 = d.g("KACzk43fXSu6fNDY3NHiRg==");
        if (!TextUtils.isEmpty(g10) && str.toLowerCase().equals(g10)) {
            String f10 = f(context);
            if (TextUtils.isEmpty(f10)) {
                return "";
            }
            jSONObject.put("joad", f10);
            return jSONObject.toString();
        }
        String g11 = d.g("abElWL6JFOA3DmtpsVXe5g==");
        if (TextUtils.isEmpty(g11) || !str.toLowerCase().equals(g11)) {
            String g12 = d.g("ZCUqO8ru60AnJTvdxNftwg==");
            if (TextUtils.isEmpty(g12) || !str.toLowerCase().equals(g12)) {
                String g13 = d.g("Sqo/G40afBQEk/ThxiHCDA==");
                if (!TextUtils.isEmpty(g13) && str.toLowerCase().equals(g13)) {
                    String k10 = k(context);
                    if (TextUtils.isEmpty(k10)) {
                        return "";
                    }
                    jSONObject.put("joad", k10);
                    return jSONObject.toString();
                }
                String g14 = d.g("Fl44OKc45ZSCqG4pxdgAdA==");
                if (!TextUtils.isEmpty(g14) && str.toLowerCase().equals(g14)) {
                    String i9 = i(context);
                    if (TextUtils.isEmpty(i9)) {
                        return "";
                    }
                    jSONObject.put("joad", i9);
                    return jSONObject.toString();
                }
                String g15 = d.g("v4ibuvMAw0xxYGyCW947bw==");
                String g16 = d.g("lJTl9z+ZycJlu+D6qavE9g==");
                if ((TextUtils.isEmpty(g15) || !str.toLowerCase().equals(g15)) && (TextUtils.isEmpty(g16) || !str.toLowerCase().equals(g16))) {
                    String g17 = d.g("7UUoz3VX0wN8BuYNQ77o2g==");
                    if (TextUtils.isEmpty(g17) || !str.toLowerCase().equals(g17)) {
                        String g18 = d.g("NftKgs8fjwuVYJ3VslncvA==");
                        String g19 = d.g("Wq1559o9+HHChTmry59Bkg==");
                        if ((!TextUtils.isEmpty(g18) && str.toLowerCase().equals(g18)) || (!TextUtils.isEmpty(g19) && str.toLowerCase().equals(g19))) {
                            String g20 = g(context);
                            if (TextUtils.isEmpty(g20)) {
                                return "";
                            }
                            jSONObject.put("joad", g20);
                            return jSONObject.toString();
                        }
                        String g21 = d.g("fmTCWm9ViPlyzM8H0bOrgw==");
                        if (!TextUtils.isEmpty(g21) && str.toLowerCase().equals(g21)) {
                            String m10 = m(context);
                            if (TextUtils.isEmpty(m10)) {
                                return "";
                            }
                            jSONObject.put("joad", m10);
                            return jSONObject.toString();
                        }
                        String g22 = d.g("bbyVCf9F4jMXWPUAeT3frw==");
                        if (!TextUtils.isEmpty(g22) && str.toLowerCase().equals(g22)) {
                            String o10 = o(context);
                            if (TextUtils.isEmpty(o10)) {
                                return "";
                            }
                            jSONObject.put("joad", o10);
                            return jSONObject.toString();
                        }
                        String g23 = d.g("0kbg5dLQpyr1z+M/7Qkp7A==");
                        if ((!TextUtils.isEmpty(g23) && str.toLowerCase().equals(g23)) || cn.jiguang.ag.a.a()) {
                            String p10 = p(context);
                            if (TextUtils.isEmpty(p10)) {
                                return "";
                            }
                            jSONObject.put("joad", p10);
                            return jSONObject.toString();
                        }
                        String g24 = d.g("7kOXkVyi2CnACIIN3msOQg==");
                        if ((TextUtils.isEmpty(g24) || !str.toLowerCase().equals(g24)) && !cn.jiguang.ag.a.b()) {
                            cn.jiguang.al.a.d("IdHelper", "not supported this device: " + str);
                            return "";
                        }
                        String q10 = q(context);
                        if (TextUtils.isEmpty(q10)) {
                            return "";
                        }
                        jSONObject.put("joad", q10);
                        return jSONObject.toString();
                    }
                    return h(context);
                }
                return j(context);
            }
            return l(context);
        }
        return n(context);
    }

    public static JSONObject a(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            String d10 = d(context);
            cn.jiguang.al.a.a("IdHelper", "[getAllIds] miit id is: " + d10);
            if (TextUtils.isEmpty(d10)) {
                String str = c.a.f2700b;
                if (!TextUtils.isEmpty(str)) {
                    cn.jiguang.al.a.a("IdHelper", "start getAllIds by local");
                    String a10 = a(context, str);
                    if (!TextUtils.isEmpty(a10)) {
                        jSONObject = new JSONObject(a10);
                    }
                }
            } else {
                jSONObject = new JSONObject(d10);
            }
            String b10 = b(context);
            if (!TextUtils.isEmpty(b10)) {
                jSONObject.put("jgad", b10);
            }
            cn.jiguang.al.a.a("IdHelper", "gaid: " + b10);
            if (jSONObject.toString().equals("{}")) {
                return null;
            }
            return jSONObject;
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("IdHelper", "[getAllIds] failed：" + th2.getMessage());
            return null;
        }
    }

    private static boolean a() {
        try {
            Class<?> cls = Class.forName(d.g("PcAdtsBZRJNo5a0tkYAln7JmiO95myc4NXXWf+j90/KXOpD1MlJOBugPF6SmMTLe"));
            cn.jiguang.al.a.a("IdHelper", "MdidSdkHelper name:" + cls.getName());
            return true;
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("IdHelper", "not found mitt class" + th2);
            return false;
        }
    }

    public static String b(Context context) {
        try {
            return e(context);
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("IdHelper", "getGoogleAdid failed:" + th2.getMessage());
            return "";
        }
    }

    private static boolean b() {
        try {
            return Looper.getMainLooper().getThread().getId() == Thread.currentThread().getId();
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("IdHelper", "[isMainThread] failed:" + th2.getMessage());
            return true;
        }
    }

    private static String c(Context context) {
        try {
            Class.forName(d.g("PcAdtsBZRJNo5a0tkYAln5KxAHXeXV/NVUuFAGa7lw0lgssd4d8qhC10P370VkfX"));
            FutureTask futureTask = new FutureTask(new cn.jiguang.z.a(context));
            d.b(futureTask);
            return (String) futureTask.get(2L, TimeUnit.SECONDS);
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("IdHelper", "getMittIds by version 10 failed:" + th2);
            try {
                Class.forName(d.g("KbEOJC6hqkBcbuUrDsdaXOUofElYAGZhekK9mozUIHGMGWMoSFaqAoiWtoXrQsHy"));
                FutureTask futureTask2 = new FutureTask(new cn.jiguang.aa.a(context));
                d.b(futureTask2);
                return (String) futureTask2.get(2L, TimeUnit.SECONDS);
            } catch (Throwable th3) {
                cn.jiguang.al.a.d("IdHelper", "getMittIds by version 13 failed:" + th3);
                return "";
            }
        }
    }

    private static String d(Context context) {
        if (b()) {
            cn.jiguang.al.a.d("IdHelper", "not get id in main thread");
            return "";
        }
        if (a()) {
            String c10 = c(context);
            if (!TextUtils.isEmpty(c10)) {
                return c10;
            }
            cn.jiguang.al.a.d("IdHelper", "not get ids by mitts");
        }
        return "";
    }

    private static String e(Context context) {
        String str;
        String g10;
        if (b()) {
            str = "not get id in main thread";
        } else {
            try {
                String g11 = d.g("83JmFPusB5CQP/HtGWAx9pgfJZgEDCaE2wJbKIZa8GM=");
                if (TextUtils.isEmpty(g11)) {
                    return "";
                }
                context.getPackageManager().getPackageInfo(g11, 0);
                try {
                    g10 = d.g("+Fc+/S0DV5xukan0E/9N4RvXQpEI8h8+6y3k9NAvwjLhqIYeN+juscczCl6Sq6PxwLAq9CdDlLtmxsbD83akRg==");
                } catch (Throwable th2) {
                    cn.jiguang.al.a.d("IdHelper", "google getAdvertisingIdInfo Exception: " + th2.toString());
                }
                if (TextUtils.isEmpty(g10)) {
                    return "";
                }
                Intent intent = new Intent(g10);
                String g12 = d.g("+Fc+/S0DV5xukan0E/9N4VArQdi8pEVBp8UquAC8VbE=");
                if (TextUtils.isEmpty(g12)) {
                    return "";
                }
                intent.setPackage(g12);
                b bVar = new b();
                if (!context.bindService(intent, bVar, 1)) {
                    cn.jiguang.al.a.d("IdHelper", "google service bind failed");
                    return "";
                } else if (bVar.f2780a) {
                    cn.jiguang.al.a.d("IdHelper", "google service repeat bind");
                    context.unbindService(bVar);
                    return "";
                } else {
                    String a10 = new cn.jiguang.w.a(bVar.f2781b.take()).a();
                    cn.jiguang.al.a.a("IdHelper", "google ad id:" + a10);
                    context.unbindService(bVar);
                    return a10;
                }
            } catch (Throwable unused) {
                str = "not supported google";
            }
        }
        cn.jiguang.al.a.d("IdHelper", str);
        return "";
    }

    private static String f(Context context) {
        String g10;
        if (context == null) {
            return "";
        }
        try {
            String g11 = d.g("CV+BUnOM9r9hBWkUu5oSnA==");
            if (TextUtils.isEmpty(g11)) {
                return "";
            }
            context.getPackageManager().getPackageInfo(g11, 0);
            try {
                g10 = d.g("axDZqud6H+CDQBXA/yBXOiEPy9gW6px8eLENPXdBlBHSZeanEgWxhi72s58AM6wZ");
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("IdHelper", "hw getAdvertisingIdInfo Exception: " + th2.toString());
            }
            if (TextUtils.isEmpty(g10)) {
                return "";
            }
            Intent intent = new Intent(g10);
            intent.setPackage(g11);
            cn.jiguang.x.b bVar = new cn.jiguang.x.b();
            boolean bindService = context.bindService(intent, bVar, 1);
            if (!bindService) {
                cn.jiguang.al.a.d("IdHelper", "hw service bind failed");
                return "";
            }
            String a10 = new cn.jiguang.x.a(bVar.f2784a.take()).a();
            cn.jiguang.al.a.a("IdHelper", "hw ids-o:" + a10);
            if (bindService) {
                context.unbindService(bVar);
            }
            return a10;
        } catch (Throwable unused) {
            cn.jiguang.al.a.d("IdHelper", "not supported hw");
            return "";
        }
    }

    private static String g(Context context) {
        String g10;
        try {
            String g11 = d.g("Mpy0fkBSw1N+kug2cBPj2YJ2JkldBoT0Hj8EbMwXMGU=");
            if (TextUtils.isEmpty(g11)) {
                return "";
            }
            context.getPackageManager().getPackageInfo(g11, 0);
            try {
                g10 = d.g("Mpy0fkBSw1N+kug2cBPj2dTFEwqSue3aUHyxqBhF0BWQuC1TiTYwRmpXbBFYowSK");
            } catch (Exception e10) {
                cn.jiguang.al.a.d("IdHelper", "zui getAdvertisingIdInfo Exception: " + e10.toString());
            }
            if (TextUtils.isEmpty(g10)) {
                return "";
            }
            Intent intent = new Intent(g10);
            intent.setPackage(g11);
            cn.jiguang.ah.b bVar = new cn.jiguang.ah.b();
            boolean bindService = context.bindService(intent, bVar, 1);
            if (!bindService) {
                cn.jiguang.al.a.d("IdHelper", "zui service bind failed");
                return "";
            }
            String a10 = new cn.jiguang.ah.a(bVar.f1855a.take()).a();
            cn.jiguang.al.a.a("IdHelper", "zui ids-oa:" + a10);
            if (bindService) {
                context.unbindService(bVar);
            }
            return a10;
        } catch (Throwable unused) {
            cn.jiguang.al.a.d("IdHelper", "package com.zui.deviceidservice not found ");
            return "";
        }
    }

    private static String h(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            cn.jiguang.ab.b bVar = new cn.jiguang.ab.b(context);
            String b10 = bVar.b();
            String c10 = bVar.c();
            String a10 = bVar.a();
            if (!TextUtils.isEmpty(b10)) {
                jSONObject.put("joad", b10);
            }
            if (!TextUtils.isEmpty(c10)) {
                jSONObject.put("jvad", c10);
            }
            if (!TextUtils.isEmpty(a10)) {
                jSONObject.put("jaad", a10);
            }
        } catch (JSONException e10) {
            cn.jiguang.al.a.d("IdHelper", "getNubiaIds err: " + e10.getMessage());
        }
        return jSONObject.toString();
    }

    private static String i(Context context) {
        String g10;
        try {
            String g11 = d.g("NZZdxIY39aBpJdeuRJ0VLp5xPlLZJqfiSSPak26ACVtSyGK74B1pfv+DoniV/u8H");
            if (TextUtils.isEmpty(g11)) {
                return "";
            }
            if (context.getPackageManager().getPackageInfo(g11, 0) == null) {
                cn.jiguang.al.a.d("IdHelper", "sumsung not support");
                return "";
            }
            try {
                g10 = d.g("NZZdxIY39aBpJdeuRJ0VLp5xPlLZJqfiSSPak26ACVsaSg3goTgfCOA0dOFWjVLPc7dVv4XHGL0Dk7MQTYMVQw==");
            } catch (Exception e10) {
                cn.jiguang.al.a.d("IdHelper", "sumsung getAdvertisingIdInfo Exception: " + e10.toString());
            }
            if (TextUtils.isEmpty(g10)) {
                return "";
            }
            Intent intent = new Intent();
            intent.setClassName(g11, g10);
            cn.jiguang.ad.b bVar = new cn.jiguang.ad.b();
            boolean bindService = context.bindService(intent, bVar, 1);
            if (!bindService) {
                cn.jiguang.al.a.d("IdHelper", "sumsung service bind failed");
                return "";
            }
            String a10 = new cn.jiguang.ad.a(bVar.f1832a.take()).a(context);
            cn.jiguang.al.a.a("IdHelper", "sumsuang ids-oa:" + a10);
            if (bindService) {
                context.unbindService(bVar);
            }
            return a10;
        } catch (PackageManager.NameNotFoundException unused) {
            cn.jiguang.al.a.d("IdHelper", "package com.samsung.android.deviceidservice not found");
            return "";
        }
    }

    private static String j(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            cn.jiguang.y.c cVar = new cn.jiguang.y.c(context);
            String b10 = cVar.b();
            String c10 = cVar.c();
            String a10 = cVar.a();
            if (!TextUtils.isEmpty(b10)) {
                jSONObject.put("joad", b10);
            }
            if (!TextUtils.isEmpty(c10)) {
                jSONObject.put("jvad", c10);
            }
            if (!TextUtils.isEmpty(a10)) {
                jSONObject.put("jaad", a10);
            }
        } catch (JSONException e10) {
            cn.jiguang.al.a.d("IdHelper", "getVivoIds err: " + e10.getMessage());
        }
        return jSONObject.toString();
    }

    private static String k(Context context) {
        String g10;
        try {
            String g11 = d.g("qFFOesfckPwVmbfqzGl5oG9IMWwJa4PjDfKEUokUsrU=");
            if (TextUtils.isEmpty(g11)) {
                return "";
            }
            boolean z10 = false;
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(g11, 0);
            if (packageInfo == null) {
                cn.jiguang.al.a.d("IdHelper", "oppo get package info is null");
                return "";
            }
            if (Build.VERSION.SDK_INT < 28 ? packageInfo.versionCode >= 1 : packageInfo.getLongVersionCode() >= 1) {
                z10 = true;
            }
            if (!z10) {
                cn.jiguang.al.a.a("IdHelper", "oppo not support above version 28");
                return "";
            }
            try {
                g10 = d.g("qFFOesfckPwVmbfqzGl5oOMkBF5tSSPHMYAiT/owwSwoCrUg5HXoJRYDJrCupV3K");
            } catch (Exception e10) {
                cn.jiguang.al.a.d("IdHelper", "oppo getAdvertisingIdInfo Exception: " + e10.toString());
            }
            if (TextUtils.isEmpty(g10)) {
                return "";
            }
            Intent intent = new Intent(g10);
            intent.setPackage(g11);
            String g12 = d.g("/3gurUKcGzqF8/YMsL45D9RvCsSd5y5lQDTuvU2S5vtG2aMIkkluUNr+NKF2loi0");
            if (TextUtils.isEmpty(g12)) {
                return "";
            }
            intent.setAction(g12);
            cn.jiguang.ac.b bVar = new cn.jiguang.ac.b();
            boolean bindService = context.bindService(intent, bVar, 1);
            if (!bindService) {
                cn.jiguang.al.a.d("IdHelper", "oppo service bind failed");
                return "";
            }
            String a10 = new cn.jiguang.ac.a(bVar.f1829a.take()).a(context);
            cn.jiguang.al.a.a("IdHelper", "oppo ids-oa: " + a10);
            if (bindService) {
                context.unbindService(bVar);
            }
            return a10;
        } catch (PackageManager.NameNotFoundException unused) {
            cn.jiguang.al.a.d("IdHelper", "package com.heytap.openid not found");
            return "";
        }
    }

    private static String l(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            cn.jiguang.ae.c cVar = new cn.jiguang.ae.c(context);
            cVar.a("");
            String b10 = cVar.b();
            String c10 = cVar.c();
            String a10 = cVar.a();
            if (!TextUtils.isEmpty(b10)) {
                jSONObject.put("joad", b10);
            }
            if (!TextUtils.isEmpty(c10)) {
                jSONObject.put("jvad", c10);
            }
            if (!TextUtils.isEmpty(a10)) {
                jSONObject.put("jaad", a10);
            }
        } catch (JSONException e10) {
            cn.jiguang.al.a.d("IdHelper", "getVivoIds err: " + e10.getMessage());
        }
        return jSONObject.toString();
    }

    private static String m(Context context) {
        String g10;
        if (context == null) {
            return "";
        }
        try {
            g10 = d.g("AVy8x+cBVze9OKJHZKioHyNDBGqtEllVM4dvG69zMJc=");
        } catch (Exception e10) {
            cn.jiguang.al.a.d("IdHelper", "asus getAdvertisingIdInfo Exception: " + e10.toString());
        }
        if (TextUtils.isEmpty(g10)) {
            return "";
        }
        Intent intent = new Intent(g10);
        String g11 = d.g("8lAhWp7NB89J3VIJU4lIGQtLf0YkfPcfFvWDnnGUuiQ=");
        if (TextUtils.isEmpty(g11)) {
            return "";
        }
        String g12 = d.g("8lAhWp7NB89J3VIJU4lIGQnPwmB8zgbENyN+gUA8dpRI7pO4GGAXufB+HCPmLRg7bL9N6o9V3Rxxk98J3lyy6g==");
        if (TextUtils.isEmpty(g12)) {
            return "";
        }
        ComponentName componentName = new ComponentName(g11, g12);
        Intent intent2 = new Intent(intent);
        intent2.setComponent(componentName);
        cn.jiguang.al.a.c("IdHelper", "start to bind did service.");
        cn.jiguang.v.b bVar = new cn.jiguang.v.b();
        boolean bindService = context.bindService(intent2, bVar, 1);
        if (bindService) {
            String a10 = new cn.jiguang.v.a(bVar.f2777a.take()).a();
            cn.jiguang.al.a.a("IdHelper", "asus ids-oa; " + a10);
            if (bindService) {
                cn.jiguang.al.a.c("IdHelper", "start to unbind did service");
                context.unbindService(bVar);
            }
            return a10;
        }
        return "";
    }

    private static String n(Context context) {
        return cn.jiguang.af.a.a(context);
    }

    private static String o(Context context) {
        return new cn.jiguang.ag.b(context).a();
    }

    private static String p(Context context) {
        return new cn.jiguang.ag.b(context).a();
    }

    private static String q(Context context) {
        return new cn.jiguang.ag.b(context).a();
    }
}
