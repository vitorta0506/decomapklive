package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
/* loaded from: classes2.dex */
public abstract class pb extends AbstractExecutorService implements od {
    @Override // com.google.android.gms.internal.recaptcha.od
    public final <T> nd<T> c(Callable<T> callable) {
        return (nd) super.submit(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t10) {
        return ce.S(runnable, t10);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* bridge */ /* synthetic */ Future submit(Runnable runnable) {
        return (nd) super.submit(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new ce(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* bridge */ /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return (nd) super.submit(runnable, obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* bridge */ /* synthetic */ Future submit(Callable callable) {
        return (nd) super.submit(callable);
    }
}
