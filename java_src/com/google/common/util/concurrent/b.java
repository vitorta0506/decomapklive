package com.google.common.util.concurrent;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
/* loaded from: classes2.dex */
public abstract class b extends AbstractExecutorService {
    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* renamed from: a */
    public d0<?> submit(Runnable runnable) {
        return (d0) super.submit(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* renamed from: b */
    public <T> d0<T> submit(Runnable runnable, T t10) {
        return (d0) super.submit(runnable, t10);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* renamed from: d */
    public <T> d0<T> submit(Callable<T> callable) {
        return (d0) super.submit(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t10) {
        return m0.V(runnable, t10);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return m0.W(callable);
    }
}
