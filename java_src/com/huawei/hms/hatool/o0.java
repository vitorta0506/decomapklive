package com.huawei.hms.hatool;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public class o0 {

    /* renamed from: b  reason: collision with root package name */
    public static o0 f27561b;

    /* renamed from: c  reason: collision with root package name */
    public static o0 f27562c;

    /* renamed from: d  reason: collision with root package name */
    public static o0 f27563d;

    /* renamed from: a  reason: collision with root package name */
    public ThreadPoolExecutor f27564a = new ThreadPoolExecutor(0, 1, 60000, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(5000), new b());

    /* loaded from: classes4.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public Runnable f27565a;

        public a(Runnable runnable) {
            this.f27565a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = this.f27565a;
            if (runnable != null) {
                try {
                    runnable.run();
                } catch (Exception unused) {
                    y.e("hmsSdk", "InnerTask : Exception has happened,From internal operations!");
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class b implements ThreadFactory {

        /* renamed from: d  reason: collision with root package name */
        public static final AtomicInteger f27566d = new AtomicInteger(1);

        /* renamed from: a  reason: collision with root package name */
        public final ThreadGroup f27567a;

        /* renamed from: b  reason: collision with root package name */
        public final AtomicInteger f27568b = new AtomicInteger(1);

        /* renamed from: c  reason: collision with root package name */
        public final String f27569c;

        public b() {
            SecurityManager securityManager = System.getSecurityManager();
            this.f27567a = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
            this.f27569c = "FormalHASDK-base-" + f27566d.getAndIncrement();
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.f27567a;
            return new Thread(threadGroup, runnable, this.f27569c + this.f27568b.getAndIncrement(), 0L);
        }
    }

    static {
        new o0();
        new o0();
        f27561b = new o0();
        f27562c = new o0();
        f27563d = new o0();
    }

    public static o0 a() {
        return f27563d;
    }

    public static o0 b() {
        return f27562c;
    }

    public static o0 c() {
        return f27561b;
    }

    public void a(n0 n0Var) {
        try {
            this.f27564a.execute(new a(n0Var));
        } catch (RejectedExecutionException unused) {
            y.e("hmsSdk", "addToQueue() Exception has happened!Form rejected execution");
        }
    }
}
