package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import android.os.Process;
import com.facebook.internal.security.CertificateUtil;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import com.tencent.bugly.proguard.z;
import java.lang.Thread;
import java.util.HashMap;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public final class e implements Thread.UncaughtExceptionHandler {

    /* renamed from: h  reason: collision with root package name */
    private static String f30382h;

    /* renamed from: i  reason: collision with root package name */
    private static final Object f30383i = new Object();

    /* renamed from: a  reason: collision with root package name */
    private Context f30384a;

    /* renamed from: b  reason: collision with root package name */
    private b f30385b;

    /* renamed from: c  reason: collision with root package name */
    private com.tencent.bugly.crashreport.common.strategy.a f30386c;

    /* renamed from: d  reason: collision with root package name */
    private com.tencent.bugly.crashreport.common.info.a f30387d;

    /* renamed from: e  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f30388e;

    /* renamed from: f  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f30389f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f30390g = false;

    /* renamed from: j  reason: collision with root package name */
    private int f30391j;

    public e(Context context, b bVar, com.tencent.bugly.crashreport.common.strategy.a aVar, com.tencent.bugly.crashreport.common.info.a aVar2) {
        this.f30384a = context;
        this.f30385b = bVar;
        this.f30386c = aVar;
        this.f30387d = aVar2;
    }

    public final synchronized void a() {
        if (this.f30391j >= 10) {
            x.a("java crash handler over %d, no need set.", 10);
            return;
        }
        this.f30390g = true;
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != null) {
            if (e.class.getName().equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                return;
            }
            if ("com.android.internal.os.RuntimeInit$UncaughtHandler".equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                x.a("backup system java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.f30389f = defaultUncaughtExceptionHandler;
                this.f30388e = defaultUncaughtExceptionHandler;
            } else {
                x.a("backup java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.f30388e = defaultUncaughtExceptionHandler;
            }
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
        this.f30391j++;
        x.a("registered java monitor: %s", toString());
    }

    public final synchronized void b() {
        this.f30390g = false;
        x.a("close java monitor!", new Object[0]);
        if ("bugly".equals(Thread.getDefaultUncaughtExceptionHandler().getClass().getName())) {
            x.a("Java monitor to unregister: %s", toString());
            Thread.setDefaultUncaughtExceptionHandler(this.f30388e);
            this.f30391j--;
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th2) {
        synchronized (f30383i) {
            a(thread, th2, true, null, null);
        }
    }

    private CrashDetailBean b(Thread thread, Throwable th2, boolean z10, String str, byte[] bArr) {
        String a10;
        if (th2 == null) {
            x.d("We can do nothing with a null throwable.", new Object[0]);
            return null;
        }
        boolean m10 = c.a().m();
        String str2 = (m10 && z10) ? " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]" : "";
        if (m10 && z10) {
            x.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.C = com.tencent.bugly.crashreport.common.info.b.g();
        crashDetailBean.D = com.tencent.bugly.crashreport.common.info.b.e();
        crashDetailBean.E = com.tencent.bugly.crashreport.common.info.b.i();
        crashDetailBean.F = this.f30387d.l();
        crashDetailBean.G = this.f30387d.k();
        crashDetailBean.H = this.f30387d.m();
        crashDetailBean.f30281w = z.a(this.f30384a, c.f30340e, (String) null);
        byte[] a11 = y.a();
        crashDetailBean.f30283y = a11;
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(a11 == null ? 0 : a11.length);
        x.a("user log size:%d", objArr);
        crashDetailBean.f30260b = z10 ? 0 : 2;
        crashDetailBean.f30263e = this.f30387d.h();
        com.tencent.bugly.crashreport.common.info.a aVar = this.f30387d;
        crashDetailBean.f30264f = aVar.f30201j;
        crashDetailBean.f30265g = aVar.r();
        crashDetailBean.f30271m = this.f30387d.g();
        String name = th2.getClass().getName();
        String b10 = b(th2, 1000);
        if (b10 == null) {
            b10 = "";
        }
        Object[] objArr2 = new Object[2];
        objArr2[0] = Integer.valueOf(th2.getStackTrace().length);
        objArr2[1] = Boolean.valueOf(th2.getCause() != null);
        x.e("stack frame :%d, has cause %b", objArr2);
        String stackTraceElement = th2.getStackTrace().length > 0 ? th2.getStackTrace()[0].toString() : "";
        Throwable th3 = th2;
        while (th3 != null && th3.getCause() != null) {
            th3 = th3.getCause();
        }
        if (th3 != null && th3 != th2) {
            crashDetailBean.f30272n = th3.getClass().getName();
            String b11 = b(th3, 1000);
            crashDetailBean.f30273o = b11;
            if (b11 == null) {
                crashDetailBean.f30273o = "";
            }
            if (th3.getStackTrace().length > 0) {
                crashDetailBean.f30274p = th3.getStackTrace()[0].toString();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(name);
            sb2.append(CertificateUtil.DELIMITER);
            sb2.append(b10);
            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            sb2.append(stackTraceElement);
            sb2.append("\n......");
            sb2.append("\nCaused by:\n");
            sb2.append(crashDetailBean.f30272n);
            sb2.append(CertificateUtil.DELIMITER);
            sb2.append(crashDetailBean.f30273o);
            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            a10 = a(th3, c.f30341f);
            sb2.append(a10);
            crashDetailBean.f30275q = sb2.toString();
        } else {
            crashDetailBean.f30272n = name;
            String str3 = b10 + str2;
            crashDetailBean.f30273o = str3;
            if (str3 == null) {
                crashDetailBean.f30273o = "";
            }
            crashDetailBean.f30274p = stackTraceElement;
            a10 = a(th2, c.f30341f);
            crashDetailBean.f30275q = a10;
        }
        crashDetailBean.f30276r = System.currentTimeMillis();
        crashDetailBean.f30279u = z.a(crashDetailBean.f30275q.getBytes());
        try {
            crashDetailBean.f30284z = z.a(c.f30341f, false);
            crashDetailBean.A = this.f30387d.f30195d;
            String str4 = thread.getName() + "(" + thread.getId() + ")";
            crashDetailBean.B = str4;
            crashDetailBean.f30284z.put(str4, a10);
            crashDetailBean.I = this.f30387d.t();
            crashDetailBean.f30266h = this.f30387d.q();
            crashDetailBean.f30267i = this.f30387d.C();
            com.tencent.bugly.crashreport.common.info.a aVar2 = this.f30387d;
            crashDetailBean.M = aVar2.f30180a;
            crashDetailBean.N = aVar2.a();
            if (z10) {
                this.f30385b.d(crashDetailBean);
            } else {
                boolean z11 = str != null && str.length() > 0;
                boolean z12 = bArr != null && bArr.length > 0;
                if (z11) {
                    HashMap hashMap = new HashMap(1);
                    crashDetailBean.O = hashMap;
                    hashMap.put("UserData", str);
                }
                if (z12) {
                    crashDetailBean.U = bArr;
                }
            }
            crashDetailBean.Q = this.f30387d.A();
            crashDetailBean.R = this.f30387d.B();
            crashDetailBean.S = this.f30387d.u();
            crashDetailBean.T = this.f30387d.z();
        } catch (Throwable th4) {
            x.e("handle crash error %s", th4.toString());
        }
        return crashDetailBean;
    }

    private static boolean a(Thread thread) {
        synchronized (f30383i) {
            if (f30382h == null || !thread.getName().equals(f30382h)) {
                f30382h = thread.getName();
                return false;
            }
            return true;
        }
    }

    public final void a(Thread thread, Throwable th2, boolean z10, String str, byte[] bArr) {
        if (z10) {
            x.e("Java Crash Happen cause by %s(%d)", thread.getName(), Long.valueOf(thread.getId()));
            if (a(thread)) {
                x.a("this class has handled this exception", new Object[0]);
                if (this.f30389f != null) {
                    x.a("call system handler", new Object[0]);
                    this.f30389f.uncaughtException(thread, th2);
                } else {
                    x.e("current process die", new Object[0]);
                    Process.killProcess(Process.myPid());
                    System.exit(1);
                }
            }
        } else {
            x.e("Java Catch Happen", new Object[0]);
        }
        try {
            if (!this.f30390g) {
                x.c("Java crash handler is disable. Just return.", new Object[0]);
                if (z10) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f30388e;
                    if (uncaughtExceptionHandler != null && a(uncaughtExceptionHandler)) {
                        x.e("sys default last handle start!", new Object[0]);
                        this.f30388e.uncaughtException(thread, th2);
                        x.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f30389f != null) {
                        x.e("system handle start!", new Object[0]);
                        this.f30389f.uncaughtException(thread, th2);
                        x.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        x.e("crashreport last handle start!", new Object[0]);
                        x.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        x.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            if (!this.f30386c.b()) {
                x.d("no remote but still store!", new Object[0]);
            }
            if (!this.f30386c.c().f30225e && this.f30386c.b()) {
                x.e("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
                b.a(z10 ? "JAVA_CRASH" : "JAVA_CATCH", z.a(), this.f30387d.f30195d, thread.getName(), z.a(th2), null);
                if (z10) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f30388e;
                    if (uncaughtExceptionHandler2 != null && a(uncaughtExceptionHandler2)) {
                        x.e("sys default last handle start!", new Object[0]);
                        this.f30388e.uncaughtException(thread, th2);
                        x.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f30389f != null) {
                        x.e("system handle start!", new Object[0]);
                        this.f30389f.uncaughtException(thread, th2);
                        x.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        x.e("crashreport last handle start!", new Object[0]);
                        x.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        x.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            CrashDetailBean b10 = b(thread, th2, z10, str, bArr);
            if (b10 == null) {
                x.e("pkg crash datas fail!", new Object[0]);
                if (z10) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f30388e;
                    if (uncaughtExceptionHandler3 != null && a(uncaughtExceptionHandler3)) {
                        x.e("sys default last handle start!", new Object[0]);
                        this.f30388e.uncaughtException(thread, th2);
                        x.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f30389f != null) {
                        x.e("system handle start!", new Object[0]);
                        this.f30389f.uncaughtException(thread, th2);
                        x.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        x.e("crashreport last handle start!", new Object[0]);
                        x.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        x.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            b.a(z10 ? "JAVA_CRASH" : "JAVA_CATCH", z.a(), this.f30387d.f30195d, thread.getName(), z.a(th2), b10);
            if (!this.f30385b.a(b10)) {
                this.f30385b.a(b10, 3000L, z10);
            }
            if (z10) {
                this.f30385b.c(b10);
            }
            if (z10) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler4 = this.f30388e;
                if (uncaughtExceptionHandler4 != null && a(uncaughtExceptionHandler4)) {
                    x.e("sys default last handle start!", new Object[0]);
                    this.f30388e.uncaughtException(thread, th2);
                    x.e("sys default last handle end!", new Object[0]);
                } else if (this.f30389f != null) {
                    x.e("system handle start!", new Object[0]);
                    this.f30389f.uncaughtException(thread, th2);
                    x.e("system handle end!", new Object[0]);
                } else {
                    x.e("crashreport last handle start!", new Object[0]);
                    x.e("current process die", new Object[0]);
                    Process.killProcess(Process.myPid());
                    System.exit(1);
                    x.e("crashreport last handle end!", new Object[0]);
                }
            }
        } catch (Throwable th3) {
            try {
                if (!x.a(th3)) {
                    th3.printStackTrace();
                }
                if (z10) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler5 = this.f30388e;
                    if (uncaughtExceptionHandler5 != null && a(uncaughtExceptionHandler5)) {
                        x.e("sys default last handle start!", new Object[0]);
                        this.f30388e.uncaughtException(thread, th2);
                        x.e("sys default last handle end!", new Object[0]);
                    } else if (this.f30389f != null) {
                        x.e("system handle start!", new Object[0]);
                        this.f30389f.uncaughtException(thread, th2);
                        x.e("system handle end!", new Object[0]);
                    } else {
                        x.e("crashreport last handle start!", new Object[0]);
                        x.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        x.e("crashreport last handle end!", new Object[0]);
                    }
                }
            } catch (Throwable th4) {
                if (z10) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler6 = this.f30388e;
                    if (uncaughtExceptionHandler6 != null && a(uncaughtExceptionHandler6)) {
                        x.e("sys default last handle start!", new Object[0]);
                        this.f30388e.uncaughtException(thread, th2);
                        x.e("sys default last handle end!", new Object[0]);
                    } else if (this.f30389f != null) {
                        x.e("system handle start!", new Object[0]);
                        this.f30389f.uncaughtException(thread, th2);
                        x.e("system handle end!", new Object[0]);
                    } else {
                        x.e("crashreport last handle start!", new Object[0]);
                        x.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        x.e("crashreport last handle end!", new Object[0]);
                    }
                }
                throw th4;
            }
        }
    }

    private static String b(Throwable th2, int i9) {
        if (th2.getMessage() == null) {
            return "";
        }
        if (th2.getMessage().length() <= 1000) {
            return th2.getMessage();
        }
        return th2.getMessage().substring(0, 1000) + "\n[Message over limit size:1000, has been cutted!]";
    }

    private static boolean a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        StackTraceElement[] stackTrace;
        if (uncaughtExceptionHandler == null) {
            return true;
        }
        String name = uncaughtExceptionHandler.getClass().getName();
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            String className = stackTraceElement.getClassName();
            String methodName = stackTraceElement.getMethodName();
            if (name.equals(className) && "uncaughtException".equals(methodName)) {
                return false;
            }
        }
        return true;
    }

    public final synchronized void a(StrategyBean strategyBean) {
        if (strategyBean != null) {
            boolean z10 = strategyBean.f30225e;
            if (z10 != this.f30390g) {
                x.a("java changed to %b", Boolean.valueOf(z10));
                if (strategyBean.f30225e) {
                    a();
                    return;
                }
                b();
            }
        }
    }

    private static String a(Throwable th2, int i9) {
        StackTraceElement[] stackTrace;
        if (th2 == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        try {
            if (th2.getStackTrace() != null) {
                for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                    if (i9 > 0 && sb2.length() >= i9) {
                        sb2.append("\n[Stack over limit size :" + i9 + " , has been cutted !]");
                        return sb2.toString();
                    }
                    sb2.append(stackTraceElement.toString());
                    sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                }
            }
        } catch (Throwable th3) {
            x.e("gen stack error %s", th3.toString());
        }
        return sb2.toString();
    }
}
