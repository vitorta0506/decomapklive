package io.reactivex;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes7.dex */
public abstract class s {

    /* renamed from: a  reason: collision with root package name */
    static boolean f52789a = Boolean.getBoolean("rx2.scheduler.use-nanotime");

    /* renamed from: b  reason: collision with root package name */
    static final long f52790b = TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15).longValue());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a implements th.b, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f52791a;

        /* renamed from: b  reason: collision with root package name */
        final c f52792b;

        /* renamed from: c  reason: collision with root package name */
        Thread f52793c;

        a(Runnable runnable, c cVar) {
            this.f52791a = runnable;
            this.f52792b = cVar;
        }

        @Override // th.b
        public void dispose() {
            if (this.f52793c == Thread.currentThread()) {
                c cVar = this.f52792b;
                if (cVar instanceof io.reactivex.internal.schedulers.f) {
                    ((io.reactivex.internal.schedulers.f) cVar).j();
                    return;
                }
            }
            this.f52792b.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52792b.isDisposed();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f52793c = Thread.currentThread();
            try {
                this.f52791a.run();
            } finally {
                dispose();
                this.f52793c = null;
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class b implements th.b, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f52794a;

        /* renamed from: b  reason: collision with root package name */
        final c f52795b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f52796c;

        b(Runnable runnable, c cVar) {
            this.f52794a = runnable;
            this.f52795b = cVar;
        }

        @Override // th.b
        public void dispose() {
            this.f52796c = true;
            this.f52795b.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52796c;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f52796c) {
                return;
            }
            try {
                this.f52794a.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52795b.dispose();
                throw io.reactivex.internal.util.f.d(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    public static abstract class c implements th.b {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes7.dex */
        public final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final Runnable f52797a;

            /* renamed from: b  reason: collision with root package name */
            final SequentialDisposable f52798b;

            /* renamed from: c  reason: collision with root package name */
            final long f52799c;

            /* renamed from: d  reason: collision with root package name */
            long f52800d;

            /* renamed from: e  reason: collision with root package name */
            long f52801e;

            /* renamed from: f  reason: collision with root package name */
            long f52802f;

            a(long j10, Runnable runnable, long j11, SequentialDisposable sequentialDisposable, long j12) {
                this.f52797a = runnable;
                this.f52798b = sequentialDisposable;
                this.f52799c = j12;
                this.f52801e = j11;
                this.f52802f = j10;
            }

            @Override // java.lang.Runnable
            public void run() {
                long j10;
                this.f52797a.run();
                if (this.f52798b.isDisposed()) {
                    return;
                }
                c cVar = c.this;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long b10 = cVar.b(timeUnit);
                long j11 = s.f52790b;
                long j12 = this.f52801e;
                if (b10 + j11 >= j12) {
                    long j13 = this.f52799c;
                    if (b10 < j12 + j13 + j11) {
                        long j14 = this.f52802f;
                        long j15 = this.f52800d + 1;
                        this.f52800d = j15;
                        j10 = j14 + (j15 * j13);
                        this.f52801e = b10;
                        this.f52798b.replace(c.this.d(this, j10 - b10, timeUnit));
                    }
                }
                long j16 = this.f52799c;
                long j17 = b10 + j16;
                long j18 = this.f52800d + 1;
                this.f52800d = j18;
                this.f52802f = j17 - (j16 * j18);
                j10 = j17;
                this.f52801e = b10;
                this.f52798b.replace(c.this.d(this, j10 - b10, timeUnit));
            }
        }

        public long b(TimeUnit timeUnit) {
            return s.a(timeUnit);
        }

        public th.b c(Runnable runnable) {
            return d(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        public abstract th.b d(Runnable runnable, long j10, TimeUnit timeUnit);

        public th.b f(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            Runnable u10 = ci.a.u(runnable);
            long nanos = timeUnit.toNanos(j11);
            long b10 = b(TimeUnit.NANOSECONDS);
            th.b d10 = d(new a(b10 + timeUnit.toNanos(j10), u10, b10, sequentialDisposable2, nanos), j10, timeUnit);
            if (d10 == EmptyDisposable.INSTANCE) {
                return d10;
            }
            sequentialDisposable.replace(d10);
            return sequentialDisposable2;
        }
    }

    static long a(TimeUnit timeUnit) {
        if (!f52789a) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }
        return timeUnit.convert(System.nanoTime(), TimeUnit.NANOSECONDS);
    }

    public abstract c b();

    public long c(TimeUnit timeUnit) {
        return a(timeUnit);
    }

    public th.b d(Runnable runnable) {
        return e(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    public th.b e(Runnable runnable, long j10, TimeUnit timeUnit) {
        c b10 = b();
        a aVar = new a(ci.a.u(runnable), b10);
        b10.d(aVar, j10, timeUnit);
        return aVar;
    }

    public th.b f(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        c b10 = b();
        b bVar = new b(ci.a.u(runnable), b10);
        th.b f10 = b10.f(bVar, j10, j11, timeUnit);
        return f10 == EmptyDisposable.INSTANCE ? f10 : bVar;
    }
}
