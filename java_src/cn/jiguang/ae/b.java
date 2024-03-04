package cn.jiguang.ae;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static Context f1834a = null;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f1835b = false;

    /* renamed from: c  reason: collision with root package name */
    private static b f1836c;

    /* renamed from: d  reason: collision with root package name */
    private static a f1837d;

    /* renamed from: e  reason: collision with root package name */
    private static Object f1838e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private static HandlerThread f1839f;

    /* renamed from: g  reason: collision with root package name */
    private static Handler f1840g;

    /* renamed from: h  reason: collision with root package name */
    private static String f1841h;

    /* renamed from: i  reason: collision with root package name */
    private static String f1842i;

    /* renamed from: j  reason: collision with root package name */
    private static String f1843j;

    /* renamed from: k  reason: collision with root package name */
    private static String f1844k;

    private b() {
    }

    public static b a(Context context) {
        if (f1836c == null) {
            f1836c = new b();
            f1834a = context;
            f();
            f1837d = new a(f1834a);
            a();
        }
        return f1836c;
    }

    public static String a(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
        } catch (Throwable unused) {
            return str2;
        }
    }

    public static void a() {
        f1835b = "1".equals(a("persist.sys.identifierid.supported", "0"));
    }

    private void b(int i9, String str) {
        Message obtainMessage = f1840g.obtainMessage();
        obtainMessage.what = 11;
        Bundle bundle = new Bundle();
        bundle.putInt("type", i9);
        if (i9 == 1 || i9 == 2) {
            bundle.putString("appid", str);
        }
        obtainMessage.setData(bundle);
        f1840g.sendMessage(obtainMessage);
    }

    private static void f() {
        HandlerThread handlerThread = new HandlerThread("jg_vvdb_thread");
        f1839f = handlerThread;
        handlerThread.start();
        f1840g = new Handler(f1839f.getLooper()) { // from class: cn.jiguang.ae.b.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 11) {
                    cn.jiguang.al.a.a("VivoIdManager", "message type valid");
                    return;
                }
                try {
                    String unused = b.f1841h = b.f1837d.a(message.getData().getInt("type"), message.getData().getString("appid"));
                } catch (Throwable th2) {
                    String unused2 = b.f1841h = "";
                    cn.jiguang.al.a.d("VivoIdManager", "vv getIds, exception" + th2.getMessage());
                }
                synchronized (b.f1838e) {
                    b.f1838e.notify();
                }
            }
        };
    }

    public String a(String str) {
        if (b()) {
            String str2 = f1843j;
            if (str2 != null) {
                return str2;
            }
            a(1, str);
            return f1843j;
        }
        return null;
    }

    public void a(int i9, String str) {
        String str2;
        String str3;
        synchronized (f1838e) {
            b(i9, str);
            long uptimeMillis = SystemClock.uptimeMillis();
            try {
                f1838e.wait(2000L);
            } catch (InterruptedException e10) {
                cn.jiguang.al.a.d("VivoIdManager", "lock wait error: " + e10.getMessage());
            }
            if (SystemClock.uptimeMillis() - uptimeMillis < 2000) {
                if (i9 == 0) {
                    f1842i = f1841h;
                } else if (i9 == 1) {
                    String str4 = f1841h;
                    if (str4 == null) {
                        str2 = "VivoIdManager";
                        str3 = "get vaid failed";
                    } else {
                        f1843j = str4;
                    }
                } else if (i9 == 2) {
                    String str5 = f1841h;
                    if (str5 == null) {
                        str2 = "VivoIdManager";
                        str3 = "get aaid failed";
                    } else {
                        f1844k = str5;
                    }
                }
                f1841h = null;
            } else {
                str2 = "VivoIdManager";
                str3 = "query timeout";
            }
            cn.jiguang.al.a.a(str2, str3);
        }
    }

    public String b(String str) {
        if (b()) {
            String str2 = f1844k;
            if (str2 != null) {
                return str2;
            }
            a(2, str);
            return f1844k;
        }
        return null;
    }

    public boolean b() {
        return f1835b;
    }

    public String c() {
        if (b()) {
            String str = f1842i;
            if (str != null) {
                return str;
            }
            a(0, (String) null);
            return f1842i;
        }
        return null;
    }
}
