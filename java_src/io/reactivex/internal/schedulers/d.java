package io.reactivex.internal.schedulers;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.s;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class d extends s {

    /* renamed from: e  reason: collision with root package name */
    static final RxThreadFactory f52700e;

    /* renamed from: f  reason: collision with root package name */
    static final RxThreadFactory f52701f;

    /* renamed from: i  reason: collision with root package name */
    static final c f52704i;

    /* renamed from: j  reason: collision with root package name */
    static boolean f52705j;

    /* renamed from: k  reason: collision with root package name */
    static final a f52706k;

    /* renamed from: c  reason: collision with root package name */
    final ThreadFactory f52707c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<a> f52708d;

    /* renamed from: h  reason: collision with root package name */
    private static final TimeUnit f52703h = TimeUnit.SECONDS;

    /* renamed from: g  reason: collision with root package name */
    private static final long f52702g = Long.getLong("rx2.io-keep-alive-time", 60).longValue();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final long f52709a;

        /* renamed from: b  reason: collision with root package name */
        private final ConcurrentLinkedQueue<c> f52710b;

        /* renamed from: c  reason: collision with root package name */
        final th.a f52711c;

        /* renamed from: d  reason: collision with root package name */
        private final ScheduledExecutorService f52712d;

        /* renamed from: e  reason: collision with root package name */
        private final Future<?> f52713e;

        /* renamed from: f  reason: collision with root package name */
        private final ThreadFactory f52714f;

        a(long j10, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledFuture<?> scheduledFuture;
            long nanos = timeUnit != null ? timeUnit.toNanos(j10) : 0L;
            this.f52709a = nanos;
            this.f52710b = new ConcurrentLinkedQueue<>();
            this.f52711c = new th.a();
            this.f52714f = threadFactory;
            ScheduledExecutorService scheduledExecutorService = null;
            if (timeUnit != null) {
                scheduledExecutorService = Executors.newScheduledThreadPool(1, d.f52701f);
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                scheduledFuture = null;
            }
            this.f52712d = scheduledExecutorService;
            this.f52713e = scheduledFuture;
        }

        void b() {
            if (this.f52710b.isEmpty()) {
                return;
            }
            long d10 = d();
            Iterator<c> it = this.f52710b.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next.k() > d10) {
                    return;
                }
                if (this.f52710b.remove(next)) {
                    this.f52711c.a(next);
                }
            }
        }

        c c() {
            if (this.f52711c.isDisposed()) {
                return d.f52704i;
            }
            while (!this.f52710b.isEmpty()) {
                c poll = this.f52710b.poll();
                if (poll != null) {
                    return poll;
                }
            }
            c cVar = new c(this.f52714f);
            this.f52711c.b(cVar);
            return cVar;
        }

        long d() {
            return System.nanoTime();
        }

        void f(c cVar) {
            cVar.l(d() + this.f52709a);
            this.f52710b.offer(cVar);
        }

        void g() {
            this.f52711c.dispose();
            Future<?> future = this.f52713e;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.f52712d;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            b();
        }
    }

    /* loaded from: classes7.dex */
    static final class b extends s.c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final a f52716b;

        /* renamed from: c  reason: collision with root package name */
        private final c f52717c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f52718d = new AtomicBoolean();

        /* renamed from: a  reason: collision with root package name */
        private final th.a f52715a = new th.a();

        b(a aVar) {
            this.f52716b = aVar;
            this.f52717c = aVar.c();
        }

        @Override // io.reactivex.s.c
        public th.b d(Runnable runnable, long j10, TimeUnit timeUnit) {
            if (this.f52715a.isDisposed()) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f52717c.g(runnable, j10, timeUnit, this.f52715a);
        }

        @Override // th.b
        public void dispose() {
            if (this.f52718d.compareAndSet(false, true)) {
                this.f52715a.dispose();
                if (d.f52705j) {
                    this.f52717c.g(this, 0L, TimeUnit.NANOSECONDS, null);
                } else {
                    this.f52716b.f(this.f52717c);
                }
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52718d.get();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f52716b.f(this.f52717c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class c extends f {

        /* renamed from: c  reason: collision with root package name */
        private long f52719c;

        c(ThreadFactory threadFactory) {
            super(threadFactory);
            this.f52719c = 0L;
        }

        public long k() {
            return this.f52719c;
        }

        public void l(long j10) {
            this.f52719c = j10;
        }
    }

    static {
        c cVar = new c(new RxThreadFactory("RxCachedThreadSchedulerShutdown"));
        f52704i = cVar;
        cVar.dispose();
        int max = Math.max(1, Math.min(10, Integer.getInteger("rx2.io-priority", 5).intValue()));
        RxThreadFactory rxThreadFactory = new RxThreadFactory("RxCachedThreadScheduler", max);
        f52700e = rxThreadFactory;
        f52701f = new RxThreadFactory("RxCachedWorkerPoolEvictor", max);
        f52705j = Boolean.getBoolean("rx2.io-scheduled-release");
        a aVar = new a(0L, null, rxThreadFactory);
        f52706k = aVar;
        aVar.g();
    }

    public d() {
        this(f52700e);
    }

    @Override // io.reactivex.s
    public s.c b() {
        return new b(this.f52708d.get());
    }

    public void g() {
        a aVar = new a(f52702g, f52703h, this.f52707c);
        if (this.f52708d.compareAndSet(f52706k, aVar)) {
            return;
        }
        aVar.g();
    }

    public d(ThreadFactory threadFactory) {
        this.f52707c = threadFactory;
        this.f52708d = new AtomicReference<>(f52706k);
        g();
    }
}
