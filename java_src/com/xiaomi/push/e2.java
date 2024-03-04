package com.xiaomi.push;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public class e2 {

    /* renamed from: a  reason: collision with root package name */
    private static i3 f36795a = new i3(true);

    /* renamed from: b  reason: collision with root package name */
    private static volatile int f36796b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static long f36797c = System.currentTimeMillis();

    /* renamed from: d  reason: collision with root package name */
    private static final Object f36798d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private static List<a> f36799e = Collections.synchronizedList(new ArrayList());

    /* renamed from: f  reason: collision with root package name */
    private static String f36800f = "";

    /* renamed from: g  reason: collision with root package name */
    private static uf.a f36801g = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f36802a;

        /* renamed from: b  reason: collision with root package name */
        public long f36803b;

        /* renamed from: c  reason: collision with root package name */
        public int f36804c;

        /* renamed from: d  reason: collision with root package name */
        public int f36805d;

        /* renamed from: e  reason: collision with root package name */
        public String f36806e;

        /* renamed from: f  reason: collision with root package name */
        public long f36807f;

        public a(String str, long j10, int i9, int i10, String str2, long j11) {
            this.f36802a = str;
            this.f36803b = j10;
            this.f36804c = i9;
            this.f36805d = i10;
            this.f36806e = str2;
            this.f36807f = j11;
        }

        public boolean a(a aVar) {
            return TextUtils.equals(aVar.f36802a, this.f36802a) && TextUtils.equals(aVar.f36806e, this.f36806e) && aVar.f36804c == this.f36804c && aVar.f36805d == this.f36805d && Math.abs(aVar.f36803b - this.f36803b) <= 5000;
        }
    }

    public static int a(Context context) {
        if (f36796b == -1) {
            f36796b = n(context);
        }
        return f36796b;
    }

    public static int b(String str) {
        try {
            return str.getBytes("UTF-8").length;
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes().length;
        }
    }

    private static long c(int i9, long j10, boolean z10, long j11, boolean z11) {
        if (z10 && z11) {
            long j12 = f36797c;
            f36797c = j11;
            if (j11 - j12 > 30000 && j10 > 1024) {
                return j10 * 2;
            }
        }
        return (j10 * (i9 == 0 ? 13 : 11)) / 10;
    }

    private static synchronized String e(Context context) {
        synchronized (e2.class) {
            if (TextUtils.isEmpty(f36800f)) {
                return "";
            }
            return f36800f;
        }
    }

    private static uf.a g(Context context) {
        uf.a aVar = f36801g;
        if (aVar != null) {
            return aVar;
        }
        uf.a aVar2 = new uf.a(context);
        f36801g = aVar2;
        return aVar2;
    }

    public static void h(Context context) {
        f36796b = n(context);
    }

    private static void i(Context context, String str, long j10, boolean z10, long j11) {
        int a10;
        boolean isEmpty;
        if (context == null || TextUtils.isEmpty(str) || !"com.xiaomi.xmsf".equals(context.getPackageName()) || "com.xiaomi.xmsf".equals(str) || -1 == (a10 = a(context))) {
            return;
        }
        synchronized (f36798d) {
            isEmpty = f36799e.isEmpty();
            l(new a(str, j11, a10, z10 ? 1 : 0, a10 == 0 ? e(context) : "", j10));
        }
        if (isEmpty) {
            f36795a.f(new f2(context), 5000L);
        }
    }

    public static void j(Context context, String str, long j10, boolean z10, boolean z11, long j11) {
        i(context, str, c(a(context), j10, z10, j11, z11), z10, j11);
    }

    private static void l(a aVar) {
        for (a aVar2 : f36799e) {
            if (aVar2.a(aVar)) {
                aVar2.f36807f += aVar.f36807f;
                return;
            }
        }
        f36799e.add(aVar);
    }

    public static synchronized void m(String str) {
        synchronized (e2.class) {
            if (!sf.e.r() && !TextUtils.isEmpty(str)) {
                f36800f = str;
            }
        }
    }

    private static int n(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return -1;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return -1;
            }
            return activeNetworkInfo.getType();
        } catch (Exception unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o(Context context, List<a> list) {
        try {
            synchronized (uf.a.f58415b) {
                SQLiteDatabase writableDatabase = g(context).getWritableDatabase();
                writableDatabase.beginTransaction();
                for (a aVar : list) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(PushConstants.PACKAGE_NAME, aVar.f36802a);
                    contentValues.put("message_ts", Long.valueOf(aVar.f36803b));
                    contentValues.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, Integer.valueOf(aVar.f36804c));
                    contentValues.put("bytes", Long.valueOf(aVar.f36807f));
                    contentValues.put("rcv", Integer.valueOf(aVar.f36805d));
                    contentValues.put("imsi", aVar.f36806e);
                    writableDatabase.insert("traffic", null, contentValues);
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
            }
        } catch (Throwable th2) {
            tf.c.o(th2);
        }
    }
}
