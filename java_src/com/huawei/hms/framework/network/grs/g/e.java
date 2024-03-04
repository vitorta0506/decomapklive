package com.huawei.hms.framework.network.grs.g;

import android.content.Context;
import com.huawei.hms.framework.common.ExceptionCode;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.framework.common.hianalytics.HianalyticsHelper;
import com.huawei.hms.framework.common.hianalytics.LinkedHashMapPack;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import org.json.JSONArray;
/* loaded from: classes4.dex */
public class e {

    /* loaded from: classes4.dex */
    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f27392a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ArrayList f27393b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ JSONArray f27394c;

        a(long j10, ArrayList arrayList, JSONArray jSONArray) {
            this.f27392a = j10;
            this.f27393b = arrayList;
            this.f27394c = jSONArray;
        }

        /* JADX WARN: Removed duplicated region for block: B:5:0x001b  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r6 = this;
                com.huawei.hms.framework.network.grs.g.k.a r0 = new com.huawei.hms.framework.network.grs.g.k.a
                r0.<init>()
                long r1 = r6.f27392a
                java.lang.String r3 = "total_time"
                r0.put(r3, r1)
                java.util.ArrayList r1 = r6.f27393b
                java.util.Iterator r1 = r1.iterator()
            L13:
                boolean r2 = r1.hasNext()
                r3 = 0
                r4 = 1
                if (r2 == 0) goto L39
                java.lang.Object r2 = r1.next()
                com.huawei.hms.framework.network.grs.g.d r2 = (com.huawei.hms.framework.network.grs.g.d) r2
                boolean r5 = r2.o()
                if (r5 != 0) goto L2d
                boolean r5 = r2.m()
                if (r5 == 0) goto L13
            L2d:
                java.util.LinkedHashMap r2 = com.huawei.hms.framework.network.grs.g.e.a(r2)
                r0.put(r2)
                r1.remove()
                r1 = 1
                goto L3a
            L39:
                r1 = 0
            L3a:
                if (r1 != 0) goto L5d
                java.util.ArrayList r1 = r6.f27393b
                int r1 = r1.size()
                if (r1 <= 0) goto L5d
                java.util.ArrayList r1 = r6.f27393b
                int r2 = r1.size()
                int r2 = r2 - r4
                java.lang.Object r1 = r1.get(r2)
                com.huawei.hms.framework.network.grs.g.d r1 = (com.huawei.hms.framework.network.grs.g.d) r1
                java.util.LinkedHashMap r2 = com.huawei.hms.framework.network.grs.g.e.a(r1)
                r0.put(r2)
                java.util.ArrayList r2 = r6.f27393b
                r2.remove(r1)
            L5d:
                java.util.ArrayList r1 = r6.f27393b
                int r1 = r1.size()
                if (r1 <= 0) goto L86
                java.util.ArrayList r1 = r6.f27393b
                java.util.Iterator r1 = r1.iterator()
            L6b:
                boolean r2 = r1.hasNext()
                if (r2 == 0) goto L86
                java.lang.Object r2 = r1.next()
                com.huawei.hms.framework.network.grs.g.d r2 = (com.huawei.hms.framework.network.grs.g.d) r2
                org.json.JSONObject r5 = new org.json.JSONObject
                java.util.LinkedHashMap r2 = com.huawei.hms.framework.network.grs.g.e.a(r2)
                r5.<init>(r2)
                org.json.JSONArray r2 = r6.f27394c
                r2.put(r5)
                goto L6b
            L86:
                org.json.JSONArray r1 = r6.f27394c
                int r1 = r1.length()
                if (r1 <= 0) goto L99
                org.json.JSONArray r1 = r6.f27394c
                java.lang.String r1 = r1.toString()
                java.lang.String r2 = "failed_info"
                r0.put(r2, r1)
            L99:
                java.lang.Object[] r1 = new java.lang.Object[r4]
                org.json.JSONObject r2 = new org.json.JSONObject
                java.util.LinkedHashMap r4 = r0.get()
                r2.<init>(r4)
                r1[r3] = r2
                java.lang.String r2 = "HaReportHelper"
                java.lang.String r3 = "grssdk report data to aiops is: %s"
                com.huawei.hms.framework.common.Logger.d(r2, r3, r1)
                com.huawei.hms.framework.common.hianalytics.HianalyticsHelper r1 = com.huawei.hms.framework.common.hianalytics.HianalyticsHelper.getInstance()
                java.util.LinkedHashMap r0 = r0.get()
                java.lang.String r2 = "grs_request"
                r1.onEvent(r0, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.network.grs.g.e.a.run():void");
        }
    }

    public static void a(ArrayList<d> arrayList, long j10, JSONArray jSONArray, Context context) {
        if (context == null || arrayList == null || arrayList.size() <= 0 || !HianalyticsHelper.getInstance().isEnableReportNoSeed(context)) {
            return;
        }
        HianalyticsHelper.getInstance().getReportExecutor().submit(new a(j10, arrayList, jSONArray));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LinkedHashMap<String, String> b(d dVar) {
        LinkedHashMapPack linkedHashMapPack = new LinkedHashMapPack();
        Exception d10 = dVar.d();
        if (d10 != null) {
            linkedHashMapPack.put("error_code", ExceptionCode.getErrorCodeFromException(d10));
            linkedHashMapPack.put(CrashHianalyticsData.EXCEPTION_NAME, d10.getClass().getSimpleName());
            linkedHashMapPack.put("message", StringUtils.anonymizeMessage(d10.getMessage()));
        } else {
            linkedHashMapPack.put("error_code", dVar.b());
            linkedHashMapPack.put(CrashHianalyticsData.EXCEPTION_NAME, dVar.c());
        }
        try {
            linkedHashMapPack.put("domain", new URL(dVar.l()).getHost());
        } catch (MalformedURLException e10) {
            Logger.w("HaReportHelper", "report host MalformedURLException", e10);
        }
        linkedHashMapPack.put("req_start_time", dVar.h());
        linkedHashMapPack.put("req_end_time", dVar.g());
        linkedHashMapPack.put("req_total_time", dVar.i());
        return linkedHashMapPack.getAll();
    }
}
