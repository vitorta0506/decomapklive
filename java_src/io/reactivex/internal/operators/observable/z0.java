package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class z0<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, ? extends io.reactivex.v<? extends R>> f52622b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f52623c;

    /* loaded from: classes7.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = 8600231336733376951L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f52624a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f52625b;

        /* renamed from: f  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.v<? extends R>> f52629f;

        /* renamed from: h  reason: collision with root package name */
        th.b f52631h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f52632i;

        /* renamed from: c  reason: collision with root package name */
        final th.a f52626c = new th.a();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f52628e = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f52627d = new AtomicInteger(1);

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<io.reactivex.internal.queue.b<R>> f52630g = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.observable.z0$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        final class C0526a extends AtomicReference<th.b> implements io.reactivex.u<R>, th.b {
            private static final long serialVersionUID = -502562646270949838L;

            C0526a() {
            }

            @Override // th.b
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // th.b
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.u
            public void onError(Throwable th2) {
                a.this.e(this, th2);
            }

            @Override // io.reactivex.u
            public void onSubscribe(th.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.u
            public void onSuccess(R r10) {
                a.this.f(this, r10);
            }
        }

        a(io.reactivex.r<? super R> rVar, vh.o<? super T, ? extends io.reactivex.v<? extends R>> oVar, boolean z10) {
            this.f52624a = rVar;
            this.f52629f = oVar;
            this.f52625b = z10;
        }

        void a() {
            io.reactivex.internal.queue.b<R> bVar = this.f52630g.get();
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
            io.reactivex.r<? super R> rVar = this.f52624a;
            AtomicInteger atomicInteger = this.f52627d;
            AtomicReference<io.reactivex.internal.queue.b<R>> atomicReference = this.f52630g;
            int i9 = 1;
            while (!this.f52632i) {
                if (!this.f52625b && this.f52628e.get() != null) {
                    Throwable terminate = this.f52628e.terminate();
                    a();
                    rVar.onError(terminate);
                    return;
                }
                boolean z10 = atomicInteger.get() == 0;
                io.reactivex.internal.queue.b<R> bVar = atomicReference.get();
                R poll = bVar != null ? bVar.poll() : (Object) null;
                boolean z11 = poll == null;
                if (z10 && z11) {
                    Throwable terminate2 = this.f52628e.terminate();
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
                io.reactivex.internal.queue.b<R> bVar2 = this.f52630g.get();
                if (bVar2 != null) {
                    return bVar2;
                }
                bVar = new io.reactivex.internal.queue.b<>(io.reactivex.k.bufferSize());
            } while (!this.f52630g.compareAndSet(null, bVar));
            return bVar;
        }

        @Override // th.b
        public void dispose() {
            this.f52632i = true;
            this.f52631h.dispose();
            this.f52626c.dispose();
        }

        void e(a<T, R>.C0526a c0526a, Throwable th2) {
            this.f52626c.c(c0526a);
            if (this.f52628e.addThrowable(th2)) {
                if (!this.f52625b) {
                    this.f52631h.dispose();
                    this.f52626c.dispose();
                }
                this.f52627d.decrementAndGet();
                b();
                return;
            }
            ci.a.s(th2);
        }

        void f(a<T, R>.C0526a c0526a, R r10) {
            this.f52626c.c(c0526a);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    this.f52624a.onNext(r10);
                    boolean z10 = this.f52627d.decrementAndGet() == 0;
                    io.reactivex.internal.queue.b<R> bVar = this.f52630g.get();
                    if (z10 && (bVar == null || bVar.isEmpty())) {
                        Throwable terminate = this.f52628e.terminate();
                        if (terminate != null) {
                            this.f52624a.onError(terminate);
                            return;
                        } else {
                            this.f52624a.onComplete();
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
            this.f52627d.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            c();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52632i;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52627d.decrementAndGet();
            b();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52627d.decrementAndGet();
            if (this.f52628e.addThrowable(th2)) {
                if (!this.f52625b) {
                    this.f52626c.dispose();
                }
                b();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            try {
                io.reactivex.v vVar = (io.reactivex.v) xh.b.e(this.f52629f.apply(t10), "The mapper returned a null SingleSource");
                this.f52627d.getAndIncrement();
                C0526a c0526a = new C0526a();
                if (this.f52632i || !this.f52626c.b(c0526a)) {
                    return;
                }
                vVar.a(c0526a);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52631h.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52631h, bVar)) {
                this.f52631h = bVar;
                this.f52624a.onSubscribe(this);
            }
        }
    }

    public z0(io.reactivex.p<T> pVar, vh.o<? super T, ? extends io.reactivex.v<? extends R>> oVar, boolean z10) {
        super(pVar);
        this.f52622b = oVar;
        this.f52623c = z10;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super R> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52622b, this.f52623c));
    }
}
