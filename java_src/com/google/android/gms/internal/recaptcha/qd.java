package com.google.android.gms.internal.recaptcha;

import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
class qd extends pb {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f9011a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public qd(ExecutorService executorService) {
        Objects.requireNonNull(executorService);
        this.f9011a = executorService;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f9011a.awaitTermination(j10, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f9011a.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.f9011a.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.f9011a.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        this.f9011a.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List<Runnable> shutdownNow() {
        return this.f9011a.shutdownNow();
    }

    public final String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.f9011a);
        StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 2 + valueOf.length());
        sb2.append(obj);
        sb2.append("[");
        sb2.append(valueOf);
        sb2.append("]");
        return sb2.toString();
    }
}
