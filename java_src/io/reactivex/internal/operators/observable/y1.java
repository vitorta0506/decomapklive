package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class y1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.i<? extends T> f52597b;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52598a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<th.b> f52599b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0525a<T> f52600c = new C0525a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f52601d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        volatile yh.f<T> f52602e;

        /* renamed from: f  reason: collision with root package name */
        T f52603f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f52604g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f52605h;

        /* renamed from: i  reason: collision with root package name */
        volatile int f52606i;

        /* renamed from: io.reactivex.internal.operators.observable.y1$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        static final class C0525a<T> extends AtomicReference<th.b> implements io.reactivex.h<T> {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final a<T> f52607a;

            C0525a(a<T> aVar) {
                this.f52607a = aVar;
            }

            @Override // io.reactivex.h
            public void onComplete() {
                this.f52607a.d();
            }

            @Override // io.reactivex.h
            public void onError(Throwable th2) {
                this.f52607a.e(th2);
            }

            @Override // io.reactivex.h
            public void onSubscribe(th.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.h
            public void onSuccess(T t10) {
                this.f52607a.f(t10);
            }
        }

        a(io.reactivex.r<? super T> rVar) {
            this.f52598a = rVar;
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        void b() {
            io.reactivex.r<? super T> rVar = this.f52598a;
            int i9 = 1;
            while (!this.f52604g) {
                if (this.f52601d.get() != null) {
                    this.f52603f = null;
                    this.f52602e = null;
                    rVar.onError(this.f52601d.terminate());
                    return;
                }
                int i10 = this.f52606i;
                if (i10 == 1) {
                    this.f52603f = null;
                    this.f52606i = 2;
                    rVar.onNext((T) this.f52603f);
                    i10 = 2;
                }
                boolean z10 = this.f52605h;
                yh.f<T> fVar = this.f52602e;
                T poll = fVar != null ? fVar.poll() : (Object) null;
                boolean z11 = poll == null;
                if (z10 && z11 && i10 == 2) {
                    this.f52602e = null;
                    rVar.onComplete();
                    return;
                } else if (z11) {
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                } else {
                    rVar.onNext(poll);
                }
            }
            this.f52603f = null;
            this.f52602e = null;
        }

        yh.f<T> c() {
            yh.f<T> fVar = this.f52602e;
            if (fVar == null) {
                io.reactivex.internal.queue.b bVar = new io.reactivex.internal.queue.b(io.reactivex.k.bufferSize());
                this.f52602e = bVar;
                return bVar;
            }
            return fVar;
        }

        void d() {
            this.f52606i = 2;
            a();
        }

        @Override // th.b
        public void dispose() {
            this.f52604g = true;
            DisposableHelper.dispose(this.f52599b);
            DisposableHelper.dispose(this.f52600c);
            if (getAndIncrement() == 0) {
                this.f52602e = null;
                this.f52603f = null;
            }
        }

        void e(Throwable th2) {
            if (this.f52601d.addThrowable(th2)) {
                DisposableHelper.dispose(this.f52599b);
                a();
                return;
            }
            ci.a.s(th2);
        }

        void f(T t10) {
            if (compareAndSet(0, 1)) {
                this.f52598a.onNext(t10);
                this.f52606i = 2;
            } else {
                this.f52603f = t10;
                this.f52606i = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f52599b.get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52605h = true;
            a();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52601d.addThrowable(th2)) {
                DisposableHelper.dispose(this.f52600c);
                a();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (compareAndSet(0, 1)) {
                this.f52598a.onNext(t10);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                c().offer(t10);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f52599b, bVar);
        }
    }

    public y1(io.reactivex.k<T> kVar, io.reactivex.i<? extends T> iVar) {
        super(kVar);
        this.f52597b = iVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        a aVar = new a(rVar);
        rVar.onSubscribe(aVar);
        this.f51403a.subscribe(aVar);
        this.f52597b.a(aVar.f52600c);
    }
}
