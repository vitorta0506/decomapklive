package cn.jiguang.o;

import java.lang.Thread;
/* loaded from: classes.dex */
public abstract class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f2706a = new Thread.UncaughtExceptionHandler() { // from class: cn.jiguang.o.e.1
        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("name: ");
            sb2.append(e.this.f2707b);
            sb2.append("thread id: ");
            sb2.append(thread != null ? thread.getName() : "");
            sb2.append("-");
            sb2.append(thread != null ? Long.valueOf(thread.getId()) : "");
            sb2.append("\n e:");
            sb2.append(th2);
            cn.jiguang.al.a.f("JCommonRunnable", sb2.toString());
        }
    };

    /* renamed from: b  reason: collision with root package name */
    protected String f2707b;

    public abstract void a();

    @Override // java.lang.Runnable
    public void run() {
        Thread.currentThread().setUncaughtExceptionHandler(this.f2706a);
        a();
        Thread.currentThread().setUncaughtExceptionHandler(null);
    }
}
