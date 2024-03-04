package io.reactivex.internal.schedulers;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.s;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public final class j extends s {

    /* renamed from: c  reason: collision with root package name */
    private static final j f52735c = new j();

    /* loaded from: classes7.dex */
    static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f52736a;

        /* renamed from: b  reason: collision with root package name */
        private final c f52737b;

        /* renamed from: c  reason: collision with root package name */
        private final long f52738c;

        a(Runnable runnable, c cVar, long j10) {
            this.f52736a = runnable;
            this.f52737b = cVar;
            this.f52738c = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f52737b.f52746d) {
                return;
            }
            long b10 = this.f52737b.b(TimeUnit.MILLISECONDS);
            long j10 = this.f52738c;
            if (j10 > b10) {
                try {
                    Thread.sleep(j10 - b10);
                } catch (InterruptedException e10) {
                    Thread.currentThread().interrupt();
                    ci.a.s(e10);
                    return;
                }
            }
            if (this.f52737b.f52746d) {
                return;
            }
            this.f52736a.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f52739a;

        /* renamed from: b  reason: collision with root package name */
        final long f52740b;

        /* renamed from: c  reason: collision with root package name */
        final int f52741c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f52742d;

        b(Runnable runnable, Long l10, int i9) {
            this.f52739a = runnable;
            this.f52740b = l10.longValue();
            this.f52741c = i9;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(b bVar) {
            int b10 = xh.b.b(this.f52740b, bVar.f52740b);
            return b10 == 0 ? xh.b.a(this.f52741c, bVar.f52741c) : b10;
        }
    }

    /* loaded from: classes7.dex */
    static final class c extends s.c {

        /* renamed from: a  reason: collision with root package name */
        final PriorityBlockingQueue<b> f52743a = new PriorityBlockingQueue<>();

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f52744b = new AtomicInteger();

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f52745c = new AtomicInteger();

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f52746d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes7.dex */
        public final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final b f52747a;

            a(b bVar) {
                this.f52747a = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f52747a.f52742d = true;
                c.this.f52743a.remove(this.f52747a);
            }
        }

        c() {
        }

        @Override // io.reactivex.s.c
        public th.b c(Runnable runnable) {
            return g(runnable, b(TimeUnit.MILLISECONDS));
        }

        @Override // io.reactivex.s.c
        public th.b d(Runnable runnable, long j10, TimeUnit timeUnit) {
            long b10 = b(TimeUnit.MILLISECONDS) + timeUnit.toMillis(j10);
            return g(new a(runnable, this, b10), b10);
        }

        @Override // th.b
        public void dispose() {
            this.f52746d = true;
        }

        th.b g(Runnable runnable, long j10) {
            if (this.f52746d) {
                return EmptyDisposable.INSTANCE;
            }
            b bVar = new b(runnable, Long.valueOf(j10), this.f52745c.incrementAndGet());
            this.f52743a.add(bVar);
            if (this.f52744b.getAndIncrement() == 0) {
                int i9 = 1;
                while (!this.f52746d) {
                    b poll = this.f52743a.poll();
                    if (poll == null) {
                        i9 = this.f52744b.addAndGet(-i9);
                        if (i9 == 0) {
                            return EmptyDisposable.INSTANCE;
                        }
                    } else if (!poll.f52742d) {
                        poll.f52739a.run();
                    }
                }
                this.f52743a.clear();
                return EmptyDisposable.INSTANCE;
            }
            return th.c.b(new a(bVar));
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52746d;
        }
    }

    j() {
    }

    public static j g() {
        return f52735c;
    }

    @Override // io.reactivex.s
    public s.c b() {
        return new c();
    }

    @Override // io.reactivex.s
    public th.b d(Runnable runnable) {
        ci.a.u(runnable).run();
        return EmptyDisposable.INSTANCE;
    }

    @Override // io.reactivex.s
    public th.b e(Runnable runnable, long j10, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j10);
            ci.a.u(runnable).run();
        } catch (InterruptedException e10) {
            Thread.currentThread().interrupt();
            ci.a.s(e10);
        }
        return EmptyDisposable.INSTANCE;
    }
}
