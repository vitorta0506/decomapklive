package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class y0<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, ? extends io.reactivex.i<? extends R>> f52585b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f52586c;

    /* loaded from: classes7.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = 8600231336733376951L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f52587a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f52588b;

        /* renamed from: f  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.i<? extends R>> f52592f;

        /* renamed from: h  reason: collision with root package name */
        th.b f52594h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f52595i;

        /* renamed from: c  reason: collision with root package name */
        final th.a f52589c = new th.a();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f52591e = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f52590d = new AtomicInteger(1);

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<io.reactivex.internal.queue.b<R>> f52593g = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.observable.y0$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        final class C0524a extends AtomicReference<th.b> implements io.reactivex.h<R>, th.b {
            private static final long serialVersionUID = -502562646270949838L;

            C0524a() {
            }

            @Override // th.b
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // th.b
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.h
            public void onComplete() {
                a.this.e(this);
            }

            @Override // io.reactivex.h
            public void onError(Throwable th2) {
                a.this.f(this, th2);
            }

            @Override // io.reactivex.h
            public void onSubscribe(th.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.h
            public void onSuccess(R r10) {
                a.this.g(this, r10);
            }
        }

        a(io.reactivex.r<? super R> rVar, vh.o<? super T, ? extends io.reactivex.i<? extends R>> oVar, boolean z10) {
            this.f52587a = rVar;
            this.f52592f = oVar;
            this.f52588b = z10;
        }

        void a() {
            io.reactivex.internal.queue.b<R> bVar = this.f52593g.get();
            if (bVar != null) {
                bVar.clear();
            }
        }

        void b() {
            if (getAndIncrement() == 0) {
                c();
            }
        }

        void c() {
            io.reactivex.r<? super R> rVar = this.f52587a;
            AtomicInteger atomicInteger = this.f52590d;
            AtomicReference<io.reactivex.internal.queue.b<R>> atomicReference = this.f52593g;
            int i9 = 1;
            while (!this.f52595i) {
                if (!this.f52588b && this.f52591e.get() != null) {
                    Throwable terminate = this.f52591e.terminate();
                    a();
                    rVar.onError(terminate);
                    return;
                }
                boolean z10 = atomicInteger.get() == 0;
                io.reactivex.internal.queue.b<R> bVar = atomicReference.get();
                R poll = bVar != null ? bVar.poll() : (Object) null;
                boolean z11 = poll == null;
                if (z10 && z11) {
                    Throwable terminate2 = this.f52591e.terminate();
                    if (terminate2 != null) {
                        rVar.onError(terminate2);
                        return;
                    } else {
                        rVar.onComplete();
                        return;
                    }
                } else if (z11) {
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                } else {
                    rVar.onNext(poll);
                }
            }
            a();
        }

        io.reactivex.internal.queue.b<R> d() {
            io.reactivex.internal.queue.b<R> bVar;
            do {
                io.reactivex.internal.queue.b<R> bVar2 = this.f52593g.get();
                if (bVar2 != null) {
                    return bVar2;
                }
                bVar = new io.reactivex.internal.queue.b<>(io.reactivex.k.bufferSize());
            } while (!this.f52593g.compareAndSet(null, bVar));
            return bVar;
        }

        @Override // th.b
        public void dispose() {
            this.f52595i = true;
            this.f52594h.dispose();
            this.f52589c.dispose();
        }

        void e(a<T, R>.C0524a c0524a) {
            this.f52589c.c(c0524a);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z10 = this.f52590d.decrementAndGet() == 0;
                    io.reactivex.internal.queue.b<R> bVar = this.f52593g.get();
                    if (z10 && (bVar == null || bVar.isEmpty())) {
                        Throwable terminate = this.f52591e.terminate();
                        if (terminate != null) {
                            this.f52587a.onError(terminate);
                            return;
                        } else {
                            this.f52587a.onComplete();
                            return;
                        }
                    } else if (decrementAndGet() == 0) {
                        return;
                    } else {
                        c();
                        return;
                    }
                }
            }
            this.f52590d.decrementAndGet();
            b();
        }

        void f(a<T, R>.C0524a c0524a, Throwable th2) {
            this.f52589c.c(c0524a);
            if (this.f52591e.addThrowable(th2)) {
                if (!this.f52588b) {
                    this.f52594h.dispose();
                    this.f52589c.dispose();
                }
                this.f52590d.decrementAndGet();
                b();
                return;
            }
            ci.a.s(th2);
        }

        void g(a<T, R>.C0524a c0524a, R r10) {
            this.f52589c.c(c0524a);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    this.f52587a.onNext(r10);
                    boolean z10 = this.f52590d.decrementAndGet() == 0;
                    io.reactivex.internal.queue.b<R> bVar = this.f52593g.get();
                    if (z10 && (bVar == null || bVar.isEmpty())) {
                        Throwable terminate = this.f52591e.terminate();
                        if (terminate != null) {
                            this.f52587a.onError(terminate);
                            return;
                        } else {
                            this.f52587a.onComplete();
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    c();
                }
            }
            io.reactivex.internal.queue.b<R> d10 = d();
            synchronized (d10) {
                d10.offer(r10);
            }
            this.f52590d.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            c();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52595i;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52590d.decrementAndGet();
            b();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52590d.decrementAndGet();
            if (this.f52591e.addThrowable(th2)) {
                if (!this.f52588b) {
                    this.f52589c.dispose();
                }
                b();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            try {
                io.reactivex.i iVar = (io.reactivex.i) xh.b.e(this.f52592f.apply(t10), "The mapper returned a null MaybeSource");
                this.f52590d.getAndIncrement();
                C0524a c0524a = new C0524a();
                if (this.f52595i || !this.f52589c.b(c0524a)) {
                    return;
                }
                iVar.a(c0524a);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52594h.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52594h, bVar)) {
                this.f52594h = bVar;
                this.f52587a.onSubscribe(this);
            }
        }
    }

    public y0(io.reactivex.p<T> pVar, vh.o<? super T, ? extends io.reactivex.i<? extends R>> oVar, boolean z10) {
        super(pVar);
        this.f52585b = oVar;
        this.f52586c = z10;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super R> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52585b, this.f52586c));
    }
}
