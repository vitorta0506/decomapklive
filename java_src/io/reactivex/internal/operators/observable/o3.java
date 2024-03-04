package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class o3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52102a;

        /* renamed from: b  reason: collision with root package name */
        th.b f52103b;

        /* renamed from: c  reason: collision with root package name */
        T f52104c;

        a(io.reactivex.r<? super T> rVar) {
            this.f52102a = rVar;
        }

        void a() {
            T t10 = this.f52104c;
            if (t10 != null) {
                this.f52104c = null;
                this.f52102a.onNext(t10);
            }
            this.f52102a.onComplete();
        }

        @Override // th.b
        public void dispose() {
            this.f52104c = null;
            this.f52103b.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52103b.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52104c = null;
            this.f52102a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52104c = t10;
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52103b, bVar)) {
                this.f52103b = bVar;
                this.f52102a.onSubscribe(this);
            }
        }
    }

    public o3(io.reactivex.p<T> pVar) {
        super(pVar);
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar));
    }
}
