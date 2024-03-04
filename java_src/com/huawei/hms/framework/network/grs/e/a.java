package com.huawei.hms.framework.network.grs.e;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.g.d;
import com.huawei.hms.framework.network.grs.g.h;
import com.huawei.hms.framework.network.grs.h.e;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: f  reason: collision with root package name */
    private static final String f27322f = "a";

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Map<String, Map<String, String>>> f27323a = new ConcurrentHashMap(16);

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Long> f27324b = new ConcurrentHashMap(16);

    /* renamed from: c  reason: collision with root package name */
    private final c f27325c;

    /* renamed from: d  reason: collision with root package name */
    private final c f27326d;

    /* renamed from: e  reason: collision with root package name */
    private final h f27327e;

    public a(c cVar, c cVar2, h hVar) {
        this.f27326d = cVar2;
        this.f27325c = cVar;
        this.f27327e = hVar;
        hVar.a(this);
    }

    private void a(GrsBaseInfo grsBaseInfo, b bVar, Context context, String str) {
        Long l10 = this.f27324b.get(grsBaseInfo.getGrsParasKey(true, true, context));
        if (e.a(l10)) {
            bVar.a(2);
            return;
        }
        if (e.a(l10, 300000L)) {
            this.f27327e.a(new com.huawei.hms.framework.network.grs.g.k.c(grsBaseInfo, context), null, str, this.f27326d);
        }
        bVar.a(1);
    }

    private void a(GrsBaseInfo grsBaseInfo, String str, Context context) {
        if (e.a(this.f27324b.get(str), 300000L)) {
            this.f27327e.a(new com.huawei.hms.framework.network.grs.g.k.c(grsBaseInfo, context), null, null, this.f27326d);
        }
    }

    public c a() {
        return this.f27325c;
    }

    public Map<String, String> a(GrsBaseInfo grsBaseInfo, String str, b bVar, Context context) {
        Map<String, Map<String, String>> map = this.f27323a.get(grsBaseInfo.getGrsParasKey(true, true, context));
        if (map == null || map.isEmpty()) {
            return new HashMap();
        }
        a(grsBaseInfo, bVar, context, str);
        return map.get(str);
    }

    public void a(GrsBaseInfo grsBaseInfo, Context context) {
        String grsParasKey = grsBaseInfo.getGrsParasKey(true, true, context);
        c cVar = this.f27325c;
        cVar.b(grsParasKey + CrashHianalyticsData.TIME, "0");
        Map<String, Long> map = this.f27324b;
        map.remove(grsParasKey + CrashHianalyticsData.TIME);
        this.f27323a.remove(grsParasKey);
        this.f27327e.a(grsParasKey);
    }

    public void a(GrsBaseInfo grsBaseInfo, d dVar, Context context, com.huawei.hms.framework.network.grs.g.k.c cVar) {
        if (dVar.f() == 2) {
            Logger.w(f27322f, "update cache from server failed");
        } else if (cVar.d().size() != 0) {
            this.f27325c.b("geoipCountryCode", dVar.j());
            this.f27325c.b("geoipCountryCodetime", dVar.a());
        } else {
            String grsParasKey = grsBaseInfo.getGrsParasKey(true, true, context);
            if (dVar.m()) {
                this.f27323a.put(grsParasKey, com.huawei.hms.framework.network.grs.a.a(this.f27325c.a(grsParasKey, "")));
            } else {
                this.f27325c.b(grsParasKey, dVar.j());
                this.f27323a.put(grsParasKey, com.huawei.hms.framework.network.grs.a.a(dVar.j()));
            }
            if (!TextUtils.isEmpty(dVar.e())) {
                c cVar2 = this.f27325c;
                cVar2.b(grsParasKey + "ETag", dVar.e());
            }
            c cVar3 = this.f27325c;
            cVar3.b(grsParasKey + CrashHianalyticsData.TIME, dVar.a());
            this.f27324b.put(grsParasKey, Long.valueOf(Long.parseLong(dVar.a())));
        }
    }

    public h b() {
        return this.f27327e;
    }

    public void b(GrsBaseInfo grsBaseInfo, Context context) {
        String grsParasKey = grsBaseInfo.getGrsParasKey(true, true, context);
        String a10 = this.f27325c.a(grsParasKey, "");
        c cVar = this.f27325c;
        String a11 = cVar.a(grsParasKey + CrashHianalyticsData.TIME, "0");
        long j10 = 0;
        if (!TextUtils.isEmpty(a11) && a11.matches("\\d+")) {
            try {
                j10 = Long.parseLong(a11);
            } catch (NumberFormatException e10) {
                Logger.w(f27322f, "convert urlParamKey from String to Long catch NumberFormatException.", e10);
            }
        }
        this.f27323a.put(grsParasKey, com.huawei.hms.framework.network.grs.a.a(a10));
        this.f27324b.put(grsParasKey, Long.valueOf(j10));
        a(grsBaseInfo, grsParasKey, context);
    }

    public c c() {
        return this.f27326d;
    }
}
