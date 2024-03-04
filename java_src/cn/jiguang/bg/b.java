package cn.jiguang.bg;

import java.lang.Thread;
/* loaded from: classes.dex */
public abstract class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f2493a;

    /* renamed from: h  reason: collision with root package name */
    protected String f2494h;

    /* JADX INFO: Access modifiers changed from: protected */
    public b() {
        this.f2493a = new Thread.UncaughtExceptionHandler() { // from class: cn.jiguang.bg.b.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("name: ");
                sb2.append(b.this.f2494h);
                sb2.append(", thread id:");
                sb2.append(thread != null ? thread.getName() : "");
                sb2.append("-");
                sb2.append(thread != null ? Long.valueOf(thread.getId()) : "");
                sb2.append("\n e:");
                sb2.append(th2);
                cn.jiguang.as.d.i("JCoreRunnable", sb2.toString());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(String str) {
        this.f2494h = str;
        this.f2493a = new Thread.UncaughtExceptionHandler() { // from class: cn.jiguang.bg.b.2
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("name: ");
                sb2.append(b.this.f2494h);
                sb2.append(", thread id: ");
                sb2.append(thread != null ? thread.getName() : "");
                sb2.append("-");
                sb2.append(thread != null ? Long.valueOf(thread.getId()) : "");
                sb2.append("\n e:");
                sb2.append(th2);
                cn.jiguang.as.d.i("JCoreRunnable", sb2.toString());
            }
        };
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public void run() {
        Thread.currentThread().setUncaughtExceptionHandler(this.f2493a);
        a();
        Thread.currentThread().setUncaughtExceptionHandler(null);
    }
}
