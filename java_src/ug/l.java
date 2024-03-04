package ug;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public interface l extends ScheduledExecutorService, Iterable<j> {
    q<?> T();

    q<?> l0();

    j next();

    @Override // java.util.concurrent.ScheduledExecutorService
    d0<?> schedule(Runnable runnable, long j10, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    <V> d0<V> schedule(Callable<V> callable, long j10, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    d0<?> scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    d0<?> scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit);

    @Override // ug.l
    @Deprecated
    void shutdown();

    @Override // java.util.concurrent.ExecutorService, ug.l
    q<?> submit(Runnable runnable);

    @Override // java.util.concurrent.ExecutorService, ug.l
    <T> q<T> submit(Runnable runnable, T t10);

    @Override // java.util.concurrent.ExecutorService, ug.l
    <T> q<T> submit(Callable<T> callable);

    q<?> z0(long j10, long j11, TimeUnit timeUnit);
}
