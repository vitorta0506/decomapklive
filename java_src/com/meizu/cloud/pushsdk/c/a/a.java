package com.meizu.cloud.pushsdk.c.a;

import com.meizu.cloud.pushinternal.DebugLogger;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f28265a = false;

    /* renamed from: b  reason: collision with root package name */
    private static String f28266b = "AndroidNetworking";

    public static void a() {
        f28265a = true;
    }

    public static void a(String str) {
        if (f28265a) {
            DebugLogger.d(f28266b, str);
        }
    }

    public static void b(String str) {
        if (f28265a) {
            DebugLogger.i(f28266b, str);
        }
    }
}
