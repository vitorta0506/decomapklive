package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class g<T> extends io.reactivex.t<Boolean> implements yh.a<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f51665a;

    /* renamed from: b  reason: collision with root package name */
    final vh.q<? super T> f51666b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.u<? super Boolean> f51667a;

        /* renamed from: b  reason: collision with root package name */
        final vh.q<? super T> f51668b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51669c;

        /* renamed from: d  reason: collision with root package name */
        boolean f51670d;

        a(io.reactivex.u<? super Boolean> uVar, vh.q<? super T> qVar) {
            this.f51667a = uVar;
            this.f51668b = qVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51669c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51669c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51670d) {
                return;
            }
            this.f51670d = true;
            this.f51667a.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51670d) {
                ci.a.s(th2);
                return;
            }
            this.f51670d = true;
            this.f51667a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51670d) {
                return;
            }
            try {
                if (this.f51668b.test(t10)) {
                    return;
                }
                this.f51670d = true;
                this.f51669c.dispose();
                this.f51667a.onSuccess(Boolean.FALSE);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f51669c.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51669c, bVar)) {
                this.f51669c = bVar;
                this.f51667a.onSubscribe(this);
            }
        }
    }

    public g(io.reactivex.p<T> pVar, vh.q<? super T> qVar) {
        this.f51665a = pVar;
        this.f51666b = qVar;
    }

    @Override // yh.a
    public io.reactivex.k<Boolean> b() {
        return ci.a.o(new f(this.f51665a, this.f51666b));
    }

    @Override // io.reactivex.t
    protected void e(io.reactivex.u<? super Boolean> uVar) {
        this.f51665a.subscribe(new a(uVar, this.f51666b));
    }
}
