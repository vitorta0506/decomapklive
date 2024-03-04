package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.s;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes7.dex */
public final class h4<T> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.k<T>> {

    /* renamed from: b  reason: collision with root package name */
    final long f51751b;

    /* renamed from: c  reason: collision with root package name */
    final long f51752c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f51753d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.s f51754e;

    /* renamed from: f  reason: collision with root package name */
    final long f51755f;

    /* renamed from: g  reason: collision with root package name */
    final int f51756g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f51757h;

    /* loaded from: classes7.dex */
    static final class a<T> extends io.reactivex.internal.observers.j<T, Object, io.reactivex.k<T>> implements th.b {

        /* renamed from: g  reason: collision with root package name */
        final long f51758g;

        /* renamed from: h  reason: collision with root package name */
        final TimeUnit f51759h;

        /* renamed from: i  reason: collision with root package name */
        final io.reactivex.s f51760i;

        /* renamed from: j  reason: collision with root package name */
        final int f51761j;

        /* renamed from: k  reason: collision with root package name */
        final boolean f51762k;

        /* renamed from: l  reason: collision with root package name */
        final long f51763l;

        /* renamed from: m  reason: collision with root package name */
        final s.c f51764m;

        /* renamed from: n  reason: collision with root package name */
        long f51765n;

        /* renamed from: o  reason: collision with root package name */
        long f51766o;

        /* renamed from: p  reason: collision with root package name */
        th.b f51767p;

        /* renamed from: q  reason: collision with root package name */
        ei.d<T> f51768q;

        /* renamed from: r  reason: collision with root package name */
        volatile boolean f51769r;

        /* renamed from: s  reason: collision with root package name */
        final SequentialDisposable f51770s;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.reactivex.internal.operators.observable.h4$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class RunnableC0515a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final long f51771a;

            /* renamed from: b  reason: collision with root package name */
            final a<?> f51772b;

            RunnableC0515a(long j10, a<?> aVar) {
                this.f51771a = j10;
                this.f51772b = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                a<?> aVar = this.f51772b;
                if (!((io.reactivex.internal.observers.j) aVar).f51334d) {
                    ((io.reactivex.internal.observers.j) aVar).f51333c.offer(this);
                } else {
                    aVar.f51769r = true;
                }
                if (aVar.b()) {
                    aVar.j();
                }
            }
        }

        a(io.reactivex.r<? super io.reactivex.k<T>> rVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar, int i9, long j11, boolean z10) {
            super(rVar, new io.reactivex.internal.queue.a());
            this.f51770s = new SequentialDisposable();
            this.f51758g = j10;
            this.f51759h = timeUnit;
            this.f51760i = sVar;
            this.f51761j = i9;
            this.f51763l = j11;
            this.f51762k = z10;
            if (z10) {
                this.f51764m = sVar.b();
            } else {
                this.f51764m = null;
            }
        }

        @Override // th.b
        public void dispose() {
            this.f51334d = true;
        }

        void i() {
            DisposableHelper.dispose(this.f51770s);
            s.c cVar = this.f51764m;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51334d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void j() {
            io.reactivex.internal.queue.a aVar = (io.reactivex.internal.queue.a) this.f51333c;
            io.reactivex.r<? super V> rVar = this.f51332b;
            ei.d<T> dVar = this.f51768q;
            int i9 = 1;
            while (!this.f51769r) {
                boolean z10 = this.f51335e;
                Object poll = aVar.poll();
                boolean z11 = poll == null;
                boolean z12 = poll instanceof RunnableC0515a;
                if (z10 && (z11 || z12)) {
                    this.f51768q = null;
                    aVar.clear();
                    Throwable th2 = this.f51336f;
                    if (th2 != null) {
                        dVar.onError(th2);
                    } else {
                        dVar.onComplete();
                    }
                    i();
                    return;
                } else if (z11) {
                    i9 = w(-i9);
                    if (i9 == 0) {
                        return;
                    }
                } else if (z12) {
                    RunnableC0515a runnableC0515a = (RunnableC0515a) poll;
                    if (!this.f51762k || this.f51766o == runnableC0515a.f51771a) {
                        dVar.onComplete();
                        this.f51765n = 0L;
                        dVar = (ei.d<T>) ei.d.e(this.f51761j);
                        this.f51768q = dVar;
                        rVar.onNext(dVar);
                    }
                } else {
                    dVar.onNext(NotificationLite.getValue(poll));
                    long j10 = this.f51765n + 1;
                    if (j10 >= this.f51763l) {
                        this.f51766o++;
                        this.f51765n = 0L;
                        dVar.onComplete();
                        dVar = (ei.d<T>) ei.d.e(this.f51761j);
                        this.f51768q = dVar;
                        this.f51332b.onNext(dVar);
                        if (this.f51762k) {
                            th.b bVar = this.f51770s.get();
                            bVar.dispose();
                            s.c cVar = this.f51764m;
                            RunnableC0515a runnableC0515a2 = new RunnableC0515a(this.f51766o, this);
                            long j11 = this.f51758g;
                            th.b f10 = cVar.f(runnableC0515a2, j11, j11, this.f51759h);
                            if (!this.f51770s.compareAndSet(bVar, f10)) {
                                f10.dispose();
                            }
                        }
                    } else {
                        this.f51765n = j10;
                    }
                }
            }
            this.f51767p.dispose();
            aVar.clear();
            i();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51335e = true;
            if (b()) {
                j();
            }
            this.f51332b.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51336f = th2;
            this.f51335e = true;
            if (b()) {
                j();
            }
            this.f51332b.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51769r) {
                return;
            }
            if (c()) {
                ei.d<T> dVar = this.f51768q;
                dVar.onNext(t10);
                long j10 = this.f51765n + 1;
                if (j10 >= this.f51763l) {
                    this.f51766o++;
                    this.f51765n = 0L;
                    dVar.onComplete();
                    ei.d<T> e10 = ei.d.e(this.f51761j);
                    this.f51768q = e10;
                    this.f51332b.onNext(e10);
                    if (this.f51762k) {
                        this.f51770s.get().dispose();
                        s.c cVar = this.f51764m;
                        RunnableC0515a runnableC0515a = new RunnableC0515a(this.f51766o, this);
                        long j11 = this.f51758g;
                        DisposableHelper.replace(this.f51770s, cVar.f(runnableC0515a, j11, j11, this.f51759h));
                    }
                } else {
                    this.f51765n = j10;
                }
                if (w(-1) == 0) {
                    return;
                }
            } else {
                this.f51333c.offer(NotificationLite.next(t10));
                if (!b()) {
                    return;
                }
            }
            j();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            th.b f10;
            if (DisposableHelper.validate(this.f51767p, bVar)) {
                this.f51767p = bVar;
                io.reactivex.r<? super V> rVar = this.f51332b;
                rVar.onSubscribe(this);
                if (this.f51334d) {
                    return;
                }
                ei.d<T> e10 = ei.d.e(this.f51761j);
                this.f51768q = e10;
                rVar.onNext(e10);
                RunnableC0515a runnableC0515a = new RunnableC0515a(this.f51766o, this);
                if (this.f51762k) {
                    s.c cVar = this.f51764m;
                    long j10 = this.f51758g;
                    f10 = cVar.f(runnableC0515a, j10, j10, this.f51759h);
                } else {
                    io.reactivex.s sVar = this.f51760i;
                    long j11 = this.f51758g;
                    f10 = sVar.f(runnableC0515a, j11, j11, this.f51759h);
                }
                this.f51770s.replace(f10);
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T> extends io.reactivex.internal.observers.j<T, Object, io.reactivex.k<T>> implements th.b, Runnable {

        /* renamed from: o  reason: collision with root package name */
        static final Object f51773o = new Object();

        /* renamed from: g  reason: collision with root package name */
        final long f51774g;

        /* renamed from: h  reason: collision with root package name */
        final TimeUnit f51775h;

        /* renamed from: i  reason: collision with root package name */
        final io.reactivex.s f51776i;

        /* renamed from: j  reason: collision with root package name */
        final int f51777j;

        /* renamed from: k  reason: collision with root package name */
        th.b f51778k;

        /* renamed from: l  reason: collision with root package name */
        ei.d<T> f51779l;

        /* renamed from: m  reason: collision with root package name */
        final SequentialDisposable f51780m;

        /* renamed from: n  reason: collision with root package name */
        volatile boolean f51781n;

        b(io.reactivex.r<? super io.reactivex.k<T>> rVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar, int i9) {
            super(rVar, new io.reactivex.internal.queue.a());
            this.f51780m = new SequentialDisposable();
            this.f51774g = j10;
            this.f51775h = timeUnit;
            this.f51776i = sVar;
            this.f51777j = i9;
        }

        @Override // th.b
        public void dispose() {
            this.f51334d = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0023, code lost:
            r2.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
            r2.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
            r7.f51780m.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0019, code lost:
            r7.f51779l = null;
            r0.clear();
            r0 = r7.f51336f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
            if (r0 == null) goto L14;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void g() {
            /*
                r7 = this;
                yh.f<U> r0 = r7.f51333c
                io.reactivex.internal.queue.a r0 = (io.reactivex.internal.queue.a) r0
                io.reactivex.r<? super V> r1 = r7.f51332b
                ei.d<T> r2 = r7.f51779l
                r3 = 1
            L9:
                boolean r4 = r7.f51781n
                boolean r5 = r7.f51335e
                java.lang.Object r6 = r0.poll()
                if (r5 == 0) goto L30
                if (r6 == 0) goto L19
                java.lang.Object r5 = io.reactivex.internal.operators.observable.h4.b.f51773o
                if (r6 != r5) goto L30
            L19:
                r1 = 0
                r7.f51779l = r1
                r0.clear()
                java.lang.Throwable r0 = r7.f51336f
                if (r0 == 0) goto L27
                r2.onError(r0)
                goto L2a
            L27:
                r2.onComplete()
            L2a:
                io.reactivex.internal.disposables.SequentialDisposable r0 = r7.f51780m
                r0.dispose()
                return
            L30:
                if (r6 != 0) goto L3a
                int r3 = -r3
                int r3 = r7.w(r3)
                if (r3 != 0) goto L9
                return
            L3a:
                java.lang.Object r5 = io.reactivex.internal.operators.observable.h4.b.f51773o
                if (r6 != r5) goto L55
                r2.onComplete()
                if (r4 != 0) goto L4f
                int r2 = r7.f51777j
                ei.d r2 = ei.d.e(r2)
                r7.f51779l = r2
                r1.onNext(r2)
                goto L9
            L4f:
                th.b r4 = r7.f51778k
                r4.dispose()
                goto L9
            L55:
                java.lang.Object r4 = io.reactivex.internal.util.NotificationLite.getValue(r6)
                r2.onNext(r4)
                goto L9
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.h4.b.g():void");
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51334d;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51335e = true;
            if (b()) {
                g();
            }
            this.f51332b.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51336f = th2;
            this.f51335e = true;
            if (b()) {
                g();
            }
            this.f51332b.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51781n) {
                return;
            }
            if (c()) {
                this.f51779l.onNext(t10);
                if (w(-1) == 0) {
                    return;
                }
            } else {
                this.f51333c.offer(NotificationLite.next(t10));
                if (!b()) {
                    return;
                }
            }
            g();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51778k, bVar)) {
                this.f51778k = bVar;
                this.f51779l = ei.d.e(this.f51777j);
                io.reactivex.r<? super V> rVar = this.f51332b;
                rVar.onSubscribe(this);
                rVar.onNext(this.f51779l);
                if (this.f51334d) {
                    return;
                }
                io.reactivex.s sVar = this.f51776i;
                long j10 = this.f51774g;
                this.f51780m.replace(sVar.f(this, j10, j10, this.f51775h));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f51334d) {
                this.f51781n = true;
            }
            this.f51333c.offer(f51773o);
            if (b()) {
                g();
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class c<T> extends io.reactivex.internal.observers.j<T, Object, io.reactivex.k<T>> implements th.b, Runnable {

        /* renamed from: g  reason: collision with root package name */
        final long f51782g;

        /* renamed from: h  reason: collision with root package name */
        final long f51783h;

        /* renamed from: i  reason: collision with root package name */
        final TimeUnit f51784i;

        /* renamed from: j  reason: collision with root package name */
        final s.c f51785j;

        /* renamed from: k  reason: collision with root package name */
        final int f51786k;

        /* renamed from: l  reason: collision with root package name */
        final List<ei.d<T>> f51787l;

        /* renamed from: m  reason: collision with root package name */
        th.b f51788m;

        /* renamed from: n  reason: collision with root package name */
        volatile boolean f51789n;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes7.dex */
        public final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final ei.d<T> f51790a;

            a(ei.d<T> dVar) {
                this.f51790a = dVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.g(this.f51790a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes7.dex */
        public static final class b<T> {

            /* renamed from: a  reason: collision with root package name */
            final ei.d<T> f51792a;

            /* renamed from: b  reason: collision with root package name */
            final boolean f51793b;

            b(ei.d<T> dVar, boolean z10) {
                this.f51792a = dVar;
                this.f51793b = z10;
            }
        }

        c(io.reactivex.r<? super io.reactivex.k<T>> rVar, long j10, long j11, TimeUnit timeUnit, s.c cVar, int i9) {
            super(rVar, new io.reactivex.internal.queue.a());
            this.f51782g = j10;
            this.f51783h = j11;
            this.f51784i = timeUnit;
            this.f51785j = cVar;
            this.f51786k = i9;
            this.f51787l = new LinkedList();
        }

        @Override // th.b
        public void dispose() {
            this.f51334d = true;
        }

        void g(ei.d<T> dVar) {
            this.f51333c.offer(new b(dVar, false));
            if (b()) {
                h();
            }
        }

        void h() {
            io.reactivex.internal.queue.a aVar = (io.reactivex.internal.queue.a) this.f51333c;
            io.reactivex.r<? super V> rVar = this.f51332b;
            List<ei.d<T>> list = this.f51787l;
            int i9 = 1;
            while (!this.f51789n) {
                boolean z10 = this.f51335e;
                T t10 = (T) aVar.poll();
                boolean z11 = t10 == null;
                boolean z12 = t10 instanceof b;
                if (z10 && (z11 || z12)) {
                    aVar.clear();
                    Throwable th2 = this.f51336f;
                    if (th2 != null) {
                        for (ei.d<T> dVar : list) {
                            dVar.onError(th2);
                        }
                    } else {
                        for (ei.d<T> dVar2 : list) {
                            dVar2.onComplete();
                        }
                    }
                    list.clear();
                    this.f51785j.dispose();
                    return;
                } else if (z11) {
                    i9 = w(-i9);
                    if (i9 == 0) {
                        return;
                    }
                } else if (z12) {
                    b bVar = (b) t10;
                    if (bVar.f51793b) {
                        if (!this.f51334d) {
                            ei.d<T> e10 = ei.d.e(this.f51786k);
                            list.add(e10);
                            rVar.onNext(e10);
                            this.f51785j.d(new a(e10), this.f51782g, this.f51784i);
                        }
                    } else {
                        list.remove(bVar.f51792a);
                        bVar.f51792a.onComplete();
                        if (list.isEmpty() && this.f51334d) {
                            this.f51789n = true;
                        }
                    }
                } else {
                    for (ei.d<T> dVar3 : list) {
                        dVar3.onNext(t10);
                    }
                }
            }
            this.f51788m.dispose();
            aVar.clear();
            list.clear();
            this.f51785j.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51334d;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51335e = true;
            if (b()) {
                h();
            }
            this.f51332b.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51336f = th2;
            this.f51335e = true;
            if (b()) {
                h();
            }
            this.f51332b.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (c()) {
                for (ei.d<T> dVar : this.f51787l) {
                    dVar.onNext(t10);
                }
                if (w(-1) == 0) {
                    return;
                }
            } else {
                this.f51333c.offer(t10);
                if (!b()) {
                    return;
                }
            }
            h();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51788m, bVar)) {
                this.f51788m = bVar;
                this.f51332b.onSubscribe(this);
                if (this.f51334d) {
                    return;
                }
                ei.d<T> e10 = ei.d.e(this.f51786k);
                this.f51787l.add(e10);
                this.f51332b.onNext(e10);
                this.f51785j.d(new a(e10), this.f51782g, this.f51784i);
                s.c cVar = this.f51785j;
                long j10 = this.f51783h;
                cVar.f(this, j10, j10, this.f51784i);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = new b(ei.d.e(this.f51786k), true);
            if (!this.f51334d) {
                this.f51333c.offer(bVar);
            }
            if (b()) {
                h();
            }
        }
    }

    public h4(io.reactivex.p<T> pVar, long j10, long j11, TimeUnit timeUnit, io.reactivex.s sVar, long j12, int i9, boolean z10) {
        super(pVar);
        this.f51751b = j10;
        this.f51752c = j11;
        this.f51753d = timeUnit;
        this.f51754e = sVar;
        this.f51755f = j12;
        this.f51756g = i9;
        this.f51757h = z10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super io.reactivex.k<T>> rVar) {
        io.reactivex.observers.d dVar = new io.reactivex.observers.d(rVar);
        long j10 = this.f51751b;
        long j11 = this.f51752c;
        if (j10 == j11) {
            long j12 = this.f51755f;
            if (j12 == Long.MAX_VALUE) {
                this.f51403a.subscribe(new b(dVar, this.f51751b, this.f51753d, this.f51754e, this.f51756g));
                return;
            } else {
                this.f51403a.subscribe(new a(dVar, j10, this.f51753d, this.f51754e, this.f51756g, j12, this.f51757h));
                return;
            }
        }
        this.f51403a.subscribe(new c(dVar, j10, j11, this.f51753d, this.f51754e.b(), this.f51756g));
    }
}
