package com.tencent.bugly.crashreport.common.strategy;

import android.content.Context;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.tencent.bugly.crashreport.biz.b;
import com.tencent.bugly.proguard.ao;
import com.tencent.bugly.proguard.ap;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.r;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static int f30243a = 1000;

    /* renamed from: b  reason: collision with root package name */
    private static a f30244b;

    /* renamed from: h  reason: collision with root package name */
    private static String f30245h;

    /* renamed from: c  reason: collision with root package name */
    private final List<com.tencent.bugly.a> f30246c;

    /* renamed from: d  reason: collision with root package name */
    private final w f30247d;

    /* renamed from: e  reason: collision with root package name */
    private final StrategyBean f30248e;

    /* renamed from: f  reason: collision with root package name */
    private StrategyBean f30249f = null;

    /* renamed from: g  reason: collision with root package name */
    private Context f30250g;

    private a(Context context, List<com.tencent.bugly.a> list) {
        String str;
        this.f30250g = context;
        if (com.tencent.bugly.crashreport.common.info.a.a(context) != null) {
            String str2 = com.tencent.bugly.crashreport.common.info.a.a(context).f30216y;
            if ("oversea".equals(str2)) {
                str = "https://astat.bugly.qcloud.com/rqd/async";
            } else {
                str = "na_https".equals(str2) ? "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async" : "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async";
            }
            StrategyBean.f30221a = str;
            StrategyBean.f30222b = str;
        }
        this.f30248e = new StrategyBean();
        this.f30246c = list;
        this.f30247d = w.a();
    }

    public static StrategyBean d() {
        byte[] bArr;
        List<r> a10 = p.a().a(2);
        if (a10 == null || a10.size() <= 0 || (bArr = a10.get(0).f30634g) == null) {
            return null;
        }
        return (StrategyBean) z.a(bArr, StrategyBean.CREATOR);
    }

    public final StrategyBean c() {
        StrategyBean strategyBean = this.f30249f;
        if (strategyBean != null) {
            if (!z.c(strategyBean.f30236p)) {
                this.f30249f.f30236p = StrategyBean.f30221a;
            }
            if (!z.c(this.f30249f.f30237q)) {
                this.f30249f.f30237q = StrategyBean.f30222b;
            }
            return this.f30249f;
        }
        if (!z.a(f30245h) && z.c(f30245h)) {
            StrategyBean strategyBean2 = this.f30248e;
            String str = f30245h;
            strategyBean2.f30236p = str;
            strategyBean2.f30237q = str;
        }
        return this.f30248e;
    }

    public final synchronized boolean b() {
        return this.f30249f != null;
    }

    public static synchronized a a(Context context, List<com.tencent.bugly.a> list) {
        a aVar;
        synchronized (a.class) {
            if (f30244b == null) {
                f30244b = new a(context, list);
            }
            aVar = f30244b;
        }
        return aVar;
    }

    public final void a(long j10) {
        this.f30247d.a(new Thread() { // from class: com.tencent.bugly.crashreport.common.strategy.a.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                try {
                    Map<String, byte[]> a10 = p.a().a(a.f30243a, (o) null, true);
                    if (a10 != null) {
                        byte[] bArr = a10.get(DeviceRequestsHelper.DEVICE_INFO_DEVICE);
                        byte[] bArr2 = a10.get("gateway");
                        if (bArr != null) {
                            com.tencent.bugly.crashreport.common.info.a.a(a.this.f30250g).f(new String(bArr));
                        }
                        if (bArr2 != null) {
                            com.tencent.bugly.crashreport.common.info.a.a(a.this.f30250g).e(new String(bArr2));
                        }
                    }
                    a.this.f30249f = a.d();
                    if (a.this.f30249f != null) {
                        if (z.a(a.f30245h) || !z.c(a.f30245h)) {
                            a.this.f30249f.f30236p = StrategyBean.f30221a;
                            a.this.f30249f.f30237q = StrategyBean.f30222b;
                        } else {
                            a.this.f30249f.f30236p = a.f30245h;
                            a.this.f30249f.f30237q = a.f30245h;
                        }
                    }
                } catch (Throwable th2) {
                    if (!x.a(th2)) {
                        th2.printStackTrace();
                    }
                }
                a aVar = a.this;
                aVar.a(aVar.f30249f, false);
            }
        }, j10);
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            aVar = f30244b;
        }
        return aVar;
    }

    protected final void a(StrategyBean strategyBean, boolean z10) {
        x.c("[Strategy] Notify %s", b.class.getName());
        b.a(strategyBean, z10);
        for (com.tencent.bugly.a aVar : this.f30246c) {
            try {
                x.c("[Strategy] Notify %s", aVar.getClass().getName());
                aVar.onServerStrategyChanged(strategyBean);
            } catch (Throwable th2) {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
            }
        }
    }

    public static void a(String str) {
        if (!z.a(str) && z.c(str)) {
            f30245h = str;
        } else {
            x.d("URL user set is invalid.", new Object[0]);
        }
    }

    public final void a(ap apVar) {
        if (apVar == null) {
            return;
        }
        StrategyBean strategyBean = this.f30249f;
        if (strategyBean == null || apVar.f30536h != strategyBean.f30234n) {
            StrategyBean strategyBean2 = new StrategyBean();
            strategyBean2.f30225e = apVar.f30529a;
            strategyBean2.f30227g = apVar.f30531c;
            strategyBean2.f30226f = apVar.f30530b;
            if (z.a(f30245h) || !z.c(f30245h)) {
                if (z.c(apVar.f30532d)) {
                    x.c("[Strategy] Upload url changes to %s", apVar.f30532d);
                    strategyBean2.f30236p = apVar.f30532d;
                }
                if (z.c(apVar.f30533e)) {
                    x.c("[Strategy] Exception upload url changes to %s", apVar.f30533e);
                    strategyBean2.f30237q = apVar.f30533e;
                }
            }
            ao aoVar = apVar.f30534f;
            if (aoVar != null && !z.a(aoVar.f30524a)) {
                strategyBean2.f30238r = apVar.f30534f.f30524a;
            }
            long j10 = apVar.f30536h;
            if (j10 != 0) {
                strategyBean2.f30234n = j10;
            }
            Map<String, String> map = apVar.f30535g;
            if (map != null && map.size() > 0) {
                Map<String, String> map2 = apVar.f30535g;
                strategyBean2.f30239s = map2;
                String str = map2.get("B11");
                if (str != null && str.equals("1")) {
                    strategyBean2.f30228h = true;
                } else {
                    strategyBean2.f30228h = false;
                }
                String str2 = apVar.f30535g.get("B3");
                if (str2 != null) {
                    strategyBean2.f30242v = Long.valueOf(str2).longValue();
                }
                int i9 = apVar.f30537i;
                strategyBean2.f30235o = i9;
                strategyBean2.f30241u = i9;
                String str3 = apVar.f30535g.get("B27");
                if (str3 != null && str3.length() > 0) {
                    try {
                        int parseInt = Integer.parseInt(str3);
                        if (parseInt > 0) {
                            strategyBean2.f30240t = parseInt;
                        }
                    } catch (Exception e10) {
                        if (!x.a(e10)) {
                            e10.printStackTrace();
                        }
                    }
                }
                String str4 = apVar.f30535g.get("B25");
                if (str4 != null && str4.equals("1")) {
                    strategyBean2.f30230j = true;
                } else {
                    strategyBean2.f30230j = false;
                }
            }
            x.a("[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d", Boolean.valueOf(strategyBean2.f30225e), Boolean.valueOf(strategyBean2.f30227g), Boolean.valueOf(strategyBean2.f30226f), Boolean.valueOf(strategyBean2.f30228h), Boolean.valueOf(strategyBean2.f30229i), Boolean.valueOf(strategyBean2.f30232l), Boolean.valueOf(strategyBean2.f30233m), Long.valueOf(strategyBean2.f30235o), Boolean.valueOf(strategyBean2.f30230j), Long.valueOf(strategyBean2.f30234n));
            this.f30249f = strategyBean2;
            if (!z.c(apVar.f30532d)) {
                x.c("[Strategy] download url is null", new Object[0]);
                this.f30249f.f30236p = "";
            }
            if (!z.c(apVar.f30533e)) {
                x.c("[Strategy] download crashurl is null", new Object[0]);
                this.f30249f.f30237q = "";
            }
            p.a().b(2);
            r rVar = new r();
            rVar.f30629b = 2;
            rVar.f30628a = strategyBean2.f30223c;
            rVar.f30632e = strategyBean2.f30224d;
            rVar.f30634g = z.a(strategyBean2);
            p.a().a(rVar);
            a(strategyBean2, true);
        }
    }
}
