package cn.jiguang.bf;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Random;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f2488a;

    private static long a(long j10) {
        return (j10 + (j10 % 2 == 0 ? 1L : 2L)) % 32767;
    }

    private static long a(Context context, long j10) {
        long j11 = c(context).getLong("next_rid", j10);
        if (j11 != j10) {
            long a10 = a(j11);
            c(context).edit().putLong("next_rid", a10).apply();
            return a10;
        }
        return j11;
    }

    public static void a(Context context) {
        f2488a = context.getSharedPreferences("cn.jpush.preferences.support.rid", 0);
    }

    public static synchronized long b(Context context) {
        long a10;
        synchronized (e.class) {
            a10 = a(context, -1L);
            if (a10 == -1) {
                a10 = a(Math.abs(new Random().nextInt(32767)));
                c(context).edit().putLong("next_rid", a10).apply();
            }
        }
        return a10;
    }

    private static SharedPreferences c(Context context) {
        if (f2488a == null) {
            a(context);
        }
        return f2488a;
    }
}
