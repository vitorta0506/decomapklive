package io.reactivex.internal.schedulers;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class c implements Callable<Void>, th.b {

    /* renamed from: f  reason: collision with root package name */
    static final FutureTask<Void> f52694f = new FutureTask<>(xh.a.f59911b, null);

    /* renamed from: a  reason: collision with root package name */
    final Runnable f52695a;

    /* renamed from: d  reason: collision with root package name */
    final ExecutorService f52698d;

    /* renamed from: e  reason: collision with root package name */
    Thread f52699e;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<Future<?>> f52697c = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<Future<?>> f52696b = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Runnable runnable, ExecutorService executorService) {
        this.f52695a = runnable;
        this.f52698d = executorService;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public Void call() throws Exception {
        this.f52699e = Thread.currentThread();
        try {
            this.f52695a.run();
            c(this.f52698d.submit(this));
            this.f52699e = null;
        } catch (Throwable th2) {
            this.f52699e = null;
            ci.a.s(th2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.f52697c.get();
            if (future2 == f52694f) {
                future.cancel(this.f52699e != Thread.currentThread());
                return;
            }
        } while (!this.f52697c.compareAndSet(future2, future));
    }

    void c(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.f52696b.get();
            if (future2 == f52694f) {
                future.cancel(this.f52699e != Thread.currentThread());
                return;
            }
        } while (!this.f52696b.compareAndSet(future2, future));
    }

    @Override // th.b
    public void dispose() {
        AtomicReference<Future<?>> atomicReference = this.f52697c;
        FutureTask<Void> futureTask = f52694f;
        Future<?> andSet = atomicReference.getAndSet(futureTask);
        if (andSet != null && andSet != futureTask) {
            andSet.cancel(this.f52699e != Thread.currentThread());
        }
        Future<?> andSet2 = this.f52696b.getAndSet(futureTask);
        if (andSet2 == null || andSet2 == futureTask) {
            return;
        }
        andSet2.cancel(this.f52699e != Thread.currentThread());
    }

    @Override // th.b
    public boolean isDisposed() {
        return this.f52697c.get() == f52694f;
    }
}
