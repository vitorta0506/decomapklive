package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
final class id<V> implements nd<V> {

    /* renamed from: b  reason: collision with root package name */
    static final nd<?> f8763b = new id(null);

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f8764c = Logger.getLogger(id.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final V f8765a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public id(V v10) {
        this.f8765a = v10;
    }

    @Override // com.google.android.gms.internal.recaptcha.nd
    public final void F(Runnable runnable, Executor executor) {
        z7.c(runnable, "Runnable was null.");
        z7.c(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            Logger logger = f8764c;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
            sb2.append("RuntimeException while executing runnable ");
            sb2.append(valueOf);
            sb2.append(" with executor ");
            sb2.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.ImmediateFuture", "addListener", sb2.toString(), (Throwable) e10);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        return this.f8765a;
    }

    @Override // java.util.concurrent.Future
    public final V get(long j10, TimeUnit timeUnit) throws ExecutionException {
        Objects.requireNonNull(timeUnit);
        return this.f8765a;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.f8765a);
        StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 27 + valueOf.length());
        sb2.append(obj);
        sb2.append("[status=SUCCESS, result=[");
        sb2.append(valueOf);
        sb2.append("]]");
        return sb2.toString();
    }
}
