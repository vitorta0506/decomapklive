package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class w1<T> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.j<T>> {

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super io.reactivex.j<T>> f52504a;

        /* renamed from: b  reason: collision with root package name */
        th.b f52505b;

        a(io.reactivex.r<? super io.reactivex.j<T>> rVar) {
            this.f52504a = rVar;
        }

        @Override // th.b
        public void dispose() {
            this.f52505b.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52505b.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52504a.onNext(io.reactivex.j.a());
            this.f52504a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52504a.onNext(io.reactivex.j.b(th2));
            this.f52504a.onComplete();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52504a.onNext(io.reactivex.j.c(t10));
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52505b, bVar)) {
                this.f52505b = bVar;
                this.f52504a.onSubscribe(this);
            }
        }
    }

    public w1(io.reactivex.p<T> pVar) {
        super(pVar);
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super io.reactivex.j<T>> rVar) {
        this.f51403a.subscribe(new a(rVar));
    }
}
