package io.grpc.internal;

import androidx.core.app.NotificationCompat;
import io.grpc.Status;
import io.grpc.internal.r;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class c1 {

    /* renamed from: l  reason: collision with root package name */
    private static final long f42515l = TimeUnit.SECONDS.toNanos(10);

    /* renamed from: m  reason: collision with root package name */
    private static final long f42516m = TimeUnit.MILLISECONDS.toNanos(10);

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f42517a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.common.base.u f42518b;

    /* renamed from: c  reason: collision with root package name */
    private final d f42519c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f42520d;

    /* renamed from: e  reason: collision with root package name */
    private e f42521e;

    /* renamed from: f  reason: collision with root package name */
    private ScheduledFuture<?> f42522f;

    /* renamed from: g  reason: collision with root package name */
    private ScheduledFuture<?> f42523g;

    /* renamed from: h  reason: collision with root package name */
    private final Runnable f42524h;

    /* renamed from: i  reason: collision with root package name */
    private final Runnable f42525i;

    /* renamed from: j  reason: collision with root package name */
    private final long f42526j;

    /* renamed from: k  reason: collision with root package name */
    private final long f42527k;

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            synchronized (c1.this) {
                e eVar = c1.this.f42521e;
                e eVar2 = e.DISCONNECTED;
                if (eVar != eVar2) {
                    c1.this.f42521e = eVar2;
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            if (z10) {
                c1.this.f42519c.b();
            }
        }
    }

    /* loaded from: classes5.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            synchronized (c1.this) {
                c1.this.f42523g = null;
                e eVar = c1.this.f42521e;
                e eVar2 = e.PING_SCHEDULED;
                if (eVar == eVar2) {
                    z10 = true;
                    c1.this.f42521e = e.PING_SENT;
                    c1 c1Var = c1.this;
                    c1Var.f42522f = c1Var.f42517a.schedule(c1.this.f42524h, c1.this.f42527k, TimeUnit.NANOSECONDS);
                } else {
                    if (c1.this.f42521e == e.PING_DELAYED) {
                        c1 c1Var2 = c1.this;
                        ScheduledExecutorService scheduledExecutorService = c1Var2.f42517a;
                        Runnable runnable = c1.this.f42525i;
                        long j10 = c1.this.f42526j;
                        com.google.common.base.u uVar = c1.this.f42518b;
                        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                        c1Var2.f42523g = scheduledExecutorService.schedule(runnable, j10 - uVar.d(timeUnit), timeUnit);
                        c1.this.f42521e = eVar2;
                    }
                    z10 = false;
                }
            }
            if (z10) {
                c1.this.f42519c.a();
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c implements d {

        /* renamed from: a  reason: collision with root package name */
        private final u f42530a;

        /* loaded from: classes5.dex */
        class a implements r.a {
            a() {
            }

            @Override // io.grpc.internal.r.a
            public void a(long j10) {
            }

            @Override // io.grpc.internal.r.a
            public void onFailure(Throwable th2) {
                c.this.f42530a.b(Status.f41719u.r("Keepalive failed. The connection is likely gone"));
            }
        }

        public c(u uVar) {
            this.f42530a = uVar;
        }

        @Override // io.grpc.internal.c1.d
        public void a() {
            this.f42530a.d(new a(), com.google.common.util.concurrent.h0.a());
        }

        @Override // io.grpc.internal.c1.d
        public void b() {
            this.f42530a.b(Status.f41719u.r("Keepalive failed. The connection is likely gone"));
        }
    }

    /* loaded from: classes5.dex */
    public interface d {
        void a();

        void b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum e {
        IDLE,
        PING_SCHEDULED,
        PING_DELAYED,
        PING_SENT,
        IDLE_AND_PING_SENT,
        DISCONNECTED
    }

    public c1(d dVar, ScheduledExecutorService scheduledExecutorService, long j10, long j11, boolean z10) {
        this(dVar, scheduledExecutorService, com.google.common.base.u.c(), j10, j11, z10);
    }

    public static long l(long j10) {
        return Math.max(j10, f42515l);
    }

    public static long m(long j10) {
        return Math.max(j10, f42516m);
    }

    public synchronized void n() {
        this.f42518b.f().g();
        e eVar = this.f42521e;
        e eVar2 = e.PING_SCHEDULED;
        if (eVar == eVar2) {
            this.f42521e = e.PING_DELAYED;
        } else if (eVar == e.PING_SENT || eVar == e.IDLE_AND_PING_SENT) {
            ScheduledFuture<?> scheduledFuture = this.f42522f;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            if (this.f42521e == e.IDLE_AND_PING_SENT) {
                this.f42521e = e.IDLE;
                return;
            }
            this.f42521e = eVar2;
            com.google.common.base.o.A(this.f42523g == null, "There should be no outstanding pingFuture");
            this.f42523g = this.f42517a.schedule(this.f42525i, this.f42526j, TimeUnit.NANOSECONDS);
        }
    }

    public synchronized void o() {
        e eVar = this.f42521e;
        if (eVar == e.IDLE) {
            this.f42521e = e.PING_SCHEDULED;
            if (this.f42523g == null) {
                ScheduledExecutorService scheduledExecutorService = this.f42517a;
                Runnable runnable = this.f42525i;
                long j10 = this.f42526j;
                com.google.common.base.u uVar = this.f42518b;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                this.f42523g = scheduledExecutorService.schedule(runnable, j10 - uVar.d(timeUnit), timeUnit);
            }
        } else if (eVar == e.IDLE_AND_PING_SENT) {
            this.f42521e = e.PING_SENT;
        }
    }

    public synchronized void p() {
        if (this.f42520d) {
            return;
        }
        e eVar = this.f42521e;
        if (eVar == e.PING_SCHEDULED || eVar == e.PING_DELAYED) {
            this.f42521e = e.IDLE;
        }
        if (this.f42521e == e.PING_SENT) {
            this.f42521e = e.IDLE_AND_PING_SENT;
        }
    }

    public synchronized void q() {
        if (this.f42520d) {
            o();
        }
    }

    public synchronized void r() {
        e eVar = this.f42521e;
        e eVar2 = e.DISCONNECTED;
        if (eVar != eVar2) {
            this.f42521e = eVar2;
            ScheduledFuture<?> scheduledFuture = this.f42522f;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            ScheduledFuture<?> scheduledFuture2 = this.f42523g;
            if (scheduledFuture2 != null) {
                scheduledFuture2.cancel(false);
                this.f42523g = null;
            }
        }
    }

    c1(d dVar, ScheduledExecutorService scheduledExecutorService, com.google.common.base.u uVar, long j10, long j11, boolean z10) {
        this.f42521e = e.IDLE;
        this.f42524h = new d1(new a());
        this.f42525i = new d1(new b());
        this.f42519c = (d) com.google.common.base.o.t(dVar, "keepAlivePinger");
        this.f42517a = (ScheduledExecutorService) com.google.common.base.o.t(scheduledExecutorService, "scheduler");
        this.f42518b = (com.google.common.base.u) com.google.common.base.o.t(uVar, NotificationCompat.CATEGORY_STOPWATCH);
        this.f42526j = j10;
        this.f42527k = j11;
        this.f42520d = z10;
        uVar.f().g();
    }
}
