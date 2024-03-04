package com.google.common.util.concurrent;

import com.google.common.collect.w3;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2.dex */
public abstract class v<V> extends w3 implements Future<V> {
    public boolean cancel(boolean z10) {
        return w0().cancel(z10);
    }

    @Override // java.util.concurrent.Future
    public V get() throws InterruptedException, ExecutionException {
        return w0().get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return w0().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return w0().isDone();
    }

    protected abstract Future<? extends V> w0();

    @Override // java.util.concurrent.Future
    public V get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return w0().get(j10, timeUnit);
    }
}
