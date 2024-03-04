package io.reactivex.internal.schedulers;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.s;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class i extends s {

    /* renamed from: e  reason: collision with root package name */
    static final RxThreadFactory f52728e;

    /* renamed from: f  reason: collision with root package name */
    static final ScheduledExecutorService f52729f;

    /* renamed from: c  reason: collision with root package name */
    final ThreadFactory f52730c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<ScheduledExecutorService> f52731d;

    /* loaded from: classes7.dex */
    static final class a extends s.c {

        /* renamed from: a  reason: collision with root package name */
        final ScheduledExecutorService f52732a;

        /* renamed from: b  reason: collision with root package name */
        final th.a f52733b = new th.a();

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f52734c;

        a(ScheduledExecutorService scheduledExecutorService) {
            this.f52732a = scheduledExecutorService;
        }

        @Override // io.reactivex.s.c
        public th.b d(Runnable runnable, long j10, TimeUnit timeUnit) {
            Future<?> schedule;
            if (this.f52734c) {
                return EmptyDisposable.INSTANCE;
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(ci.a.u(runnable), this.f52733b);
            this.f52733b.b(scheduledRunnable);
            try {
                if (j10 <= 0) {
                    schedule = this.f52732a.submit((Callable) scheduledRunnable);
                } else {
                    schedule = this.f52732a.schedule((Callable) scheduledRunnable, j10, timeUnit);
                }
                scheduledRunnable.setFuture(schedule);
                return scheduledRunnable;
            } catch (RejectedExecutionException e10) {
                dispose();
                ci.a.s(e10);
                return EmptyDisposable.INSTANCE;
            }
        }

        @Override // th.b
        public void dispose() {
            if (this.f52734c) {
                return;
            }
            this.f52734c = true;
            this.f52733b.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52734c;
        }
    }

    static {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f52729f = newScheduledThreadPool;
        newScheduledThreadPool.shutdown();
        f52728e = new RxThreadFactory("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.single-priority", 5).intValue())), true);
    }

    public i() {
        this(f52728e);
    }

    static ScheduledExecutorService g(ThreadFactory threadFactory) {
        return h.a(threadFactory);
    }

    @Override // io.reactivex.s
    public s.c b() {
        return new a(this.f52731d.get());
    }

    @Override // io.reactivex.s
    public th.b e(Runnable runnable, long j10, TimeUnit timeUnit) {
        Future<?> schedule;
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(ci.a.u(runnable));
        try {
            if (j10 <= 0) {
                schedule = this.f52731d.get().submit(scheduledDirectTask);
            } else {
                schedule = this.f52731d.get().schedule(scheduledDirectTask, j10, timeUnit);
            }
            scheduledDirectTask.setFuture(schedule);
            return scheduledDirectTask;
        } catch (RejectedExecutionException e10) {
            ci.a.s(e10);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.s
    public th.b f(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        Future<?> schedule;
        Runnable u10 = ci.a.u(runnable);
        if (j11 <= 0) {
            ScheduledExecutorService scheduledExecutorService = this.f52731d.get();
            c cVar = new c(u10, scheduledExecutorService);
            try {
                if (j10 <= 0) {
                    schedule = scheduledExecutorService.submit(cVar);
                } else {
                    schedule = scheduledExecutorService.schedule(cVar, j10, timeUnit);
                }
                cVar.b(schedule);
                return cVar;
            } catch (RejectedExecutionException e10) {
                ci.a.s(e10);
                return EmptyDisposable.INSTANCE;
            }
        }
        ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(u10);
        try {
            scheduledDirectPeriodicTask.setFuture(this.f52731d.get().scheduleAtFixedRate(scheduledDirectPeriodicTask, j10, j11, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e11) {
            ci.a.s(e11);
            return EmptyDisposable.INSTANCE;
        }
    }

    public i(ThreadFactory threadFactory) {
        AtomicReference<ScheduledExecutorService> atomicReference = new AtomicReference<>();
        this.f52731d = atomicReference;
        this.f52730c = threadFactory;
        atomicReference.lazySet(g(threadFactory));
    }
}
