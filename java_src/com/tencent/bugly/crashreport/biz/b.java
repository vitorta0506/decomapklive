package com.tencent.bugly.crashreport.biz;

import android.app.Application;
import android.content.Context;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.biz.a;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static a f30161a = null;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f30162b = false;

    /* renamed from: c  reason: collision with root package name */
    private static int f30163c = 10;

    /* renamed from: d  reason: collision with root package name */
    private static long f30164d = 300000;

    /* renamed from: e  reason: collision with root package name */
    private static long f30165e = 30000;

    /* renamed from: f  reason: collision with root package name */
    private static long f30166f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static int f30167g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static long f30168h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static long f30169i = 0;

    /* renamed from: j  reason: collision with root package name */
    private static long f30170j = 0;

    /* renamed from: k  reason: collision with root package name */
    private static Application.ActivityLifecycleCallbacks f30171k = null;

    /* renamed from: l  reason: collision with root package name */
    private static Class<?> f30172l = null;

    /* renamed from: m  reason: collision with root package name */
    private static boolean f30173m = true;

    static /* synthetic */ String a(String str, String str2) {
        return z.a() + "  " + str + "  " + str2 + IOUtils.LINE_SEPARATOR_UNIX;
    }

    static /* synthetic */ int g() {
        int i9 = f30167g;
        f30167g = i9 + 1;
        return i9;
    }

    public static void a(final Context context, final BuglyStrategy buglyStrategy) {
        long j10;
        if (f30162b) {
            return;
        }
        boolean z10 = com.tencent.bugly.crashreport.common.info.a.a(context).f30196e;
        f30173m = z10;
        f30161a = new a(context, z10);
        f30162b = true;
        if (buglyStrategy != null) {
            f30172l = buglyStrategy.getUserInfoActivity();
            j10 = buglyStrategy.getAppReportDelay();
        } else {
            j10 = 0;
        }
        if (j10 <= 0) {
            c(context, buglyStrategy);
        } else {
            w.a().a(new Runnable() { // from class: com.tencent.bugly.crashreport.biz.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    b.c(context, buglyStrategy);
                }
            }, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(android.content.Context r14, com.tencent.bugly.BuglyStrategy r15) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.biz.b.c(android.content.Context, com.tencent.bugly.BuglyStrategy):void");
    }

    public static void a(long j10) {
        if (j10 < 0) {
            j10 = com.tencent.bugly.crashreport.common.strategy.a.a().c().f30235o;
        }
        f30166f = j10;
    }

    public static void a(StrategyBean strategyBean, boolean z10) {
        w a10;
        a aVar = f30161a;
        if (aVar != null && !z10 && (a10 = w.a()) != null) {
            a10.a(new a.AnonymousClass2());
        }
        if (strategyBean == null) {
            return;
        }
        long j10 = strategyBean.f30235o;
        if (j10 > 0) {
            f30165e = j10;
        }
        int i9 = strategyBean.f30240t;
        if (i9 > 0) {
            f30163c = i9;
        }
        long j11 = strategyBean.f30241u;
        if (j11 > 0) {
            f30164d = j11;
        }
    }

    public static void a() {
        a aVar = f30161a;
        if (aVar != null) {
            aVar.a(2, false, 0L);
        }
    }

    public static void a(Context context) {
        if (!f30162b || context == null) {
            return;
        }
        Application application = context.getApplicationContext() instanceof Application ? (Application) context.getApplicationContext() : null;
        if (application != null) {
            try {
                Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = f30171k;
                if (activityLifecycleCallbacks != null) {
                    application.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
                }
            } catch (Exception e10) {
                if (!x.a(e10)) {
                    e10.printStackTrace();
                }
            }
        }
        f30162b = false;
    }
}
