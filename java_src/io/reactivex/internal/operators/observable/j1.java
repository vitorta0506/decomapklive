package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class j1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51856a;

        /* renamed from: b  reason: collision with root package name */
        th.b f51857b;

        a(io.reactivex.r<? super T> rVar) {
            this.f51856a = rVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51857b.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51857b.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51856a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51856a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51856a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51857b, bVar)) {
                this.f51857b = bVar;
                this.f51856a.onSubscribe(this);
            }
        }
    }

    public j1(io.reactivex.p<T> pVar) {
        super(pVar);
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar));
    }
}
