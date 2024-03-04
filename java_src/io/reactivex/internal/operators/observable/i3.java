package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class i3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.q<? super T> f51833b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51834a;

        /* renamed from: b  reason: collision with root package name */
        final vh.q<? super T> f51835b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51836c;

        /* renamed from: d  reason: collision with root package name */
        boolean f51837d;

        a(io.reactivex.r<? super T> rVar, vh.q<? super T> qVar) {
            this.f51834a = rVar;
            this.f51835b = qVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51836c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51836c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51834a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51834a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51837d) {
                this.f51834a.onNext(t10);
                return;
            }
            try {
                if (this.f51835b.test(t10)) {
                    return;
                }
                this.f51837d = true;
                this.f51834a.onNext(t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f51836c.dispose();
                this.f51834a.onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51836c, bVar)) {
                this.f51836c = bVar;
                this.f51834a.onSubscribe(this);
            }
        }
    }

    public i3(io.reactivex.p<T> pVar, vh.q<? super T> qVar) {
        super(pVar);
        this.f51833b = qVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f51833b));
    }
}
