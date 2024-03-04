package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class q2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super io.reactivex.k<Object>, ? extends io.reactivex.p<?>> f52220b;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = 802743776666017014L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52221a;

        /* renamed from: d  reason: collision with root package name */
        final ei.c<Object> f52224d;

        /* renamed from: g  reason: collision with root package name */
        final io.reactivex.p<T> f52227g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f52228h;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f52222b = new AtomicInteger();

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f52223c = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final a<T>.C0517a f52225e = new C0517a();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<th.b> f52226f = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.observable.q2$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        final class C0517a extends AtomicReference<th.b> implements io.reactivex.r<Object> {
            private static final long serialVersionUID = 3254781284376480842L;

            C0517a() {
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

        a(io.reactivex.r<? super T> rVar, ei.c<Object> cVar, io.reactivex.p<T> pVar) {
            this.f52221a = rVar;
            this.f52224d = cVar;
            this.f52227g = pVar;
        }

        void a() {
            DisposableHelper.dispose(this.f52226f);
            io.reactivex.internal.util.g.b(this.f52221a, this, this.f52223c);
        }

        void b(Throwable th2) {
            DisposableHelper.dispose(this.f52226f);
            io.reactivex.internal.util.g.d(this.f52221a, th2, this, this.f52223c);
        }

        void c() {
            d();
        }

        void d() {
            if (this.f52222b.getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.f52228h) {
                        this.f52228h = true;
                        this.f52227g.subscribe(this);
                    }
                    if (this.f52222b.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this.f52226f);
            DisposableHelper.dispose(this.f52225e);
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f52226f.get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            DisposableHelper.replace(this.f52226f, null);
            this.f52228h = false;
            this.f52224d.onNext(0);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            DisposableHelper.dispose(this.f52225e);
            io.reactivex.internal.util.g.d(this.f52221a, th2, this, this.f52223c);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            io.reactivex.internal.util.g.f(this.f52221a, t10, this, this.f52223c);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f52226f, bVar);
        }
    }

    public q2(io.reactivex.p<T> pVar, vh.o<? super io.reactivex.k<Object>, ? extends io.reactivex.p<?>> oVar) {
        super(pVar);
        this.f52220b = oVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        ei.c<T> c10 = ei.a.e().c();
        try {
            io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f52220b.apply(c10), "The handler returned a null ObservableSource");
            a aVar = new a(rVar, c10, this.f51403a);
            rVar.onSubscribe(aVar);
            pVar.subscribe(aVar.f52225e);
            aVar.d();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.error(th2, rVar);
        }
    }
}
