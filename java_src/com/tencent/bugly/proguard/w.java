package com.tencent.bugly.proguard;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicInteger f30671a = new AtomicInteger(1);

    /* renamed from: b  reason: collision with root package name */
    private static w f30672b;

    /* renamed from: c  reason: collision with root package name */
    private ScheduledExecutorService f30673c;

    protected w() {
        this.f30673c = null;
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(3, new ThreadFactory(this) { // from class: com.tencent.bugly.proguard.w.1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setName("BuglyThread-" + w.f30671a.getAndIncrement());
                return thread;
            }
        });
        this.f30673c = newScheduledThreadPool;
        if (newScheduledThreadPool == null || newScheduledThreadPool.isShutdown()) {
            x.d("[AsyncTaskHandler] ScheduledExecutorService is not valiable!", new Object[0]);
        }
    }

    public static synchronized w a() {
        w wVar;
        synchronized (w.class) {
            if (f30672b == null) {
                f30672b = new w();
            }
            wVar = f30672b;
        }
        return wVar;
    }

    public final synchronized void b() {
        ScheduledExecutorService scheduledExecutorService = this.f30673c;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            x.c("[AsyncTaskHandler] Close async handler.", new Object[0]);
            this.f30673c.shutdownNow();
        }
    }

    public final synchronized boolean c() {
        boolean z10;
        ScheduledExecutorService scheduledExecutorService = this.f30673c;
        if (scheduledExecutorService != null) {
            z10 = scheduledExecutorService.isShutdown() ? false : true;
        }
        return z10;
    }

    public final synchronized boolean a(Runnable runnable, long j10) {
        if (!c()) {
            x.d("[AsyncTaskHandler] Async handler was closed, should not post task.", new Object[0]);
            return false;
        } else if (runnable == null) {
            x.d("[AsyncTaskHandler] Task input is null.", new Object[0]);
            return false;
        } else {
            if (j10 <= 0) {
                j10 = 0;
            }
            x.c("[AsyncTaskHandler] Post a delay(time: %dms) task: %s", Long.valueOf(j10), runnable.getClass().getName());
            this.f30673c.schedule(runnable, j10, TimeUnit.MILLISECONDS);
            return true;
        }
    }

    public final synchronized boolean a(Runnable runnable) {
        if (!c()) {
            x.d("[AsyncTaskHandler] Async handler was closed, should not post task.", new Object[0]);
            return false;
        } else if (runnable == null) {
            x.d("[AsyncTaskHandler] Task input is null.", new Object[0]);
            return false;
        } else {
            x.c("[AsyncTaskHandler] Post a normal task: %s", runnable.getClass().getName());
            this.f30673c.execute(runnable);
            return true;
        }
    }
}
