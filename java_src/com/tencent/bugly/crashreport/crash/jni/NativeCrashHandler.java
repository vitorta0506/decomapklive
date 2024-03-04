package com.tencent.bugly.crashreport.crash.jni;

import android.content.Context;
import android.os.Build;
import com.facebook.internal.ServerProtocol;
import com.tencent.bugly.Bugly;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.io.File;
/* loaded from: classes4.dex */
public class NativeCrashHandler implements com.tencent.bugly.crashreport.a {

    /* renamed from: a  reason: collision with root package name */
    private static NativeCrashHandler f30410a = null;

    /* renamed from: b  reason: collision with root package name */
    private static int f30411b = 1;

    /* renamed from: m  reason: collision with root package name */
    private static boolean f30412m = false;

    /* renamed from: n  reason: collision with root package name */
    private static boolean f30413n = false;

    /* renamed from: p  reason: collision with root package name */
    private static boolean f30414p = true;

    /* renamed from: c  reason: collision with root package name */
    private final Context f30415c;

    /* renamed from: d  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.info.a f30416d;

    /* renamed from: e  reason: collision with root package name */
    private final w f30417e;

    /* renamed from: f  reason: collision with root package name */
    private NativeExceptionHandler f30418f;

    /* renamed from: g  reason: collision with root package name */
    private String f30419g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f30420h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f30421i = false;

    /* renamed from: j  reason: collision with root package name */
    private boolean f30422j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f30423k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f30424l = false;

    /* renamed from: o  reason: collision with root package name */
    private com.tencent.bugly.crashreport.crash.b f30425o;

    private NativeCrashHandler(Context context, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.crash.b bVar, w wVar, boolean z10, String str) {
        this.f30415c = z.a(context);
        try {
            if (z.a(str)) {
                str = context.getDir("bugly", 0).getAbsolutePath();
            }
        } catch (Throwable unused) {
            str = "/data/data/" + com.tencent.bugly.crashreport.common.info.a.a(context).f30194c + "/app_bugly";
        }
        this.f30425o = bVar;
        this.f30419g = str;
        this.f30416d = aVar;
        this.f30417e = wVar;
        this.f30420h = z10;
        this.f30418f = new a(context, aVar, bVar, com.tencent.bugly.crashreport.common.strategy.a.a());
    }

    public static synchronized NativeCrashHandler getInstance(Context context, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.crash.b bVar, com.tencent.bugly.crashreport.common.strategy.a aVar2, w wVar, boolean z10, String str) {
        NativeCrashHandler nativeCrashHandler;
        synchronized (NativeCrashHandler.class) {
            if (f30410a == null) {
                f30410a = new NativeCrashHandler(context, aVar, bVar, wVar, z10, str);
            }
            nativeCrashHandler = f30410a;
        }
        return nativeCrashHandler;
    }

    public static boolean isShouldHandleInJava() {
        return f30414p;
    }

    public static void setShouldHandleInJava(boolean z10) {
        f30414p = z10;
        NativeCrashHandler nativeCrashHandler = f30410a;
        if (nativeCrashHandler != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(z10);
            nativeCrashHandler.a(999, sb2.toString());
        }
    }

    public boolean appendLogToNative(String str, String str2, String str3) {
        if ((this.f30421i || this.f30422j) && f30412m && str != null && str2 != null && str3 != null) {
            try {
                if (this.f30422j) {
                    return appendNativeLog(str, str2, str3);
                }
                Boolean bool = (Boolean) z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "appendNativeLog", null, new Class[]{String.class, String.class, String.class}, new Object[]{str, str2, str3});
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (UnsatisfiedLinkError unused) {
                f30412m = false;
            } catch (Throwable th2) {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }

    protected native boolean appendNativeLog(String str, String str2, String str3);

    protected native boolean appendWholeNativeLog(String str);

    public void checkUploadRecordCrash() {
        this.f30417e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.1
            @Override // java.lang.Runnable
            public final void run() {
                if (!z.a(NativeCrashHandler.this.f30415c, "native_record_lock", 10000L)) {
                    x.a("[Native] Failed to lock file for handling native crash record.", new Object[0]);
                    return;
                }
                if (!NativeCrashHandler.f30414p) {
                    NativeCrashHandler.this.a(999, Bugly.SDK_IS_DEV);
                }
                CrashDetailBean a10 = b.a(NativeCrashHandler.this.f30415c, NativeCrashHandler.this.f30419g, NativeCrashHandler.this.f30418f);
                if (a10 != null) {
                    x.a("[Native] Get crash from native record.", new Object[0]);
                    if (!NativeCrashHandler.this.f30425o.a(a10)) {
                        NativeCrashHandler.this.f30425o.a(a10, 3000L, false);
                    }
                    b.a(false, NativeCrashHandler.this.f30419g);
                }
                NativeCrashHandler.this.a();
                z.b(NativeCrashHandler.this.f30415c, "native_record_lock");
            }
        });
    }

    public void dumpAnrNativeStack() {
        a(19, "1");
    }

    public void enableCatchAnrTrace() {
        int i9 = Build.VERSION.SDK_INT;
        if (i9 > 30 || i9 < 23) {
            return;
        }
        f30411b |= 2;
    }

    public boolean filterSigabrtSysLog() {
        return a(998, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
    }

    public synchronized String getDumpFilePath() {
        return this.f30419g;
    }

    public String getLogFromNative() {
        if ((this.f30421i || this.f30422j) && f30412m) {
            try {
                if (this.f30422j) {
                    return getNativeLog();
                }
                return (String) z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "getNativeLog", null, null, null);
            } catch (UnsatisfiedLinkError unused) {
                f30412m = false;
                return null;
            } catch (Throwable th2) {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
                return null;
            }
        }
        return null;
    }

    public NativeExceptionHandler getNativeExceptionHandler() {
        return this.f30418f;
    }

    protected native String getNativeKeyValueList();

    protected native String getNativeLog();

    public boolean isEnableCatchAnrTrace() {
        return (f30411b & 2) == 2;
    }

    public synchronized boolean isUserOpened() {
        return this.f30424l;
    }

    public synchronized void onStrategyChanged(StrategyBean strategyBean) {
        if (strategyBean != null) {
            boolean z10 = strategyBean.f30225e;
            if (z10 != this.f30423k) {
                x.d("server native changed to %b", Boolean.valueOf(z10));
            }
        }
        boolean z11 = com.tencent.bugly.crashreport.common.strategy.a.a().c().f30225e && this.f30424l;
        if (z11 != this.f30423k) {
            x.a("native changed to %b", Boolean.valueOf(z11));
            b(z11);
        }
    }

    public boolean putKeyValueToNative(String str, String str2) {
        if ((this.f30421i || this.f30422j) && f30412m && str != null && str2 != null) {
            try {
                if (this.f30422j) {
                    return putNativeKeyValue(str, str2);
                }
                Boolean bool = (Boolean) z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "putNativeKeyValue", null, new Class[]{String.class, String.class}, new Object[]{str, str2});
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (UnsatisfiedLinkError unused) {
                f30412m = false;
            } catch (Throwable th2) {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }

    protected native boolean putNativeKeyValue(String str, String str2);

    protected native String regist(String str, boolean z10, int i9);

    public void removeEmptyNativeRecordFiles() {
        b.c(this.f30419g);
    }

    protected native String removeNativeKeyValue(String str);

    public synchronized void setDumpFilePath(String str) {
        this.f30419g = str;
    }

    public boolean setNativeAppChannel(String str) {
        return a(12, str);
    }

    public boolean setNativeAppPackage(String str) {
        return a(13, str);
    }

    public boolean setNativeAppVersion(String str) {
        return a(10, str);
    }

    protected native void setNativeInfo(int i9, String str);

    @Override // com.tencent.bugly.crashreport.a
    public boolean setNativeIsAppForeground(boolean z10) {
        return a(14, z10 ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : Bugly.SDK_IS_DEV);
    }

    public boolean setNativeLaunchTime(long j10) {
        try {
            return a(15, String.valueOf(j10));
        } catch (NumberFormatException e10) {
            if (x.a(e10)) {
                return false;
            }
            e10.printStackTrace();
            return false;
        }
    }

    public boolean setNativeUserId(String str) {
        return a(11, str);
    }

    public synchronized void setUserOpened(boolean z10) {
        c(z10);
        boolean isUserOpened = isUserOpened();
        com.tencent.bugly.crashreport.common.strategy.a a10 = com.tencent.bugly.crashreport.common.strategy.a.a();
        if (a10 != null) {
            isUserOpened = isUserOpened && a10.c().f30225e;
        }
        if (isUserOpened != this.f30423k) {
            x.a("native changed to %b", Boolean.valueOf(isUserOpened));
            b(isUserOpened);
        }
    }

    public synchronized void startNativeMonitor() {
        if (!this.f30422j && !this.f30421i) {
            String str = "Bugly";
            boolean z10 = !z.a(this.f30416d.f30204m);
            com.tencent.bugly.crashreport.common.info.a aVar = this.f30416d;
            String str2 = aVar.f30204m;
            if (z10) {
                str = str2;
            } else {
                aVar.getClass();
            }
            boolean a10 = a(str, z10);
            this.f30422j = a10;
            if (a10 || this.f30421i) {
                a(this.f30420h);
                if (f30412m) {
                    setNativeAppVersion(this.f30416d.f30201j);
                    setNativeAppChannel(this.f30416d.f30203l);
                    setNativeAppPackage(this.f30416d.f30194c);
                    setNativeUserId(this.f30416d.g());
                    setNativeIsAppForeground(this.f30416d.a());
                    setNativeLaunchTime(this.f30416d.f30180a);
                }
                return;
            }
            return;
        }
        a(this.f30420h);
    }

    protected native void testCrash();

    public void testNativeCrash() {
        if (!this.f30422j) {
            x.d("[Native] Bugly SO file has not been load.", new Object[0]);
        } else {
            testCrash();
        }
    }

    protected native String unregist();

    private synchronized void c() {
        if (!this.f30423k) {
            x.d("[Native] Native crash report has already unregistered.", new Object[0]);
        } else if (unregist() != null) {
            x.a("[Native] Successfully closed native crash report.", new Object[0]);
            this.f30423k = false;
        } else {
            z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", null, new Class[]{Boolean.TYPE}, new Object[]{Boolean.FALSE});
            this.f30423k = false;
            x.a("[Native] Successfully closed native crash report.", new Object[0]);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:15|(1:17)(16:42|(1:44)|19|20|(1:22)|23|(1:25)|27|(1:29)(1:40)|30|(1:32)(1:39)|33|(1:35)|36|37|38)|18|19|20|(0)|23|(0)|27|(0)(0)|30|(0)(0)|33|(0)|36|37|38) */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0080 A[Catch: all -> 0x008e, TryCatch #2 {all -> 0x008e, blocks: (B:22:0x0076, B:24:0x0080, B:25:0x0082, B:27:0x008c), top: B:70:0x0076 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008c A[Catch: all -> 0x008e, TRY_LEAVE, TryCatch #2 {all -> 0x008e, blocks: (B:22:0x0076, B:24:0x0080, B:25:0x0082, B:27:0x008c), top: B:70:0x0076 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0092 A[Catch: all -> 0x00ed, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0008, B:9:0x0011, B:62:0x01af, B:43:0x00f6, B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:74:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009a A[Catch: all -> 0x00ed, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0008, B:9:0x0011, B:62:0x01af, B:43:0x00f6, B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:74:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a5 A[Catch: all -> 0x00ed, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0008, B:9:0x0011, B:62:0x01af, B:43:0x00f6, B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:74:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ad A[Catch: all -> 0x00ed, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0008, B:9:0x0011, B:62:0x01af, B:43:0x00f6, B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:74:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c8 A[Catch: all -> 0x00ed, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0008, B:9:0x0011, B:62:0x01af, B:43:0x00f6, B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:74:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void a(boolean r13) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.a(boolean):void");
    }

    private synchronized void b(boolean z10) {
        if (z10) {
            startNativeMonitor();
        } else {
            c();
        }
    }

    public static synchronized NativeCrashHandler getInstance() {
        NativeCrashHandler nativeCrashHandler;
        synchronized (NativeCrashHandler.class) {
            nativeCrashHandler = f30410a;
        }
        return nativeCrashHandler;
    }

    public void testNativeCrash(boolean z10, boolean z11, boolean z12) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(z10);
        a(16, sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(z11);
        a(17, sb3.toString());
        StringBuilder sb4 = new StringBuilder();
        sb4.append(z12);
        a(18, sb4.toString());
        testNativeCrash();
    }

    private synchronized void c(boolean z10) {
        if (this.f30424l != z10) {
            x.a("user change native %b", Boolean.valueOf(z10));
            this.f30424l = z10;
        }
    }

    private static boolean a(String str, boolean z10) {
        boolean z11;
        try {
            x.a("[Native] Trying to load so: %s", str);
            if (z10) {
                System.load(str);
            } else {
                System.loadLibrary(str);
            }
        } catch (Throwable th2) {
            th = th2;
            z11 = false;
        }
        try {
            x.a("[Native] Successfully loaded SO: %s", str);
            return true;
        } catch (Throwable th3) {
            th = th3;
            z11 = true;
            x.d(th.getMessage(), new Object[0]);
            x.d("[Native] Failed to load so: %s", str);
            return z11;
        }
    }

    protected final void a() {
        long b10 = z.b() - c.f30342g;
        long b11 = z.b() + 86400000;
        File file = new File(this.f30419g);
        if (file.exists() && file.isDirectory()) {
            try {
                File[] listFiles = file.listFiles();
                if (listFiles != null && listFiles.length != 0) {
                    int i9 = 0;
                    int i10 = 0;
                    for (File file2 : listFiles) {
                        long lastModified = file2.lastModified();
                        if (lastModified < b10 || lastModified >= b11) {
                            x.a("[Native] Delete record file: %s", file2.getAbsolutePath());
                            i9++;
                            if (file2.delete()) {
                                i10++;
                            }
                        }
                    }
                    x.c("[Native] Number of record files overdue: %d, has deleted: %d", Integer.valueOf(i9), Integer.valueOf(i10));
                }
            } catch (Throwable th2) {
                x.a(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i9, String str) {
        if (this.f30422j && f30413n) {
            try {
                setNativeInfo(i9, str);
                return true;
            } catch (UnsatisfiedLinkError unused) {
                f30413n = false;
            } catch (Throwable th2) {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }
}
