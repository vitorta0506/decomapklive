package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2.dex */
public abstract class uc<V> extends m8 implements Future<V> {
    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Future<? extends V> b();

    @Override // java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        return b().get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return b().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return b().isDone();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return b().get(j10, timeUnit);
    }
}
