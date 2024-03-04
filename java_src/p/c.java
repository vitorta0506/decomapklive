package p;

import androidx.annotation.NonNull;
import com.alibaba.android.arouter.facade.template.ILogger;
import java.lang.Thread;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class c implements ThreadFactory {

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicInteger f56694d = new AtomicInteger(1);

    /* renamed from: a  reason: collision with root package name */
    private final AtomicInteger f56695a = new AtomicInteger(1);

    /* renamed from: b  reason: collision with root package name */
    private final ThreadGroup f56696b;

    /* renamed from: c  reason: collision with root package name */
    private final String f56697c;

    /* loaded from: classes.dex */
    class a implements Thread.UncaughtExceptionHandler {
        a() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th2) {
            ILogger iLogger = o.a.f55433c;
            iLogger.info(ILogger.defaultTag, "Running task appeared exception! Thread [" + thread.getName() + "], because [" + th2.getMessage() + "]");
        }
    }

    public c() {
        ThreadGroup threadGroup;
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            threadGroup = securityManager.getThreadGroup();
        } else {
            threadGroup = Thread.currentThread().getThreadGroup();
        }
        this.f56696b = threadGroup;
        this.f56697c = "ARouter task pool No." + f56694d.getAndIncrement() + ", thread No.";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(@NonNull Runnable runnable) {
        String str = this.f56697c + this.f56695a.getAndIncrement();
        o.a.f55433c.info(ILogger.defaultTag, "Thread production, name is [" + str + "]");
        Thread thread = new Thread(this.f56696b, runnable, str, 0L);
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        if (thread.getPriority() != 5) {
            thread.setPriority(5);
        }
        thread.setUncaughtExceptionHandler(new a());
        return thread;
    }
}
