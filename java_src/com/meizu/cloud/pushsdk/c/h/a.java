package com.meizu.cloud.pushsdk.c.h;

import android.net.TrafficStats;
import com.meizu.cloud.pushsdk.c.a.e;
import com.meizu.cloud.pushsdk.c.c.k;
import com.meizu.cloud.pushsdk.util.MinSdkChecker;
/* loaded from: classes4.dex */
public final class a {
    public static void a(k kVar, com.meizu.cloud.pushsdk.c.a.b bVar) {
        if (bVar.f() == e.OK_HTTP_RESPONSE || kVar == null || kVar.b() == null || kVar.b().a() == null) {
            return;
        }
        try {
            try {
                kVar.b().a().close();
                if (!MinSdkChecker.isSupportNotificationChannel()) {
                    return;
                }
            } catch (Exception unused) {
                com.meizu.cloud.pushsdk.c.a.a.a("Unable to close source data");
                if (!MinSdkChecker.isSupportNotificationChannel()) {
                    return;
                }
            }
            TrafficStats.clearThreadStatsTag();
        } catch (Throwable th2) {
            if (MinSdkChecker.isSupportNotificationChannel()) {
                TrafficStats.clearThreadStatsTag();
            }
            throw th2;
        }
    }
}