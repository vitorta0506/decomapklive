package com.meizu.cloud.pushsdk.d.f;

import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.meizu.cloud.pushinternal.DebugLogger;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static int f28672a;

    private static String a() {
        return Thread.currentThread().getName();
    }

    private static String a(String str) {
        return "PushTracker->" + str;
    }

    private static String a(String str, Object... objArr) {
        return a() + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + String.format(str, objArr);
    }

    public static void a(b bVar) {
        f28672a = bVar.a();
    }

    public static void a(String str, String str2, Object... objArr) {
        if (f28672a >= b.ERROR.a()) {
            DebugLogger.e(a(str), a(str2, objArr));
        }
    }

    public static void b(String str, String str2, Object... objArr) {
        if (f28672a >= b.DEBUG.a()) {
            DebugLogger.d(a(str), a(str2, objArr));
        }
    }

    public static void c(String str, String str2, Object... objArr) {
        if (f28672a >= b.VERBOSE.a()) {
            DebugLogger.i(a(str), a(str2, objArr));
        }
    }
}
