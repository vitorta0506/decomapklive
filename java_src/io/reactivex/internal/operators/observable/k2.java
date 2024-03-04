package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class k2<T> extends io.reactivex.g<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f51891a;

    /* renamed from: b  reason: collision with root package name */
    final vh.c<T, T, T> f51892b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.h<? super T> f51893a;

        /* renamed from: b  reason: collision with root package name */
        final vh.c<T, T, T> f51894b;

        /* renamed from: c  reason: collision with root package name */
        boolean f51895c;

        /* renamed from: d  reason: collision with root package name */
        T f51896d;

        /* renamed from: e  reason: collision with root package name */
        th.b f51897e;

        a(io.reactivex.h<? super T> hVar, vh.c<T, T, T> cVar) {
            this.f51893a = hVar;
            this.f51894b = cVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51897e.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51897e.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51895c) {
                return;
            }
            this.f51895c = true;
            T t10 = this.f51896d;
            this.f51896d = null;
            if (t10 != null) {
                this.f51893a.onSuccess(t10);
            } else {
                this.f51893a.onComplete();
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51895c) {
                ci.a.s(th2);
                return;
            }
            this.f51895c = true;
            this.f51896d = null;
            this.f51893a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51895c) {
                return;
            }
            T t11 = this.f51896d;
            if (t11 == null) {
                this.f51896d = t10;
                return;
            }
            try {
                this.f51896d = (T) xh.b.e(this.f51894b.apply(t11, t10), "The reducer returned a null value");
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f51897e.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51897e, bVar)) {
                this.f51897e = bVar;
                this.f51893a.onSubscribe(this);
            }
        }
    }

    public k2(io.reactivex.p<T> pVar, vh.c<T, T, T> cVar) {
        this.f51891a = pVar;
        this.f51892b = cVar;
    }

    @Override // io.reactivex.g
    protected void d(io.reactivex.h<? super T> hVar) {
        this.f51891a.subscribe(new a(hVar, this.f51892b));
    }
}
