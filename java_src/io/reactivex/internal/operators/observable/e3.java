package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class e3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f51592b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51593a;

        /* renamed from: b  reason: collision with root package name */
        long f51594b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51595c;

        a(io.reactivex.r<? super T> rVar, long j10) {
            this.f51593a = rVar;
            this.f51594b = j10;
        }

        @Override // th.b
        public void dispose() {
            this.f51595c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51595c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51593a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51593a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            long j10 = this.f51594b;
            if (j10 != 0) {
                this.f51594b = j10 - 1;
            } else {
                this.f51593a.onNext(t10);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51595c, bVar)) {
                this.f51595c = bVar;
                this.f51593a.onSubscribe(this);
            }
        }
    }

    public e3(io.reactivex.p<T> pVar, long j10) {
        super(pVar);
        this.f51592b = j10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f51592b));
    }
}
