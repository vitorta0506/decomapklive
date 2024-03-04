package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.AppInfo;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.r;
import com.tencent.bugly.proguard.u;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static int f30336a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f30337b = false;

    /* renamed from: c  reason: collision with root package name */
    public static int f30338c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f30339d = true;

    /* renamed from: e  reason: collision with root package name */
    public static int f30340e = 20480;

    /* renamed from: f  reason: collision with root package name */
    public static int f30341f = 20480;

    /* renamed from: g  reason: collision with root package name */
    public static long f30342g = 604800000;

    /* renamed from: h  reason: collision with root package name */
    public static String f30343h = null;

    /* renamed from: i  reason: collision with root package name */
    public static boolean f30344i = false;

    /* renamed from: j  reason: collision with root package name */
    public static String f30345j = null;

    /* renamed from: k  reason: collision with root package name */
    public static int f30346k = 5000;

    /* renamed from: l  reason: collision with root package name */
    public static boolean f30347l = true;

    /* renamed from: m  reason: collision with root package name */
    public static boolean f30348m = false;

    /* renamed from: n  reason: collision with root package name */
    public static String f30349n;

    /* renamed from: o  reason: collision with root package name */
    public static String f30350o;

    /* renamed from: r  reason: collision with root package name */
    private static c f30351r;

    /* renamed from: p  reason: collision with root package name */
    public final b f30352p;

    /* renamed from: q  reason: collision with root package name */
    private final Context f30353q;

    /* renamed from: s  reason: collision with root package name */
    private final e f30354s;

    /* renamed from: t  reason: collision with root package name */
    private final NativeCrashHandler f30355t;

    /* renamed from: u  reason: collision with root package name */
    private com.tencent.bugly.crashreport.common.strategy.a f30356u;

    /* renamed from: v  reason: collision with root package name */
    private w f30357v;

    /* renamed from: w  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.crash.anr.b f30358w;

    /* renamed from: x  reason: collision with root package name */
    private Boolean f30359x;

    /* renamed from: y  reason: collision with root package name */
    private int f30360y = 31;

    /* renamed from: z  reason: collision with root package name */
    private boolean f30361z = false;

    /* renamed from: com.tencent.bugly.crashreport.crash.c$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    final class AnonymousClass2 extends Thread {
        AnonymousClass2() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            ArrayList arrayList;
            if (!z.a(c.this.f30353q, "local_crash_lock", 10000L)) {
                x.c("Failed to lock file for uploading local crash.", new Object[0]);
                return;
            }
            List<CrashDetailBean> a10 = c.this.f30352p.a();
            if (a10 != null && a10.size() > 0) {
                x.c("Size of crash list: %s", Integer.valueOf(a10.size()));
                int size = a10.size();
                if (size > 20) {
                    ArrayList arrayList2 = new ArrayList();
                    Collections.sort(a10);
                    for (int i9 = 0; i9 < 20; i9++) {
                        arrayList2.add(a10.get((size - 1) - i9));
                    }
                    arrayList = arrayList2;
                } else {
                    arrayList = a10;
                }
                c.this.f30352p.a(arrayList, 0L, false, false, false);
            } else {
                x.c("no crash need to be uploaded at this start", new Object[0]);
            }
            z.b(c.this.f30353q, "local_crash_lock");
        }
    }

    private c(int i9, Context context, w wVar, boolean z10, BuglyStrategy.a aVar, o oVar, String str) {
        f30336a = i9;
        Context a10 = z.a(context);
        this.f30353q = a10;
        this.f30356u = com.tencent.bugly.crashreport.common.strategy.a.a();
        this.f30357v = wVar;
        u a11 = u.a();
        p a12 = p.a();
        b bVar = new b(i9, a10, a11, a12, this.f30356u, aVar, oVar);
        this.f30352p = bVar;
        com.tencent.bugly.crashreport.common.info.a a13 = com.tencent.bugly.crashreport.common.info.a.a(a10);
        this.f30354s = new e(a10, bVar, this.f30356u, a13);
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance(a10, a13, bVar, this.f30356u, wVar, z10, str);
        this.f30355t = nativeCrashHandler;
        a13.D = nativeCrashHandler;
        this.f30358w = com.tencent.bugly.crashreport.crash.anr.b.a(a10, this.f30356u, a13, wVar, a12, bVar, aVar);
    }

    public final synchronized void c() {
        this.f30354s.a();
        this.f30355t.setUserOpened(true);
        this.f30358w.a(true);
    }

    public final synchronized void d() {
        this.f30354s.b();
        this.f30355t.setUserOpened(false);
        this.f30358w.a(false);
    }

    public final void e() {
        this.f30354s.b();
    }

    public final void f() {
        this.f30354s.a();
    }

    public final void g() {
        this.f30355t.setUserOpened(false);
    }

    public final void h() {
        this.f30355t.setUserOpened(true);
    }

    public final void i() {
        this.f30358w.a(true);
    }

    public final void j() {
        this.f30358w.a(false);
    }

    public final void k() {
        this.f30355t.enableCatchAnrTrace();
    }

    public final synchronized void l() {
        int i9 = 0;
        while (true) {
            int i10 = i9 + 1;
            if (i9 < 30) {
                try {
                    x.a("try main sleep for make a test anr! try:%d/30 , kill it if you don't want to wait!", Integer.valueOf(i10));
                    z.b(5000L);
                    i9 = i10;
                } catch (Throwable th2) {
                    if (x.a(th2)) {
                        return;
                    }
                    th2.printStackTrace();
                    return;
                }
            }
        }
    }

    public final boolean m() {
        return this.f30358w.a();
    }

    public final void n() {
        this.f30355t.checkUploadRecordCrash();
    }

    public final void o() {
        if (com.tencent.bugly.crashreport.common.info.a.b().f30195d.equals(AppInfo.a(this.f30353q))) {
            this.f30355t.removeEmptyNativeRecordFiles();
        }
    }

    public final boolean p() {
        return this.f30361z;
    }

    public final boolean q() {
        return (this.f30360y & 16) > 0;
    }

    public final boolean r() {
        return (this.f30360y & 8) > 0;
    }

    public final boolean s() {
        return (this.f30360y & 4) > 0;
    }

    public final boolean t() {
        return (this.f30360y & 2) > 0;
    }

    public final boolean u() {
        return (this.f30360y & 1) > 0;
    }

    public static synchronized c a(int i9, Context context, boolean z10, BuglyStrategy.a aVar, o oVar, String str) {
        c cVar;
        synchronized (c.class) {
            if (f30351r == null) {
                f30351r = new c(1004, context, w.a(), z10, aVar, null, null);
            }
            cVar = f30351r;
        }
        return cVar;
    }

    public final boolean b() {
        Boolean bool = this.f30359x;
        if (bool != null) {
            return bool.booleanValue();
        }
        String str = com.tencent.bugly.crashreport.common.info.a.b().f30195d;
        List<r> a10 = p.a().a(1);
        ArrayList arrayList = new ArrayList();
        if (a10 != null && a10.size() > 0) {
            for (r rVar : a10) {
                if (str.equals(rVar.f30630c)) {
                    this.f30359x = Boolean.TRUE;
                    arrayList.add(rVar);
                }
            }
            if (arrayList.size() > 0) {
                p.a().a(arrayList);
            }
            return true;
        }
        this.f30359x = Boolean.FALSE;
        return false;
    }

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            cVar = f30351r;
        }
        return cVar;
    }

    public final void a(StrategyBean strategyBean) {
        this.f30354s.a(strategyBean);
        this.f30355t.onStrategyChanged(strategyBean);
        this.f30358w.c();
        w.a().a(new AnonymousClass2(), 3000L);
    }

    public final synchronized void a(boolean z10, boolean z11, boolean z12) {
        this.f30355t.testNativeCrash(z10, z11, z12);
    }

    public final void a(final Thread thread, final Throwable th2, boolean z10, String str, byte[] bArr, final boolean z11) {
        this.f30357v.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.c.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    x.c("post a throwable %b", Boolean.valueOf(r2));
                    c.this.f30354s.a(thread, th2, false, r5, r6);
                    if (z11) {
                        x.a("clear user datas", new Object[0]);
                        com.tencent.bugly.crashreport.common.info.a.a(c.this.f30353q).v();
                    }
                } catch (Throwable th3) {
                    if (!x.b(th3)) {
                        th3.printStackTrace();
                    }
                    x.e("java catch error: %s", th2.toString());
                }
            }
        });
    }

    public final void a(CrashDetailBean crashDetailBean) {
        this.f30352p.e(crashDetailBean);
    }

    public final void a(long j10) {
        w.a().a(new AnonymousClass2(), j10);
    }

    public final void a(int i9) {
        this.f30360y = i9;
    }

    public final void a(boolean z10) {
        this.f30361z = z10;
    }
}
