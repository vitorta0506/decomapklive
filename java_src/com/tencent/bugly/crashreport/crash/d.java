package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import com.tencent.bugly.proguard.z;
import java.util.LinkedHashMap;
import java.util.Map;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f30370a;

    /* renamed from: b  reason: collision with root package name */
    private com.tencent.bugly.crashreport.common.strategy.a f30371b;

    /* renamed from: c  reason: collision with root package name */
    private com.tencent.bugly.crashreport.common.info.a f30372c;

    /* renamed from: d  reason: collision with root package name */
    private b f30373d;

    /* renamed from: e  reason: collision with root package name */
    private Context f30374e;

    private d(Context context) {
        c a10 = c.a();
        if (a10 == null) {
            return;
        }
        this.f30371b = com.tencent.bugly.crashreport.common.strategy.a.a();
        this.f30372c = com.tencent.bugly.crashreport.common.info.a.a(context);
        this.f30373d = a10.f30352p;
        this.f30374e = context;
        w.a().a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.d.1
            @Override // java.lang.Runnable
            public final void run() {
                d.a(d.this);
            }
        });
    }

    static /* synthetic */ void a(d dVar) {
        x.c("[ExtraCrashManager] Trying to notify Bugly agents.", new Object[0]);
        try {
            Class<?> cls = Class.forName("com.tencent.bugly.agent.GameAgent");
            dVar.f30372c.getClass();
            z.a(cls, "sdkPackageName", "com.tencent.bugly", null);
            x.c("[ExtraCrashManager] Bugly game agent has been notified.", new Object[0]);
        } catch (Throwable unused) {
            x.a("[ExtraCrashManager] no game agent", new Object[0]);
        }
    }

    static /* synthetic */ void a(d dVar, Thread thread, int i9, String str, String str2, String str3, Map map) {
        String str4;
        String str5;
        String str6;
        Thread currentThread = thread == null ? Thread.currentThread() : thread;
        if (i9 == 4) {
            str4 = "Unity";
        } else if (i9 == 5 || i9 == 6) {
            str4 = "Cocos";
        } else if (i9 != 8) {
            x.d("[ExtraCrashManager] Unknown extra crash type: %d", Integer.valueOf(i9));
            return;
        } else {
            str4 = "H5";
        }
        x.e("[ExtraCrashManager] %s Crash Happen", str4);
        try {
            if (!dVar.f30371b.b()) {
                x.d("[ExtraCrashManager] There is no remote strategy, but still store it.", new Object[0]);
            }
            StrategyBean c10 = dVar.f30371b.c();
            if (!c10.f30225e && dVar.f30371b.b()) {
                x.e("[ExtraCrashManager] Crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
                String a10 = z.a();
                String str7 = dVar.f30372c.f30195d;
                String name = currentThread.getName();
                b.a(str4, a10, str7, name, str + IOUtils.LINE_SEPARATOR_UNIX + str2 + IOUtils.LINE_SEPARATOR_UNIX + str3, null);
                x.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            if (i9 == 5 || i9 == 6) {
                if (!c10.f30230j) {
                    x.e("[ExtraCrashManager] %s report is disabled.", str4);
                    x.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                    return;
                }
            } else if (i9 == 8 && !c10.f30231k) {
                x.e("[ExtraCrashManager] %s report is disabled.", str4);
                x.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            int i10 = i9 != 8 ? i9 : 5;
            CrashDetailBean crashDetailBean = new CrashDetailBean();
            crashDetailBean.C = com.tencent.bugly.crashreport.common.info.b.g();
            crashDetailBean.D = com.tencent.bugly.crashreport.common.info.b.e();
            crashDetailBean.E = com.tencent.bugly.crashreport.common.info.b.i();
            crashDetailBean.F = dVar.f30372c.l();
            crashDetailBean.G = dVar.f30372c.k();
            crashDetailBean.H = dVar.f30372c.m();
            crashDetailBean.f30281w = z.a(dVar.f30374e, c.f30340e, (String) null);
            crashDetailBean.f30260b = i10;
            crashDetailBean.f30263e = dVar.f30372c.h();
            com.tencent.bugly.crashreport.common.info.a aVar = dVar.f30372c;
            crashDetailBean.f30264f = aVar.f30201j;
            crashDetailBean.f30265g = aVar.r();
            crashDetailBean.f30271m = dVar.f30372c.g();
            crashDetailBean.f30272n = str;
            crashDetailBean.f30273o = str2;
            str5 = "";
            if (str3 != null) {
                String[] split = str3.split(IOUtils.LINE_SEPARATOR_UNIX);
                str5 = split.length > 0 ? split[0] : "";
                str6 = str3;
            } else {
                str6 = "";
            }
            crashDetailBean.f30274p = str5;
            crashDetailBean.f30275q = str6;
            crashDetailBean.f30276r = System.currentTimeMillis();
            crashDetailBean.f30279u = z.a(crashDetailBean.f30275q.getBytes());
            crashDetailBean.f30284z = z.a(c.f30341f, false);
            crashDetailBean.A = dVar.f30372c.f30195d;
            crashDetailBean.B = currentThread.getName() + "(" + currentThread.getId() + ")";
            crashDetailBean.I = dVar.f30372c.t();
            crashDetailBean.f30266h = dVar.f30372c.q();
            com.tencent.bugly.crashreport.common.info.a aVar2 = dVar.f30372c;
            crashDetailBean.M = aVar2.f30180a;
            crashDetailBean.N = aVar2.a();
            if (!c.a().p()) {
                dVar.f30373d.d(crashDetailBean);
            }
            crashDetailBean.Q = dVar.f30372c.A();
            crashDetailBean.R = dVar.f30372c.B();
            crashDetailBean.S = dVar.f30372c.u();
            crashDetailBean.T = dVar.f30372c.z();
            crashDetailBean.f30283y = y.a();
            if (crashDetailBean.O == null) {
                crashDetailBean.O = new LinkedHashMap();
            }
            if (map != null) {
                crashDetailBean.O.putAll(map);
            }
            String a11 = z.a();
            String str8 = dVar.f30372c.f30195d;
            String name2 = currentThread.getName();
            b.a(str4, a11, str8, name2, str + IOUtils.LINE_SEPARATOR_UNIX + str2 + IOUtils.LINE_SEPARATOR_UNIX + str3, crashDetailBean);
            if (!dVar.f30373d.a(crashDetailBean)) {
                dVar.f30373d.a(crashDetailBean, 3000L, false);
            }
            x.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
        } catch (Throwable th2) {
            try {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
                x.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
            } catch (Throwable th3) {
                x.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                throw th3;
            }
        }
    }

    public static d a(Context context) {
        if (f30370a == null) {
            f30370a = new d(context);
        }
        return f30370a;
    }

    public static void a(final Thread thread, final int i9, final String str, final String str2, final String str3, final Map<String, String> map) {
        w.a().a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.d.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (d.f30370a != null) {
                        d.a(d.f30370a, thread, i9, str, str2, str3, map);
                    } else {
                        x.e("[ExtraCrashManager] Extra crash manager has not been initialized.", new Object[0]);
                    }
                } catch (Throwable th2) {
                    if (!x.b(th2)) {
                        th2.printStackTrace();
                    }
                    x.e("[ExtraCrashManager] Crash error %s %s %s", str, str2, str3);
                }
            }
        });
    }
}
