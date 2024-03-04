package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes4.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f30677a = true;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f30678b = true;

    /* renamed from: c  reason: collision with root package name */
    private static SimpleDateFormat f30679c = null;

    /* renamed from: d  reason: collision with root package name */
    private static int f30680d = 30720;

    /* renamed from: e  reason: collision with root package name */
    private static StringBuilder f30681e = null;

    /* renamed from: f  reason: collision with root package name */
    private static StringBuilder f30682f = null;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f30683g = false;

    /* renamed from: h  reason: collision with root package name */
    private static a f30684h = null;

    /* renamed from: i  reason: collision with root package name */
    private static String f30685i = null;

    /* renamed from: j  reason: collision with root package name */
    private static String f30686j = null;

    /* renamed from: k  reason: collision with root package name */
    private static Context f30687k = null;

    /* renamed from: l  reason: collision with root package name */
    private static String f30688l = null;

    /* renamed from: m  reason: collision with root package name */
    private static boolean f30689m = false;

    /* renamed from: n  reason: collision with root package name */
    private static boolean f30690n = false;

    /* renamed from: o  reason: collision with root package name */
    private static ExecutorService f30691o;

    /* renamed from: p  reason: collision with root package name */
    private static int f30692p;

    /* renamed from: q  reason: collision with root package name */
    private static final Object f30693q = new Object();

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f30697a;

        /* renamed from: b  reason: collision with root package name */
        private File f30698b;

        /* renamed from: c  reason: collision with root package name */
        private String f30699c;

        /* renamed from: d  reason: collision with root package name */
        private long f30700d;

        /* renamed from: e  reason: collision with root package name */
        private long f30701e = 30720;

        public a(String str) {
            if (str == null || str.equals("")) {
                return;
            }
            this.f30699c = str;
            this.f30697a = a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a() {
            try {
                File file = new File(this.f30699c);
                this.f30698b = file;
                if (file.exists() && !this.f30698b.delete()) {
                    this.f30697a = false;
                    return false;
                } else if (this.f30698b.createNewFile()) {
                    return true;
                } else {
                    this.f30697a = false;
                    return false;
                }
            } catch (Throwable th2) {
                x.a(th2);
                this.f30697a = false;
                return false;
            }
        }

        public final boolean a(String str) {
            byte[] bytes;
            if (!this.f30697a) {
                return false;
            }
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(this.f30698b, true);
                try {
                    fileOutputStream2.write(str.getBytes("UTF-8"));
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                    this.f30700d += bytes.length;
                    this.f30697a = true;
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused) {
                    }
                    return true;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    try {
                        x.a(th);
                        this.f30697a = false;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        return false;
                    } catch (Throwable th3) {
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    static {
        try {
            f30679c = new SimpleDateFormat("MM-dd HH:mm:ss");
        } catch (Throwable th2) {
            x.b(th2.getCause());
        }
    }

    public static synchronized void a(Context context) {
        synchronized (y.class) {
            if (f30689m || context == null || !f30677a) {
                return;
            }
            try {
                f30691o = Executors.newSingleThreadExecutor();
                f30682f = new StringBuilder(0);
                f30681e = new StringBuilder(0);
                f30687k = context;
                f30685i = com.tencent.bugly.crashreport.common.info.a.a(context).f30195d;
                f30686j = "";
                f30688l = f30687k.getFilesDir().getPath() + "/buglylog_" + f30685i + "_" + f30686j + ".txt";
                f30692p = Process.myPid();
            } catch (Throwable unused) {
            }
            f30689m = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void c(String str, String str2, String str3) {
        synchronized (y.class) {
            if (f30678b) {
                d(str, str2, str3);
            } else {
                e(str, str2, str3);
            }
        }
    }

    private static synchronized void d(String str, String str2, String str3) {
        synchronized (y.class) {
            String a10 = a(str, str2, str3, Process.myTid());
            synchronized (f30693q) {
                f30682f.append(a10);
                if (f30682f.length() >= f30680d) {
                    StringBuilder sb2 = f30682f;
                    f30682f = sb2.delete(0, sb2.indexOf("\u0001\r\n") + 1);
                }
            }
        }
    }

    private static synchronized void e(String str, String str2, String str3) {
        synchronized (y.class) {
            String a10 = a(str, str2, str3, Process.myTid());
            synchronized (f30693q) {
                try {
                    f30682f.append(a10);
                } catch (Throwable unused) {
                }
                if (f30682f.length() <= f30680d) {
                    return;
                }
                if (f30683g) {
                    return;
                }
                f30683g = true;
                a aVar = f30684h;
                if (aVar != null) {
                    if (aVar.f30698b == null || f30684h.f30698b.length() + f30682f.length() > f30684h.f30701e) {
                        f30684h.a();
                    }
                } else {
                    f30684h = new a(f30688l);
                }
                if (f30684h.a(f30682f.toString())) {
                    f30682f.setLength(0);
                    f30683g = false;
                }
            }
        }
    }

    private static byte[] b() {
        if (f30677a) {
            StringBuilder sb2 = new StringBuilder();
            synchronized (f30693q) {
                a aVar = f30684h;
                if (aVar != null && aVar.f30697a && f30684h.f30698b != null && f30684h.f30698b.length() > 0) {
                    sb2.append(z.a(f30684h.f30698b, 30720, true));
                }
                StringBuilder sb3 = f30682f;
                if (sb3 != null && sb3.length() > 0) {
                    sb2.append(f30682f.toString());
                }
            }
            return z.a((File) null, sb2.toString(), "BuglyLog.txt");
        }
        return null;
    }

    public static void a(int i9) {
        synchronized (f30693q) {
            f30680d = i9;
            if (i9 < 0) {
                f30680d = 0;
            } else if (i9 > 30720) {
                f30680d = 30720;
            }
        }
    }

    public static void a(String str, String str2, Throwable th2) {
        if (th2 == null) {
            return;
        }
        String message = th2.getMessage();
        if (message == null) {
            message = "";
        }
        a(str, str2, message + '\n' + z.b(th2));
    }

    public static synchronized void a(final String str, final String str2, final String str3) {
        synchronized (y.class) {
            if (f30689m && f30677a) {
                try {
                    f30691o.execute(new Runnable() { // from class: com.tencent.bugly.proguard.y.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            y.c(str, str2, str3);
                        }
                    });
                } catch (Exception e10) {
                    x.b(e10);
                }
            }
        }
    }

    private static String a(String str, String str2, String str3, long j10) {
        String date;
        f30681e.setLength(0);
        if (str3.length() > 30720) {
            str3 = str3.substring(str3.length() - 30720, str3.length() - 1);
        }
        Date date2 = new Date();
        SimpleDateFormat simpleDateFormat = f30679c;
        if (simpleDateFormat != null) {
            date = simpleDateFormat.format(date2);
        } else {
            date = date2.toString();
        }
        StringBuilder sb2 = f30681e;
        sb2.append(date);
        sb2.append(" ");
        sb2.append(f30692p);
        sb2.append(" ");
        sb2.append(j10);
        sb2.append(" ");
        sb2.append(str);
        sb2.append(" ");
        sb2.append(str2);
        sb2.append(": ");
        sb2.append(str3);
        sb2.append("\u0001\r\n");
        return f30681e.toString();
    }

    public static byte[] a() {
        if (f30678b) {
            if (f30677a) {
                return z.a((File) null, f30682f.toString(), "BuglyLog.txt");
            }
            return null;
        }
        return b();
    }
}
