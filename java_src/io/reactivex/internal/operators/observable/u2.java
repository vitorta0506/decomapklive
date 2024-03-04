package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class u2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super io.reactivex.k<Throwable>, ? extends io.reactivex.p<?>> f52393b;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = 802743776666017014L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52394a;

        /* renamed from: d  reason: collision with root package name */
        final ei.c<Throwable> f52397d;

        /* renamed from: g  reason: collision with root package name */
        final io.reactivex.p<T> f52400g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f52401h;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f52395b = new AtomicInteger();

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f52396c = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final a<T>.C0520a f52398e = new C0520a();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<th.b> f52399f = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.observable.u2$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        final class C0520a extends AtomicReference<th.b> implements io.reactivex.r<Object> {
            private static final long serialVersionUID = 3254781284376480842L;

            C0520a() {
            }

            @Override // io.reactivex.r
            public void onComplete() {
                a.this.a();
            }

            @Override // io.reactivex.r
            public void onError(Throwable th2) {
                a.this.b(th2);
            }

            @Override // io.reactivex.r
            public void onNext(Object obj) {
                a.this.c();
            }

            @Override // io.reactivex.r
            public void onSubscribe(th.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        a(io.reactivex.r<? super T> rVar, ei.c<Throwable> cVar, io.reactivex.p<T> pVar) {
            this.f52394a = rVar;
            this.f52397d = cVar;
            this.f52400g = pVar;
        }

        void a() {
            DisposableHelper.dispose(this.f52399f);
            io.reactivex.internal.util.g.b(this.f52394a, this, this.f52396c);
        }

        void b(Throwable th2) {
            DisposableHelper.dispose(this.f52399f);
            io.reactivex.internal.util.g.d(this.f52394a, th2, this, this.f52396c);
        }

        void c() {
            d();
        }

        void d() {
            if (this.f52395b.getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.f52401h) {
                        this.f52401h = true;
                        this.f52400g.subscribe(this);
                    }
                    if (this.f52395b.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this.f52399f);
            DisposableHelper.dispose(this.f52398e);
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f52399f.get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            DisposableHelper.dispose(this.f52398e);
            io.reactivex.internal.util.g.b(this.f52394a, this, this.f52396c);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            DisposableHelper.replace(this.f52399f, null);
            this.f52401h = false;
            this.f52397d.onNext(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            io.reactivex.internal.util.g.f(this.f52394a, t10, this, this.f52396c);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.replace(this.f52399f, bVar);
        }
    }

    public u2(io.reactivex.p<T> pVar, vh.o<? super io.reactivex.k<Throwable>, ? extends io.reactivex.p<?>> oVar) {
        super(pVar);
        this.f52393b = oVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        ei.c<T> c10 = ei.a.e().c();
        try {
            io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f52393b.apply(c10), "The handler returned a null ObservableSource");
            a aVar = new a(rVar, c10, this.f51403a);
            rVar.onSubscribe(aVar);
            pVar.subscribe(aVar.f52398e);
            aVar.d();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.error(th2, rVar);
        }
    }
}
