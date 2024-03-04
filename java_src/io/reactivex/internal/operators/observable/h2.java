package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class h2<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super io.reactivex.k<T>, ? extends io.reactivex.p<R>> f51735b;

    /* loaded from: classes7.dex */
    static final class a<T, R> implements io.reactivex.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final ei.a<T> f51736a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<th.b> f51737b;

        a(ei.a<T> aVar, AtomicReference<th.b> atomicReference) {
            this.f51736a = aVar;
            this.f51737b = atomicReference;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51736a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51736a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51736a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f51737b, bVar);
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T, R> extends AtomicReference<th.b> implements io.reactivex.r<R>, th.b {
        private static final long serialVersionUID = 854110278590336484L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f51738a;

        /* renamed from: b  reason: collision with root package name */
        th.b f51739b;

        b(io.reactivex.r<? super R> rVar) {
            this.f51738a = rVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51739b.dispose();
            DisposableHelper.dispose(this);
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51739b.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            DisposableHelper.dispose(this);
            this.f51738a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            DisposableHelper.dispose(this);
            this.f51738a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(R r10) {
            this.f51738a.onNext(r10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51739b, bVar)) {
                this.f51739b = bVar;
                this.f51738a.onSubscribe(this);
            }
        }
    }

    public h2(io.reactivex.p<T> pVar, vh.o<? super io.reactivex.k<T>, ? extends io.reactivex.p<R>> oVar) {
        super(pVar);
        this.f51735b = oVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super R> rVar) {
        ei.a e10 = ei.a.e();
        try {
            io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f51735b.apply(e10), "The selector returned a null ObservableSource");
            b bVar = new b(rVar);
            pVar.subscribe(bVar);
            this.f51403a.subscribe(new a(e10, bVar));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.error(th2, rVar);
        }
    }
}
