package cn.jiguang.av;

import android.content.Context;
import android.os.Bundle;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.as.d;
import cn.jiguang.az.h;
import cn.jiguang.internal.JConstants;
import java.util.Map;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f2130a = false;

    /* renamed from: b  reason: collision with root package name */
    public static int f2131b;

    public static void a(Context context) {
        JCoreManager.onEvent(context, JConstants.SDK_TYPE, 38, null, null, new Object[0]);
    }

    public static void a(Context context, int i9) {
        JCoreManager.onEvent(context, JConstants.SDK_TYPE, 57, null, null, Integer.valueOf(i9));
    }

    public static void a(Context context, long j10) {
        if (j10 > 0) {
            JCoreManager.onEvent(context, JConstants.SDK_TYPE, 37, null, null, Long.valueOf(j10));
        }
    }

    public static void a(Context context, long j10, String str, String str2) {
        JCoreManager.onEvent(context, JConstants.SDK_TYPE, 35, null, null, Long.valueOf(j10), str, str2);
    }

    public static void a(Context context, Bundle bundle) {
        if (bundle != null) {
            f2130a = bundle.getBoolean("foreground");
            int i9 = bundle.getInt("user_type");
            f2131b = i9;
            if (i9 == -1) {
                f2131b = f2130a ? 1 : 0;
            }
            d.c("JCoreManagerInternal", "changeForeGroundStat:" + f2130a + ", userActiveType:" + f2131b);
            if (f2130a) {
                if (h.a().f() >= 120) {
                    h.a().i();
                }
                cn.jiguang.e.a.b().b(context);
            }
        }
    }

    public static void a(Context context, Object obj) {
        JCoreManager.onEvent(context, JConstants.SDK_TYPE, 39, null, null, obj);
    }

    public static void a(Context context, String str) {
        JCoreManager.onEvent(context, JConstants.SDK_TYPE, 36, null, null, str);
    }

    public static void a(Context context, String str, int i9, int i10, long j10, long j11, byte[] bArr) {
        a(context, str, i9, i10, j10, j11, bArr, true);
    }

    private static void a(Context context, String str, int i9, int i10, long j10, long j11, byte[] bArr, boolean z10) {
        Bundle bundle = new Bundle();
        bundle.putInt("cmd", i9);
        bundle.putInt("ver", i10);
        bundle.putLong("rid", j10);
        bundle.putLong("timeout", j11);
        bundle.putByteArray("body", bArr);
        JCoreManager.onEvent(context, str, z10 ? 17 : 16, null, bundle, new Object[0]);
    }

    public static void a(Context context, String str, long j10) {
        JCoreManager.onEvent(context, JConstants.SDK_TYPE, 44, null, null, str, Long.valueOf(j10));
    }

    public static void a(Runnable runnable, int i9, int... iArr) {
        JCoreManager.onEvent(null, null, 83, null, null, runnable, Integer.valueOf(i9));
    }

    public static void a(Runnable runnable, int... iArr) {
        JCoreManager.onEvent(null, null, 78, null, null, runnable);
    }

    public static void a(String str) {
        JCoreManager.onEvent(null, null, 13, str, null, new Object[0]);
    }

    public static Map b(Context context) {
        Object onEvent = JCoreManager.onEvent(context, JConstants.SDK_TYPE, 45, null, null, new Object[0]);
        if (onEvent instanceof Map) {
            return (Map) onEvent;
        }
        return null;
    }

    public static void b(Context context, int i9) {
        JCoreManager.onEvent(context, JConstants.SDK_TYPE, 51, "", null, Integer.valueOf(i9));
    }

    public static void b(Context context, String str, int i9, int i10, long j10, long j11, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putInt("cmd", i9);
        bundle.putInt("ver", i10);
        bundle.putLong("rid", j10);
        bundle.putLong("timeout", 0L);
        bundle.putByteArray("body", bArr);
        bundle.putLong("uid", j11);
        JCoreManager.onEvent(context, str, 59, null, bundle, new Object[0]);
    }

    public static void b(Runnable runnable, int... iArr) {
        JCoreManager.onEvent(null, null, 75, null, null, runnable);
    }

    public static int c(Context context) {
        Object onEvent = JCoreManager.onEvent(context, JConstants.SDK_TYPE, 47, null, null, new Object[0]);
        if (onEvent instanceof Integer) {
            return ((Integer) onEvent).intValue();
        }
        return 1;
    }

    public static void c(Runnable runnable, int... iArr) {
        JCoreManager.onEvent(null, null, 77, null, null, runnable);
    }

    public static void d(Context context) {
        JCoreManager.onEvent(context, JConstants.SDK_TYPE, 48, null, null, new Object[0]);
    }

    public static void d(Runnable runnable, int... iArr) {
        JCoreManager.onEvent(null, null, 76, null, null, runnable);
    }
}
