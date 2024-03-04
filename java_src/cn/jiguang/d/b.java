package cn.jiguang.d;

import android.content.Context;
import android.text.TextUtils;
import cn.jiguang.as.d;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile Long f2539a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile Long f2540b;

    public static long a(Context context, long j10) {
        return (j10 + c(context)) / 1000;
    }

    public static boolean a(Context context) {
        String str;
        if (((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.c())).longValue() <= 0) {
            str = "isValidRegistered uid <= 0";
        } else if (!TextUtils.isEmpty((String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.d()))) {
            return true;
        } else {
            str = "isValidRegistered regId is empty";
        }
        d.a("SpHelper", str);
        return false;
    }

    public static long b(Context context) {
        return a(context, System.currentTimeMillis());
    }

    public static void b(Context context, long j10) {
        if (j10 > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            f2539a = Long.valueOf(j10);
            f2540b = Long.valueOf(currentTimeMillis);
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.h().a((cn.jiguang.g.a<Long>) Long.valueOf(j10)), cn.jiguang.g.a.g().a((cn.jiguang.g.a<Long>) Long.valueOf(currentTimeMillis)));
        }
    }

    public static long c(Context context) {
        if (f2539a == null || f2540b == null) {
            long longValue = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.g())).longValue();
            long longValue2 = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.h())).longValue();
            if (longValue == 0 || longValue2 == 0) {
                return 0L;
            }
            f2539a = Long.valueOf(longValue2);
            f2540b = Long.valueOf(longValue);
            return longValue2 - longValue;
        }
        return f2539a.longValue() - f2540b.longValue();
    }
}
