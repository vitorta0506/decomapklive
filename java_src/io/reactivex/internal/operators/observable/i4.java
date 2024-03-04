package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class i4<T, U, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final vh.c<? super T, ? super U, ? extends R> f51838b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.p<? extends U> f51839c;

    /* loaded from: classes7.dex */
    static final class a<T, U, R> extends AtomicReference<U> implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = -312246233408980075L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f51840a;

        /* renamed from: b  reason: collision with root package name */
        final vh.c<? super T, ? super U, ? extends R> f51841b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<th.b> f51842c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<th.b> f51843d = new AtomicReference<>();

        a(io.reactivex.r<? super R> rVar, vh.c<? super T, ? super U, ? extends R> cVar) {
            this.f51840a = rVar;
            this.f51841b = cVar;
        }

        public void a(Throwable th2) {
            DisposableHelper.dispose(this.f51842c);
            this.f51840a.onError(th2);
        }

        public boolean b(th.b bVar) {
            return DisposableHelper.setOnce(this.f51843d, bVar);
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this.f51842c);
            DisposableHelper.dispose(this.f51843d);
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f51842c.get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            DisposableHelper.dispose(this.f51843d);
            this.f51840a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            DisposableHelper.dispose(this.f51843d);
            this.f51840a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            U u10 = get();
            if (u10 != null) {
                try {
                    this.f51840a.onNext(xh.b.e(this.f51841b.apply(t10, u10), "The combiner returned a null value"));
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    dispose();
                    this.f51840a.onError(th2);
                }
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f51842c, bVar);
        }
    }

    /* loaded from: classes7.dex */
    final class b implements io.reactivex.r<U> {

        /* renamed from: a  reason: collision with root package name */
        private final a<T, U, R> f51844a;

        b(a<T, U, R> aVar) {
            this.f51844a = aVar;
        }

        @Override // io.reactivex.r
        public void onComplete() {
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51844a.a(th2);
        }

        @Override // io.reactivex.r
        public void onNext(U u10) {
            this.f51844a.lazySet(u10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            this.f51844a.b(bVar);
        }
    }

    public i4(io.reactivex.p<T> pVar, vh.c<? super T, ? super U, ? extends R> cVar, io.reactivex.p<? extends U> pVar2) {
        super(pVar);
        this.f51838b = cVar;
        this.f51839c = pVar2;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super R> rVar) {
        io.reactivex.observers.d dVar = new io.reactivex.observers.d(rVar);
        a aVar = new a(dVar, this.f51838b);
        dVar.onSubscribe(aVar);
        this.f51839c.subscribe(new b(aVar));
        this.f51403a.subscribe(aVar);
    }
}
