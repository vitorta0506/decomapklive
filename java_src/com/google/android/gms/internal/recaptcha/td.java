package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class td extends qd implements ScheduledExecutorService {

    /* renamed from: b  reason: collision with root package name */
    final ScheduledExecutorService f9073b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public td(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        Objects.requireNonNull(scheduledExecutorService);
        this.f9073b = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
        ce S = ce.S(runnable, null);
        return new rd(S, this.f9073b.schedule(S, j10, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        sd sdVar = new sd(runnable);
        return new rd(sdVar, this.f9073b.scheduleAtFixedRate(sdVar, j10, j11, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        sd sdVar = new sd(runnable);
        return new rd(sdVar, this.f9073b.scheduleWithFixedDelay(sdVar, j10, j11, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j10, TimeUnit timeUnit) {
        ce ceVar = new ce(callable);
        return new rd(ceVar, this.f9073b.schedule(ceVar, j10, timeUnit));
    }
}
