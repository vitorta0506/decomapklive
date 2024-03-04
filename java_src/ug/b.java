package ug;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes5.dex */
public abstract class b implements l {
    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        next().execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return next().invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) next().invokeAny(collection);
    }

    @Override // ug.l
    @Deprecated
    public abstract void shutdown();

    @Override // java.util.concurrent.ExecutorService
    @Deprecated
    public List<Runnable> shutdownNow() {
        shutdown();
        return Collections.emptyList();
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException {
        return next().invokeAll(collection, j10, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) next().invokeAny(collection, j10, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public d0<?> scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        return next().scheduleAtFixedRate(runnable, j10, j11, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public d0<?> scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        return next().scheduleWithFixedDelay(runnable, j10, j11, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public /* bridge */ /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return submit(runnable, (Runnable) obj);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public d0<?> schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
        return next().schedule(runnable, j10, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public <V> d0<V> schedule(Callable<V> callable, long j10, TimeUnit timeUnit) {
        return next().schedule((Callable) callable, j10, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public q<?> submit(Runnable runnable) {
        return next().submit(runnable);
    }

    @Override // ug.l, java.util.concurrent.ExecutorService
    public <T> q<T> submit(Runnable runnable, T t10) {
        return next().submit(runnable, (Runnable) t10);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> q<T> submit(Callable<T> callable) {
        return next().submit((Callable) callable);
    }
}
