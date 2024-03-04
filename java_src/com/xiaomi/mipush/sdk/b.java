package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.os.SystemClock;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile boolean f36213a = false;

    /* renamed from: b  reason: collision with root package name */
    private static long f36214b;

    public static void a(Context context) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (b()) {
            long j10 = f36214b;
            if (j10 <= 0 || j10 + 300000 <= elapsedRealtime) {
                f36214b = elapsedRealtime;
                c(context);
            }
        }
    }

    public static boolean b() {
        return f36213a;
    }

    public static void c(Context context) {
        a d10 = f0.e(context).d(c.ASSEMBLE_PUSH_COS);
        if (d10 != null) {
            tf.c.l("ASSEMBLE_PUSH :  register cos when network change!");
            d10.b();
        }
    }
}
