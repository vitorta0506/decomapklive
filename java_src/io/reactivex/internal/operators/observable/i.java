package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class i<T> extends io.reactivex.internal.operators.observable.a<T, Boolean> {

    /* renamed from: b  reason: collision with root package name */
    final vh.q<? super T> f51794b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super Boolean> f51795a;

        /* renamed from: b  reason: collision with root package name */
        final vh.q<? super T> f51796b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51797c;

        /* renamed from: d  reason: collision with root package name */
        boolean f51798d;

        a(io.reactivex.r<? super Boolean> rVar, vh.q<? super T> qVar) {
            this.f51795a = rVar;
            this.f51796b = qVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51797c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51797c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51798d) {
                return;
            }
            this.f51798d = true;
            this.f51795a.onNext(Boolean.FALSE);
            this.f51795a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51798d) {
                ci.a.s(th2);
                return;
            }
            this.f51798d = true;
            this.f51795a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51798d) {
                return;
            }
            try {
                if (this.f51796b.test(t10)) {
                    this.f51798d = true;
                    this.f51797c.dispose();
                    this.f51795a.onNext(Boolean.TRUE);
                    this.f51795a.onComplete();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f51797c.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51797c, bVar)) {
                this.f51797c = bVar;
                this.f51795a.onSubscribe(this);
            }
        }
    }

    public i(io.reactivex.p<T> pVar, vh.q<? super T> qVar) {
        super(pVar);
        this.f51794b = qVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super Boolean> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f51794b));
    }
}
