package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class a0<T> extends io.reactivex.t<Long> implements yh.a<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f51404a;

    /* loaded from: classes7.dex */
    static final class a implements io.reactivex.r<Object>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.u<? super Long> f51405a;

        /* renamed from: b  reason: collision with root package name */
        th.b f51406b;

        /* renamed from: c  reason: collision with root package name */
        long f51407c;

        a(io.reactivex.u<? super Long> uVar) {
            this.f51405a = uVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51406b.dispose();
            this.f51406b = DisposableHelper.DISPOSED;
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51406b.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51406b = DisposableHelper.DISPOSED;
            this.f51405a.onSuccess(Long.valueOf(this.f51407c));
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51406b = DisposableHelper.DISPOSED;
            this.f51405a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(Object obj) {
            this.f51407c++;
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51406b, bVar)) {
                this.f51406b = bVar;
                this.f51405a.onSubscribe(this);
            }
        }
    }

    public a0(io.reactivex.p<T> pVar) {
        this.f51404a = pVar;
    }

    @Override // yh.a
    public io.reactivex.k<Long> b() {
        return ci.a.o(new z(this.f51404a));
    }

    @Override // io.reactivex.t
    public void e(io.reactivex.u<? super Long> uVar) {
        this.f51404a.subscribe(new a(uVar));
    }
}
