package io.reactivex.internal.operators.observable;
/* loaded from: classes7.dex */
public final class k1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51889a;

        /* renamed from: b  reason: collision with root package name */
        th.b f51890b;

        a(io.reactivex.r<? super T> rVar) {
            this.f51889a = rVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51890b.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51890b.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51889a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51889a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            this.f51890b = bVar;
            this.f51889a.onSubscribe(this);
        }
    }

    public k1(io.reactivex.p<T> pVar) {
        super(pVar);
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar));
    }
}
