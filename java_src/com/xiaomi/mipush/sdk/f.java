package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.os.SystemClock;
/* loaded from: classes5.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static long f36222a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f36223b = false;

    private static void a(Context context) {
        a d10 = f0.e(context).d(c.ASSEMBLE_PUSH_FTOS);
        if (d10 != null) {
            tf.c.l("ASSEMBLE_PUSH :  register fun touch os when network change!");
            d10.b();
        }
    }

    public static void b(Context context) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (c()) {
            long j10 = f36222a;
            if (j10 <= 0 || j10 + 300000 <= elapsedRealtime) {
                f36222a = elapsedRealtime;
                a(context);
            }
        }
    }

    public static boolean c() {
        return f36223b;
    }
}
