package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class j<T> extends io.reactivex.t<Boolean> implements yh.a<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f51846a;

    /* renamed from: b  reason: collision with root package name */
    final vh.q<? super T> f51847b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.u<? super Boolean> f51848a;

        /* renamed from: b  reason: collision with root package name */
        final vh.q<? super T> f51849b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51850c;

        /* renamed from: d  reason: collision with root package name */
        boolean f51851d;

        a(io.reactivex.u<? super Boolean> uVar, vh.q<? super T> qVar) {
            this.f51848a = uVar;
            this.f51849b = qVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51850c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51850c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51851d) {
                return;
            }
            this.f51851d = true;
            this.f51848a.onSuccess(Boolean.FALSE);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51851d) {
                ci.a.s(th2);
                return;
            }
            this.f51851d = true;
            this.f51848a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51851d) {
                return;
            }
            try {
                if (this.f51849b.test(t10)) {
                    this.f51851d = true;
                    this.f51850c.dispose();
                    this.f51848a.onSuccess(Boolean.TRUE);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f51850c.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51850c, bVar)) {
                this.f51850c = bVar;
                this.f51848a.onSubscribe(this);
            }
        }
    }

    public j(io.reactivex.p<T> pVar, vh.q<? super T> qVar) {
        this.f51846a = pVar;
        this.f51847b = qVar;
    }

    @Override // yh.a
    public io.reactivex.k<Boolean> b() {
        return ci.a.o(new i(this.f51846a, this.f51847b));
    }

    @Override // io.reactivex.t
    protected void e(io.reactivex.u<? super Boolean> uVar) {
        this.f51846a.subscribe(new a(uVar, this.f51847b));
    }
}
