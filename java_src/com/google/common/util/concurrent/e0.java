package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2.dex */
public class e0<V> extends FutureTask<V> implements d0<V> {

    /* renamed from: a  reason: collision with root package name */
    private final t f13755a;

    e0(Callable<V> callable) {
        super(callable);
        this.f13755a = new t();
    }

    public static <V> e0<V> b(Callable<V> callable) {
        return new e0<>(callable);
    }

    @Override // com.google.common.util.concurrent.d0
    public void addListener(Runnable runnable, Executor executor) {
        this.f13755a.a(runnable, executor);
    }

    @Override // java.util.concurrent.FutureTask
    protected void done() {
        this.f13755a.b();
    }

    @Override // java.util.concurrent.FutureTask, java.util.concurrent.Future
    public V get(long j10, TimeUnit timeUnit) throws TimeoutException, InterruptedException, ExecutionException {
        long nanos = timeUnit.toNanos(j10);
        if (nanos <= 2147483647999999999L) {
            return (V) super.get(j10, timeUnit);
        }
        return (V) super.get(Math.min(nanos, 2147483647999999999L), TimeUnit.NANOSECONDS);
    }
}
