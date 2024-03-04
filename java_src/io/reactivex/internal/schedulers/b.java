package io.reactivex.internal.schedulers;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.s;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class b extends s {

    /* renamed from: e  reason: collision with root package name */
    static final C0529b f52680e;

    /* renamed from: f  reason: collision with root package name */
    static final RxThreadFactory f52681f;

    /* renamed from: g  reason: collision with root package name */
    static final int f52682g = g(Runtime.getRuntime().availableProcessors(), Integer.getInteger("rx2.computation-threads", 0).intValue());

    /* renamed from: h  reason: collision with root package name */
    static final c f52683h;

    /* renamed from: c  reason: collision with root package name */
    final ThreadFactory f52684c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<C0529b> f52685d;

    /* loaded from: classes7.dex */
    static final class a extends s.c {

        /* renamed from: a  reason: collision with root package name */
        private final wh.b f52686a;

        /* renamed from: b  reason: collision with root package name */
        private final th.a f52687b;

        /* renamed from: c  reason: collision with root package name */
        private final wh.b f52688c;

        /* renamed from: d  reason: collision with root package name */
        private final c f52689d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f52690e;

        a(c cVar) {
            this.f52689d = cVar;
            wh.b bVar = new wh.b();
            this.f52686a = bVar;
            th.a aVar = new th.a();
            this.f52687b = aVar;
            wh.b bVar2 = new wh.b();
            this.f52688c = bVar2;
            bVar2.b(bVar);
            bVar2.b(aVar);
        }

        @Override // io.reactivex.s.c
        public th.b c(Runnable runnable) {
            if (this.f52690e) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f52689d.g(runnable, 0L, TimeUnit.MILLISECONDS, this.f52686a);
        }

        @Override // io.reactivex.s.c
        public th.b d(Runnable runnable, long j10, TimeUnit timeUnit) {
            if (this.f52690e) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f52689d.g(runnable, j10, timeUnit, this.f52687b);
        }

        @Override // th.b
        public void dispose() {
            if (this.f52690e) {
                return;
            }
            this.f52690e = true;
            this.f52688c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52690e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.reactivex.internal.schedulers.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0529b {

        /* renamed from: a  reason: collision with root package name */
        final int f52691a;

        /* renamed from: b  reason: collision with root package name */
        final c[] f52692b;

        /* renamed from: c  reason: collision with root package name */
        long f52693c;

        C0529b(int i9, ThreadFactory threadFactory) {
            this.f52691a = i9;
            this.f52692b = new c[i9];
            for (int i10 = 0; i10 < i9; i10++) {
                this.f52692b[i10] = new c(threadFactory);
            }
        }

        public c a() {
            int i9 = this.f52691a;
            if (i9 == 0) {
                return b.f52683h;
            }
            c[] cVarArr = this.f52692b;
            long j10 = this.f52693c;
            this.f52693c = 1 + j10;
            return cVarArr[(int) (j10 % i9)];
        }

        public void b() {
            for (c cVar : this.f52692b) {
                cVar.dispose();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class c extends f {
        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        c cVar = new c(new RxThreadFactory("RxComputationShutdown"));
        f52683h = cVar;
        cVar.dispose();
        RxThreadFactory rxThreadFactory = new RxThreadFactory("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx2.computation-priority", 5).intValue())), true);
        f52681f = rxThreadFactory;
        C0529b c0529b = new C0529b(0, rxThreadFactory);
        f52680e = c0529b;
        c0529b.b();
    }

    public b() {
        this(f52681f);
    }

    static int g(int i9, int i10) {
        return (i10 <= 0 || i10 > i9) ? i9 : i10;
    }

    @Override // io.reactivex.s
    public s.c b() {
        return new a(this.f52685d.get().a());
    }

    @Override // io.reactivex.s
    public th.b e(Runnable runnable, long j10, TimeUnit timeUnit) {
        return this.f52685d.get().a().h(runnable, j10, timeUnit);
    }

    @Override // io.reactivex.s
    public th.b f(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        return this.f52685d.get().a().i(runnable, j10, j11, timeUnit);
    }

    public void h() {
        C0529b c0529b = new C0529b(f52682g, this.f52684c);
        if (this.f52685d.compareAndSet(f52680e, c0529b)) {
            return;
        }
        c0529b.b();
    }

    public b(ThreadFactory threadFactory) {
        this.f52684c = threadFactory;
        this.f52685d = new AtomicReference<>(f52680e);
        h();
    }
}
