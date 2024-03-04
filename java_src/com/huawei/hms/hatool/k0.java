package com.huawei.hms.hatool;

import android.content.Context;
import android.util.Pair;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class k0 implements n0 {

    /* renamed from: a  reason: collision with root package name */
    public Context f27517a = b.i();

    /* renamed from: b  reason: collision with root package name */
    public String f27518b;

    /* renamed from: c  reason: collision with root package name */
    public String f27519c;

    /* renamed from: d  reason: collision with root package name */
    public String f27520d;

    public k0(String str, String str2, String str3) {
        this.f27518b = str;
        this.f27519c = str2;
        this.f27520d = str3;
    }

    public final void a(String str, List<q> list) {
        Pair<String, String> a10 = u0.a(str);
        new t(list, (String) a10.first, (String) a10.second, this.f27520d).a();
    }

    @Override // java.lang.Runnable
    public void run() {
        Map<String, List<q>> a10;
        y.c("hmsSdk", "eventReportTask is running");
        boolean a11 = q0.a(this.f27517a);
        if (a11) {
            y.c("hmsSdk", "workKey is refresh,begin report all data");
            this.f27519c = "alltype";
        }
        try {
            try {
                a10 = w.a(this.f27517a, this.f27518b, this.f27519c);
            } catch (IllegalArgumentException e10) {
                y.e("hmsSdk", "readEventRecords handData IllegalArgumentException:" + e10.getMessage());
                if ("alltype".equals(this.f27519c)) {
                    g0.a(this.f27517a, "stat_v2_1", new String[0]);
                    g0.a(this.f27517a, "cached_v2_1", new String[0]);
                } else {
                    String a12 = u0.a(this.f27518b, this.f27519c);
                    g0.a(this.f27517a, "stat_v2_1", a12);
                    g0.a(this.f27517a, "cached_v2_1", a12);
                }
            } catch (Exception e11) {
                y.e("hmsSdk", "readEventRecords handData Exception:" + e11.getMessage());
                if ("alltype".equals(this.f27519c)) {
                    g0.a(this.f27517a, "stat_v2_1", new String[0]);
                    g0.a(this.f27517a, "cached_v2_1", new String[0]);
                } else {
                    String a13 = u0.a(this.f27518b, this.f27519c);
                    g0.a(this.f27517a, "stat_v2_1", a13);
                    g0.a(this.f27517a, "cached_v2_1", a13);
                }
            }
            if (a10.size() == 0) {
                y.b("hmsSdk", "no have events to report: tag:%s : type:%s", this.f27518b, this.f27519c);
                if ("alltype".equals(this.f27519c)) {
                    g0.a(this.f27517a, "stat_v2_1", new String[0]);
                    g0.a(this.f27517a, "cached_v2_1", new String[0]);
                    return;
                }
                String a14 = u0.a(this.f27518b, this.f27519c);
                g0.a(this.f27517a, "stat_v2_1", a14);
                g0.a(this.f27517a, "cached_v2_1", a14);
                return;
            }
            for (Map.Entry<String, List<q>> entry : a10.entrySet()) {
                a(entry.getKey(), entry.getValue());
            }
            if ("alltype".equals(this.f27519c)) {
                g0.a(this.f27517a, "stat_v2_1", new String[0]);
                g0.a(this.f27517a, "cached_v2_1", new String[0]);
            } else {
                String a15 = u0.a(this.f27518b, this.f27519c);
                g0.a(this.f27517a, "stat_v2_1", a15);
                g0.a(this.f27517a, "cached_v2_1", a15);
            }
            if (a11) {
                y.c("hmsSdk", "refresh local key");
                d0.f().b();
            }
        } catch (Throwable th2) {
            if ("alltype".equals(this.f27519c)) {
                g0.a(this.f27517a, "stat_v2_1", new String[0]);
                g0.a(this.f27517a, "cached_v2_1", new String[0]);
            } else {
                String a16 = u0.a(this.f27518b, this.f27519c);
                g0.a(this.f27517a, "stat_v2_1", a16);
                g0.a(this.f27517a, "cached_v2_1", a16);
            }
            throw th2;
        }
    }
}
