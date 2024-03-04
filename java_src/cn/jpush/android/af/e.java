package cn.jpush.android.af;

import cn.jpush.android.helper.Logger;
import java.lang.Thread;
/* loaded from: classes.dex */
public abstract class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f2898a;

    /* renamed from: f  reason: collision with root package name */
    protected String f2899f;

    /* JADX INFO: Access modifiers changed from: protected */
    public e() {
        this.f2898a = new Thread.UncaughtExceptionHandler() { // from class: cn.jpush.android.af.e.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("name: ");
                sb2.append(e.this.f2899f);
                sb2.append(", thread id:");
                sb2.append(thread != null ? thread.getName() : "");
                sb2.append("-");
                sb2.append(thread != null ? Long.valueOf(thread.getId()) : "");
                sb2.append("\n e:");
                sb2.append(th2);
                Logger.e("JPushRunnable", sb2.toString());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e(String str) {
        this.f2899f = str;
        this.f2898a = new Thread.UncaughtExceptionHandler() { // from class: cn.jpush.android.af.e.2
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("name: ");
                sb2.append(e.this.f2899f);
                sb2.append(", thread id: ");
                sb2.append(thread != null ? thread.getName() : "");
                sb2.append("-");
                sb2.append(thread != null ? Long.valueOf(thread.getId()) : "");
                sb2.append("\n e:");
                sb2.append(th2);
                Logger.e("JPushRunnable", sb2.toString());
            }
        };
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public void run() {
        Thread.currentThread().setUncaughtExceptionHandler(this.f2898a);
        a();
        Thread.currentThread().setUncaughtExceptionHandler(null);
    }
}
