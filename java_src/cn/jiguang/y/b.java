package cn.jiguang.y;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import cn.jiguang.o.d;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static Context f2787a = null;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f2788b = false;

    /* renamed from: c  reason: collision with root package name */
    private static b f2789c;

    /* renamed from: d  reason: collision with root package name */
    private static a f2790d;

    /* renamed from: e  reason: collision with root package name */
    private static Object f2791e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private static HandlerThread f2792f;

    /* renamed from: g  reason: collision with root package name */
    private static Handler f2793g;

    /* renamed from: h  reason: collision with root package name */
    private static String f2794h;

    /* renamed from: i  reason: collision with root package name */
    private static String f2795i;

    /* renamed from: j  reason: collision with root package name */
    private static String f2796j;

    /* renamed from: k  reason: collision with root package name */
    private static String f2797k;

    private b() {
    }

    public static b a(Context context) {
        if (f2789c == null) {
            f2789c = new b();
            f2787a = context;
            f();
            f2790d = new a(f2787a);
            a();
        }
        return f2789c;
    }

    public static void a() {
        Context context = null;
        try {
            Method method = Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]);
            method.setAccessible(true);
            context = (Context) method.invoke(null, new Object[0]);
        } catch (Exception e10) {
            cn.jiguang.al.a.d("MeizuIdManager", "ActivityThread:currentApplication --> " + e10.toString());
        }
        if (context != null) {
            PackageManager packageManager = context.getPackageManager();
            String g10 = d.g("rIjLIWp9yd1+l2BByOWYjPjGCBlvF2tDounrABnhodw=");
            if (packageManager != null && packageManager.resolveContentProvider(g10, 0) != null) {
                try {
                    Cursor query = context.getContentResolver().query(Uri.parse(d.g("SyfFpc71r1BITMlIo0m1Vt2cR3sdiPGnMd0WMSsF4yU8+J95KN/jHVtZShu2ONYO")), null, null, new String[]{"supported"}, null);
                    if (query != null) {
                        query.moveToFirst();
                        int columnIndex = query.getColumnIndex("value");
                        if (columnIndex >= 0) {
                            f2788b = "0".equals(query.getString(columnIndex));
                        } else {
                            f2788b = false;
                        }
                        query.close();
                    }
                } catch (Throwable unused) {
                    cn.jiguang.al.a.a("MeizuIdManager", "mz not support");
                }
                cn.jiguang.al.a.a("MeizuIdManager", "check meizu supported:" + f2788b);
            }
        }
        f2788b = false;
        cn.jiguang.al.a.a("MeizuIdManager", "check meizu supported:" + f2788b);
    }

    private void b(int i9) {
        String str;
        Message obtainMessage = f2793g.obtainMessage();
        obtainMessage.what = 11;
        Bundle bundle = new Bundle();
        if (i9 == 0) {
            str = "ggTIEepvzybHoO4C7/s5eQ==";
        } else if (i9 != 1) {
            if (i9 == 2) {
                str = "bRmfYSLDPlLJ9XQro1+/dQ==";
            }
            obtainMessage.setData(bundle);
            f2793g.sendMessage(obtainMessage);
        } else {
            str = "QlAKJNz4iTmDadRoCSAs4A==";
        }
        bundle.putString("type", d.g(str));
        obtainMessage.setData(bundle);
        f2793g.sendMessage(obtainMessage);
    }

    private static void f() {
        HandlerThread handlerThread = new HandlerThread("jg_mzdb_thread");
        f2792f = handlerThread;
        handlerThread.start();
        f2793g = new Handler(f2792f.getLooper()) { // from class: cn.jiguang.y.b.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 11) {
                    cn.jiguang.al.a.a("MeizuIdManager", "message type valid");
                    return;
                }
                try {
                    String unused = b.f2794h = b.f2790d.a(message.getData().getString("type"));
                } catch (Throwable th2) {
                    String unused2 = b.f2794h = "";
                    cn.jiguang.al.a.a("MeizuIdManager", "getID exception, " + th2.getMessage());
                }
                synchronized (b.f2791e) {
                    b.f2791e.notify();
                }
            }
        };
    }

    public String a(String str) {
        if (b()) {
            String str2 = f2796j;
            if (str2 != null) {
                return str2;
            }
            a(1);
            return f2796j;
        }
        return null;
    }

    public void a(int i9) {
        String str;
        String str2;
        synchronized (f2791e) {
            b(i9);
            long uptimeMillis = SystemClock.uptimeMillis();
            try {
                f2791e.wait(2000L);
            } catch (InterruptedException e10) {
                cn.jiguang.al.a.d("MeizuIdManager", "lock wait err: " + e10.getMessage());
            }
            if (SystemClock.uptimeMillis() - uptimeMillis >= 2000) {
                str = "MeizuIdManager";
                str2 = "query timeout";
            } else if (i9 == 0) {
                f2795i = f2794h;
                f2794h = null;
                str = "MeizuIdManager";
                str2 = "query aaid: " + f2795i;
            } else if (i9 == 1) {
                String str3 = f2794h;
                if (str3 == null) {
                    str = "MeizuIdManager";
                    str2 = "get ids-va failed";
                } else {
                    f2796j = str3;
                    f2794h = null;
                    str = "MeizuIdManager";
                    str2 = "query aaid: " + f2796j;
                }
            } else if (i9 == 2) {
                String str4 = f2794h;
                if (str4 == null) {
                    str = "MeizuIdManager";
                    str2 = "get ids-aa failed";
                } else {
                    f2797k = str4;
                    f2794h = null;
                    str = "MeizuIdManager";
                    str2 = "query aaid: " + f2797k;
                }
            }
            cn.jiguang.al.a.a(str, str2);
        }
    }

    public String b(String str) {
        if (b()) {
            String str2 = f2797k;
            if (str2 != null) {
                return str2;
            }
            a(2);
            return f2797k;
        }
        return null;
    }

    public boolean b() {
        return f2788b;
    }

    public String c() {
        if (b()) {
            String str = f2795i;
            if (str != null) {
                return str;
            }
            a(0);
            return f2795i;
        }
        return null;
    }
}
