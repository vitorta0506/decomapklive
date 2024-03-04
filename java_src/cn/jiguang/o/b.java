package cn.jiguang.o;

import android.content.Context;
import android.content.SharedPreferences;
import cn.jiguang.f.g;
import java.util.HashMap;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f2697a;

    /* renamed from: b  reason: collision with root package name */
    private static HashMap<String, Long> f2698b;

    public static boolean A(Context context, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        long f10 = f(context, str);
        long b10 = cn.jiguang.i.a.a().b("JAppAll");
        boolean z10 = currentTimeMillis - f10 > b10;
        cn.jiguang.al.a.c("JCommonConfig", "is " + str + " businessTime:" + z10 + ",curTime:" + currentTimeMillis + ",lastBusinessTime:" + f10 + ",businessInterval:" + b10);
        return z10;
    }

    public static boolean B(Context context, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        long i9 = i(context, str);
        long c10 = cn.jiguang.i.a.a().c("JAppAll");
        boolean z10 = currentTimeMillis - i9 > c10;
        cn.jiguang.al.a.c("JCommonConfig", "is " + str + " reportTime:" + z10 + ",curTime:" + currentTimeMillis + ",lastReportTime:" + i9 + ",reportInterval:" + c10);
        return z10;
    }

    private static String a(String str, String str2) {
        return str + str2;
    }

    private static void a() {
        HashMap<String, Long> hashMap = new HashMap<>();
        f2698b = hashMap;
        hashMap.put(a("JDataConfigManager", "_bi"), 86400000L);
        f2698b.put(a("JWakeReport", "_ri"), 3600000L);
    }

    public static void a(Context context) {
        String n9 = n(context);
        m(context).edit().putInt(n9, m(context).getInt(n9, 0) + 1).apply();
    }

    public static void a(Context context, String str, int i9) {
        m(context).edit().putInt(a("JType", "ktsv_" + str), i9).apply();
    }

    public static void a(Context context, String str, long j10) {
        if (j10 < 0) {
            return;
        }
        if (!str.contains("JLocation") || j10 <= j(context, "JLocationv2")) {
            String a10 = a(str, "_bi");
            cn.jiguang.al.a.c("JCommonConfig", "update " + str + " businessInterval:" + j10);
            m(context).edit().putLong(a10, j10).apply();
        }
    }

    public static void a(Context context, String str, String str2) {
        m(context).edit().putString(a("JType", str), str2).apply();
    }

    public static void a(Context context, String str, boolean z10) {
        m(context).edit().putBoolean(a(str, "_ace"), z10).apply();
    }

    public static void a(Context context, boolean z10) {
        m(context).edit().putBoolean(a("user_wake", "_aue"), z10).apply();
    }

    public static boolean a(int i9) {
        boolean z10 = !d.e() && cn.jiguang.i.a.a().c(i9) == 0;
        cn.jiguang.al.a.c("JCommonConfig", "configId : " + i9 + ", isBackgroundBusiness : " + z10);
        return z10;
    }

    public static boolean a(Context context, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        long f10 = f(context, str);
        long b10 = cn.jiguang.i.a.a().b(str);
        boolean z10 = currentTimeMillis - f10 > b10;
        cn.jiguang.al.a.c("JCommonConfig", "is " + str + " businessTime:" + z10 + ",curTime:" + currentTimeMillis + ",lastBusinessTime:" + f10 + ",businessInterval:" + b10);
        return z10;
    }

    private static long b(String str, String str2) {
        try {
            return f2698b.get(a(str, str2)).longValue();
        } catch (NullPointerException unused) {
            return 0L;
        }
    }

    public static void b(Context context, String str, long j10) {
        if (j10 < 0) {
            return;
        }
        String a10 = a(str, "_ri");
        cn.jiguang.al.a.c("JCommonConfig", "update " + str + " reportInterval:" + j10);
        m(context).edit().putLong(a10, j10).apply();
    }

    public static void b(Context context, String str, boolean z10) {
        m(context).edit().putBoolean(a(str, "_aue"), z10).apply();
    }

    public static void b(Context context, boolean z10) {
        m(context).edit().putBoolean("JArponceEnable", z10).apply();
    }

    public static boolean b(Context context) {
        return m(context).getBoolean(a("user_wake", "_aue"), true);
    }

    public static boolean b(Context context, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        long f10 = f(context, str);
        long g10 = g(context, str);
        boolean z10 = currentTimeMillis - f10 > g10;
        cn.jiguang.al.a.c("JCommonConfig", "is " + str + " businessTime:" + z10 + ",curTime:" + currentTimeMillis + ",lastBusinessTime:" + f10 + ",businessInterval:" + g10);
        return z10;
    }

    public static String c(Context context) {
        return m(context).getString("JWakeLocalState", "");
    }

    public static boolean c(Context context, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        long i9 = i(context, str);
        long c10 = cn.jiguang.i.a.a().c(str);
        boolean z10 = currentTimeMillis - i9 > c10;
        cn.jiguang.al.a.c("JCommonConfig", "is " + str + " reportTime:" + z10 + ",curTime:" + currentTimeMillis + ",lastReportTime:" + i9 + ",reportInterval:" + c10);
        return z10;
    }

    public static boolean d(Context context) {
        return m(context).getBoolean("JArponceEnable", false);
    }

    public static boolean d(Context context, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        long i9 = i(context, str);
        long j10 = j(context, str);
        boolean z10 = currentTimeMillis - i9 > j10;
        cn.jiguang.al.a.c("JCommonConfig", "is " + str + " reportTime:" + z10 + ",curTime:" + currentTimeMillis + ",lastReportTime:" + i9 + ",reportInterval:" + j10);
        return z10;
    }

    public static String e(Context context) {
        return m(context).getString(a("JLocation", "info"), "");
    }

    public static void e(Context context, String str) {
        String a10 = a(str, "_blt");
        long currentTimeMillis = System.currentTimeMillis();
        cn.jiguang.al.a.c("JCommonConfig", "update " + str + " lastBusinessTime");
        m(context).edit().putLong(a10, currentTimeMillis).apply();
    }

    public static long f(Context context, String str) {
        return m(context).getLong(a(str, "_blt"), 0L);
    }

    public static String f(Context context) {
        return m(context).getString("JNotificationState", "");
    }

    public static long g(Context context, String str) {
        return m(context).getLong(a(str, "_bi"), b(str, "_bi"));
    }

    public static String g(Context context) {
        return m(context).getString("JDevicesession", "");
    }

    public static String h(Context context) {
        return m(context).getString("JDeviceIds", "");
    }

    public static void h(Context context, String str) {
        cn.jiguang.al.a.c("JCommonConfig", "update " + str + " lastReportTime");
        long currentTimeMillis = System.currentTimeMillis();
        m(context).edit().putLong(a(str, "_rlt"), currentTimeMillis).apply();
    }

    public static long i(Context context, String str) {
        return m(context).getLong(a(str, "_rlt"), 0L);
    }

    public static String i(Context context) {
        return m(context).getString("JDeviceIdsMap", "");
    }

    public static long j(Context context, String str) {
        return m(context).getLong(a(str, "_ri"), b(str, "_ri"));
    }

    public static String j(Context context) {
        return m(context).getString("device_ids_map", "");
    }

    public static String k(Context context) {
        return m(context).getString("lo_cf", "");
    }

    public static boolean k(Context context, String str) {
        return m(context).getBoolean(a(str, "_ace"), !str.equals("JArp"));
    }

    private static void l(Context context) {
        f2697a = context.getSharedPreferences("cn.jiguang.common", 0);
        a();
    }

    public static boolean l(Context context, String str) {
        return m(context).getBoolean(a(str, "_aue"), true);
    }

    private static SharedPreferences m(Context context) {
        if (f2697a == null) {
            l(context);
        }
        return f2697a;
    }

    public static void m(Context context, String str) {
        if (g.a(str)) {
            return;
        }
        String n9 = n(context);
        if (n9 != null && !n9.equals(str)) {
            m(context).edit().remove(n9).apply();
        }
        m(context).edit().putString("current_time_key", str).apply();
    }

    public static int n(Context context, String str) {
        if (g.a(str)) {
            return Integer.MAX_VALUE;
        }
        return m(context).getInt(str, 0);
    }

    private static String n(Context context) {
        return m(context).getString("current_time_key", null);
    }

    public static void o(Context context, String str) {
        m(context).edit().putString("JWakeLocalState", str).apply();
    }

    public static String p(Context context, String str) {
        return m(context).getString(a("JType", str), "-1,-1");
    }

    public static int q(Context context, String str) {
        return m(context).getInt(a("JType", "ktsv_" + str), 0);
    }

    public static void r(Context context, String str) {
        m(context).edit().putBoolean(a("JArp", str), true).apply();
    }

    public static boolean s(Context context, String str) {
        return m(context).getBoolean(a("JArp", str), false);
    }

    public static void t(Context context, String str) {
        m(context).edit().putString(a("JLocation", "info"), str).apply();
    }

    public static void u(Context context, String str) {
        m(context).edit().putString("JNotificationState", str).apply();
    }

    public static void v(Context context, String str) {
        cn.jiguang.al.a.c("JCommonConfig", "update deviceSession");
        m(context).edit().putString("JDevicesession", str).apply();
    }

    public static void w(Context context, String str) {
        m(context).edit().putString("JDeviceIds", str).apply();
    }

    public static void x(Context context, String str) {
        m(context).edit().putString("JDeviceIdsMap", str).apply();
    }

    public static void y(Context context, String str) {
        m(context).edit().putString("device_ids_map", str).apply();
    }

    public static void z(Context context, String str) {
        m(context).edit().putString("lo_cf", str).apply();
    }
}
