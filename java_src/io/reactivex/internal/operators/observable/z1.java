package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class z1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.v<? extends T> f52634b;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52635a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<th.b> f52636b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0527a<T> f52637c = new C0527a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f52638d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        volatile yh.f<T> f52639e;

        /* renamed from: f  reason: collision with root package name */
        T f52640f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f52641g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f52642h;

        /* renamed from: i  reason: collision with root package name */
        volatile int f52643i;

        /* renamed from: io.reactivex.internal.operators.observable.z1$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        static final class C0527a<T> extends AtomicReference<th.b> implements io.reactivex.u<T> {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final a<T> f52644a;

            C0527a(a<T> aVar) {
                this.f52644a = aVar;
            }

            @Override // io.reactivex.u
            public void onError(Throwable th2) {
                this.f52644a.d(th2);
            }

            @Override // io.reactivex.u
            public void onSubscribe(th.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.u
            public void onSuccess(T t10) {
                this.f52644a.e(t10);
            }
        }

        a(io.reactivex.r<? super T> rVar) {
            this.f52635a = rVar;
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        void b() {
            io.reactivex.r<? super T> rVar = this.f52635a;
            int i9 = 1;
            while (!this.f52641g) {
                if (this.f52638d.get() != null) {
                    this.f52640f = null;
                    this.f52639e = null;
                    rVar.onError(this.f52638d.terminate());
                    return;
                }
                int i10 = this.f52643i;
                if (i10 == 1) {
                    this.f52640f = null;
                    this.f52643i = 2;
                    rVar.onNext((T) this.f52640f);
                    i10 = 2;
                }
                boolean z10 = this.f52642h;
                yh.f<T> fVar = this.f52639e;
                T poll = fVar != null ? fVar.poll() : (Object) null;
                boolean z11 = poll == null;
                if (z10 && z11 && i10 == 2) {
                    this.f52639e = null;
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
            this.f52640f = null;
            this.f52639e = null;
        }

        yh.f<T> c() {
            yh.f<T> fVar = this.f52639e;
            if (fVar == null) {
                io.reactivex.internal.queue.b bVar = new io.reactivex.internal.queue.b(io.reactivex.k.bufferSize());
                this.f52639e = bVar;
                return bVar;
            }
            return fVar;
        }

        void d(Throwable th2) {
            if (this.f52638d.addThrowable(th2)) {
                DisposableHelper.dispose(this.f52636b);
                a();
                return;
            }
            ci.a.s(th2);
        }

        @Override // th.b
        public void dispose() {
            this.f52641g = true;
            DisposableHelper.dispose(this.f52636b);
            DisposableHelper.dispose(this.f52637c);
            if (getAndIncrement() == 0) {
                this.f52639e = null;
                this.f52640f = null;
            }
        }

        void e(T t10) {
            if (compareAndSet(0, 1)) {
                this.f52635a.onNext(t10);
                this.f52643i = 2;
            } else {
                this.f52640f = t10;
                this.f52643i = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f52636b.get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52642h = true;
            a();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52638d.addThrowable(th2)) {
                DisposableHelper.dispose(this.f52637c);
                a();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (compareAndSet(0, 1)) {
                this.f52635a.onNext(t10);
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
            DisposableHelper.setOnce(this.f52636b, bVar);
        }
    }

    public z1(io.reactivex.k<T> kVar, io.reactivex.v<? extends T> vVar) {
        super(kVar);
        this.f52634b = vVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        a aVar = new a(rVar);
        rVar.onSubscribe(aVar);
        this.f51403a.subscribe(aVar);
        this.f52634b.a(aVar.f52637c);
    }
}
