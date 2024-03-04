package com.xiaomi.mipush.sdk;

import android.content.Context;
/* loaded from: classes5.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f36229a = false;

    public static boolean a() {
        return f36229a;
    }

    public static void b(Context context) {
        a d10 = f0.e(context).d(c.ASSEMBLE_PUSH_HUAWEI);
        if (d10 != null) {
            d10.b();
        }
    }

    public static synchronized void c(Context context) {
        synchronized (g.class) {
            context.getSharedPreferences("mipush_extra", 0).edit().putLong("last_connect_time", System.currentTimeMillis()).commit();
        }
    }

    public static synchronized boolean d(Context context) {
        boolean z10;
        synchronized (g.class) {
            z10 = Math.abs(System.currentTimeMillis() - context.getSharedPreferences("mipush_extra", 0).getLong("last_connect_time", -1L)) > 5000;
        }
        return z10;
    }
}
