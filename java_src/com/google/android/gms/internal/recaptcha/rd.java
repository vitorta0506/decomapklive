package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
final class rd<V> extends vc<V> implements ScheduledFuture<V> {

    /* renamed from: b  reason: collision with root package name */
    private final ScheduledFuture<?> f9022b;

    public rd(nd<V> ndVar, ScheduledFuture<?> scheduledFuture) {
        super(ndVar);
        this.f9022b = scheduledFuture;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        boolean cancel = b().cancel(z10);
        if (cancel) {
            this.f9022b.cancel(z10);
        }
        return cancel;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
        return this.f9022b.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f9022b.getDelay(timeUnit);
    }
}
