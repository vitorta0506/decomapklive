package io.grpc.internal;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class y1 {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f43177a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f43178b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f43179c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.common.base.u f43180d;

    /* renamed from: e  reason: collision with root package name */
    private long f43181e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f43182f;

    /* renamed from: g  reason: collision with root package name */
    private ScheduledFuture<?> f43183g;

    /* loaded from: classes5.dex */
    private final class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!y1.this.f43182f) {
                y1.this.f43183g = null;
                return;
            }
            long j10 = y1.this.j();
            if (y1.this.f43181e - j10 > 0) {
                y1 y1Var = y1.this;
                y1Var.f43183g = y1Var.f43177a.schedule(new c(), y1.this.f43181e - j10, TimeUnit.NANOSECONDS);
                return;
            }
            y1.this.f43182f = false;
            y1.this.f43183g = null;
            y1.this.f43179c.run();
        }
    }

    /* loaded from: classes5.dex */
    private final class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y1.this.f43178b.execute(new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y1(Runnable runnable, Executor executor, ScheduledExecutorService scheduledExecutorService, com.google.common.base.u uVar) {
        this.f43179c = runnable;
        this.f43178b = executor;
        this.f43177a = scheduledExecutorService;
        this.f43180d = uVar;
        uVar.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long j() {
        return this.f43180d.d(TimeUnit.NANOSECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(boolean z10) {
        ScheduledFuture<?> scheduledFuture;
        this.f43182f = false;
        if (!z10 || (scheduledFuture = this.f43183g) == null) {
            return;
        }
        scheduledFuture.cancel(false);
        this.f43183g = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(long j10, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j10);
        long j11 = j() + nanos;
        this.f43182f = true;
        if (j11 - this.f43181e < 0 || this.f43183g == null) {
            ScheduledFuture<?> scheduledFuture = this.f43183g;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            this.f43183g = this.f43177a.schedule(new c(), nanos, TimeUnit.NANOSECONDS);
        }
        this.f43181e = j11;
    }
}
