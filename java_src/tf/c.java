package tf;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;
import sf.e;
/* loaded from: classes5.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private static int f58140a = 2;

    /* renamed from: b  reason: collision with root package name */
    private static Context f58141b = null;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f58142c = false;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f58143d = false;

    /* renamed from: e  reason: collision with root package name */
    private static String f58144e = "XMPush-" + Process.myPid();

    /* renamed from: f  reason: collision with root package name */
    private static tf.a f58145f = new a();

    /* renamed from: g  reason: collision with root package name */
    private static final HashMap<Integer, Long> f58146g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private static final HashMap<Integer, String> f58147h = new HashMap<>();

    /* renamed from: i  reason: collision with root package name */
    private static final Integer f58148i = -1;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicInteger f58149j = new AtomicInteger(1);

    /* loaded from: classes5.dex */
    static class a implements tf.a {

        /* renamed from: a  reason: collision with root package name */
        private String f58150a = c.f58144e;

        a() {
        }

        @Override // tf.a
        public void a(String str, Throwable th2) {
            Log.v(this.f58150a, str, th2);
        }

        @Override // tf.a
        public void log(String str) {
            Log.v(this.f58150a, str);
        }
    }

    public static int a() {
        return f58140a;
    }

    public static Integer b(String str) {
        if (f58140a <= 1) {
            Integer valueOf = Integer.valueOf(f58149j.incrementAndGet());
            f58146g.put(valueOf, Long.valueOf(System.currentTimeMillis()));
            f58147h.put(valueOf, str);
            tf.a aVar = f58145f;
            aVar.log(str + " starts");
            return valueOf;
        }
        return f58148i;
    }

    private static String d(String str) {
        return q() + str;
    }

    public static String e(String str, String str2) {
        return "[" + str + "] " + str2;
    }

    public static void f(int i9) {
        if (i9 < 0 || i9 > 5) {
            g(2, "set log level as " + i9);
        }
        f58140a = i9;
    }

    public static void g(int i9, String str) {
        if (i9 >= f58140a) {
            f58145f.log(str);
        }
    }

    public static void h(int i9, String str, Throwable th2) {
        if (i9 >= f58140a) {
            f58145f.a(str, th2);
        }
    }

    public static void i(int i9, Throwable th2) {
        if (i9 >= f58140a) {
            f58145f.a("", th2);
        }
    }

    public static void j(Context context) {
        f58141b = context;
        if (e.i(context)) {
            f58142c = true;
        }
        if (e.h()) {
            f58143d = true;
        }
    }

    public static void k(Integer num) {
        if (f58140a <= 1) {
            HashMap<Integer, Long> hashMap = f58146g;
            if (hashMap.containsKey(num)) {
                long currentTimeMillis = System.currentTimeMillis() - hashMap.remove(num).longValue();
                tf.a aVar = f58145f;
                aVar.log(f58147h.remove(num) + " ends in " + currentTimeMillis + " ms");
            }
        }
    }

    public static void l(String str) {
        g(2, d(str));
    }

    public static void m(String str, String str2) {
        g(2, r(str, str2));
    }

    public static void n(String str, Throwable th2) {
        h(4, d(str), th2);
    }

    public static void o(Throwable th2) {
        i(4, th2);
    }

    public static void p(tf.a aVar) {
        f58145f = aVar;
    }

    private static String q() {
        return "[Tid:" + Thread.currentThread().getId() + "] ";
    }

    private static String r(String str, String str2) {
        return q() + e(str, str2);
    }

    public static void s(String str) {
        g(0, d(str));
    }

    public static void t(String str) {
        g(1, d(str));
    }

    public static void u(String str) {
        g(4, d(str));
    }

    public static void v(String str) {
        if (!f58142c) {
            Log.w(f58144e, d(str));
            if (f58143d) {
                return;
            }
        }
        l(str);
    }
}
