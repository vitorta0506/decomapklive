package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class f<T> extends io.reactivex.internal.operators.observable.a<T, Boolean> {

    /* renamed from: b  reason: collision with root package name */
    final vh.q<? super T> f51611b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super Boolean> f51612a;

        /* renamed from: b  reason: collision with root package name */
        final vh.q<? super T> f51613b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51614c;

        /* renamed from: d  reason: collision with root package name */
        boolean f51615d;

        a(io.reactivex.r<? super Boolean> rVar, vh.q<? super T> qVar) {
            this.f51612a = rVar;
            this.f51613b = qVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51614c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51614c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51615d) {
                return;
            }
            this.f51615d = true;
            this.f51612a.onNext(Boolean.TRUE);
            this.f51612a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51615d) {
                ci.a.s(th2);
                return;
            }
            this.f51615d = true;
            this.f51612a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51615d) {
                return;
            }
            try {
                if (this.f51613b.test(t10)) {
                    return;
                }
                this.f51615d = true;
                this.f51614c.dispose();
                this.f51612a.onNext(Boolean.FALSE);
                this.f51612a.onComplete();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f51614c.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51614c, bVar)) {
                this.f51614c = bVar;
                this.f51612a.onSubscribe(this);
            }
        }
    }

    public f(io.reactivex.p<T> pVar, vh.q<? super T> qVar) {
        super(pVar);
        this.f51611b = qVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super Boolean> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f51611b));
    }
}
