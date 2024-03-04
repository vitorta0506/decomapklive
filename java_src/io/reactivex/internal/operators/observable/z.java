package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class z<T> extends io.reactivex.internal.operators.observable.a<T, Long> {

    /* loaded from: classes7.dex */
    static final class a implements io.reactivex.r<Object>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super Long> f52619a;

        /* renamed from: b  reason: collision with root package name */
        th.b f52620b;

        /* renamed from: c  reason: collision with root package name */
        long f52621c;

        a(io.reactivex.r<? super Long> rVar) {
            this.f52619a = rVar;
        }

        @Override // th.b
        public void dispose() {
            this.f52620b.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52620b.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52619a.onNext(Long.valueOf(this.f52621c));
            this.f52619a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52619a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(Object obj) {
            this.f52621c++;
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52620b, bVar)) {
                this.f52620b = bVar;
                this.f52619a.onSubscribe(this);
            }
        }
    }

    public z(io.reactivex.p<T> pVar) {
        super(pVar);
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super Long> rVar) {
        this.f51403a.subscribe(new a(rVar));
    }
}
