package io.grpc;

import java.lang.Thread;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class d1 implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f42312a;

    /* renamed from: b  reason: collision with root package name */
    private final Queue<Runnable> f42313b = new ConcurrentLinkedQueue();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicReference<Thread> f42314c = new AtomicReference<>();

    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f42315a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Runnable f42316b;

        a(b bVar, Runnable runnable) {
            this.f42315a = bVar;
            this.f42316b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            d1.this.execute(this.f42315a);
        }

        public String toString() {
            return this.f42316b.toString() + "(scheduled in SynchronizationContext)";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f42318a;

        /* renamed from: b  reason: collision with root package name */
        boolean f42319b;

        /* renamed from: c  reason: collision with root package name */
        boolean f42320c;

        b(Runnable runnable) {
            this.f42318a = (Runnable) com.google.common.base.o.t(runnable, "task");
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f42319b) {
                return;
            }
            this.f42320c = true;
            this.f42318a.run();
        }
    }

    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final b f42321a;

        /* renamed from: b  reason: collision with root package name */
        private final ScheduledFuture<?> f42322b;

        /* synthetic */ c(b bVar, ScheduledFuture scheduledFuture, a aVar) {
            this(bVar, scheduledFuture);
        }

        public void a() {
            this.f42321a.f42319b = true;
            this.f42322b.cancel(false);
        }

        public boolean b() {
            b bVar = this.f42321a;
            return (bVar.f42320c || bVar.f42319b) ? false : true;
        }

        private c(b bVar, ScheduledFuture<?> scheduledFuture) {
            this.f42321a = (b) com.google.common.base.o.t(bVar, "runnable");
            this.f42322b = (ScheduledFuture) com.google.common.base.o.t(scheduledFuture, "future");
        }
    }

    public d1(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f42312a = (Thread.UncaughtExceptionHandler) com.google.common.base.o.t(uncaughtExceptionHandler, "uncaughtExceptionHandler");
    }

    public final void a() {
        while (this.f42314c.compareAndSet(null, Thread.currentThread())) {
            while (true) {
                try {
                    Runnable poll = this.f42313b.poll();
                    if (poll != null) {
                        poll.run();
                    } else {
                        this.f42314c.set(null);
                        if (this.f42313b.isEmpty()) {
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    this.f42314c.set(null);
                    throw th2;
                }
            }
        }
    }

    public final void b(Runnable runnable) {
        this.f42313b.add((Runnable) com.google.common.base.o.t(runnable, "runnable is null"));
    }

    public final c d(Runnable runnable, long j10, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        b bVar = new b(runnable);
        return new c(bVar, scheduledExecutorService.schedule(new a(bVar, runnable), j10, timeUnit), null);
    }

    public void e() {
        com.google.common.base.o.A(Thread.currentThread() == this.f42314c.get(), "Not called from the SynchronizationContext");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        b(runnable);
        a();
    }
}
