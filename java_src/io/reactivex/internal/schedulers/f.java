package io.reactivex.internal.schedulers;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.s;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* loaded from: classes7.dex */
public class f extends s.c {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f52722a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f52723b;

    public f(ThreadFactory threadFactory) {
        this.f52722a = h.a(threadFactory);
    }

    @Override // io.reactivex.s.c
    public th.b c(Runnable runnable) {
        return d(runnable, 0L, null);
    }

    @Override // io.reactivex.s.c
    public th.b d(Runnable runnable, long j10, TimeUnit timeUnit) {
        if (this.f52723b) {
            return EmptyDisposable.INSTANCE;
        }
        return g(runnable, j10, timeUnit, null);
    }

    @Override // th.b
    public void dispose() {
        if (this.f52723b) {
            return;
        }
        this.f52723b = true;
        this.f52722a.shutdownNow();
    }

    public ScheduledRunnable g(Runnable runnable, long j10, TimeUnit timeUnit, wh.a aVar) {
        Future<?> schedule;
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(ci.a.u(runnable), aVar);
        if (aVar == null || aVar.b(scheduledRunnable)) {
            try {
                if (j10 <= 0) {
                    schedule = this.f52722a.submit((Callable) scheduledRunnable);
                } else {
                    schedule = this.f52722a.schedule((Callable) scheduledRunnable, j10, timeUnit);
                }
                scheduledRunnable.setFuture(schedule);
            } catch (RejectedExecutionException e10) {
                if (aVar != null) {
                    aVar.a(scheduledRunnable);
                }
                ci.a.s(e10);
            }
            return scheduledRunnable;
        }
        return scheduledRunnable;
    }

    public th.b h(Runnable runnable, long j10, TimeUnit timeUnit) {
        Future<?> schedule;
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(ci.a.u(runnable));
        try {
            if (j10 <= 0) {
                schedule = this.f52722a.submit(scheduledDirectTask);
            } else {
                schedule = this.f52722a.schedule(scheduledDirectTask, j10, timeUnit);
            }
            scheduledDirectTask.setFuture(schedule);
            return scheduledDirectTask;
        } catch (RejectedExecutionException e10) {
            ci.a.s(e10);
            return EmptyDisposable.INSTANCE;
        }
    }

    public th.b i(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        Future<?> schedule;
        Runnable u10 = ci.a.u(runnable);
        if (j11 <= 0) {
            c cVar = new c(u10, this.f52722a);
            try {
                if (j10 <= 0) {
                    schedule = this.f52722a.submit(cVar);
                } else {
                    schedule = this.f52722a.schedule(cVar, j10, timeUnit);
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
            scheduledDirectPeriodicTask.setFuture(this.f52722a.scheduleAtFixedRate(scheduledDirectPeriodicTask, j10, j11, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e11) {
            ci.a.s(e11);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // th.b
    public boolean isDisposed() {
        return this.f52723b;
    }

    public void j() {
        if (this.f52723b) {
            return;
        }
        this.f52723b = true;
        this.f52722a.shutdown();
    }
}
