package l5;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import l5.c;
/* loaded from: classes2.dex */
public abstract class m implements h {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadFactory f54211a = new a();

    /* loaded from: classes2.dex */
    static class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f54212a = new AtomicInteger();

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("Gax-" + this.f54212a.incrementAndGet());
            thread.setDaemon(true);
            return thread;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class b {
        public abstract m a();

        public abstract b b(ThreadFactory threadFactory);
    }

    public static b e() {
        return new c.b().c(Math.max(4, Runtime.getRuntime().availableProcessors())).b(f54211a);
    }

    @Override // l5.h
    public boolean a() {
        return true;
    }

    @Override // l5.h
    public ScheduledExecutorService b() {
        return new ScheduledThreadPoolExecutor(c(), d());
    }

    public abstract int c();

    public abstract ThreadFactory d();
}
