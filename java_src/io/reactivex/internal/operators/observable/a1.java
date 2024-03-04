package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class a1<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, ? extends Iterable<? extends R>> f51408b;

    /* loaded from: classes7.dex */
    static final class a<T, R> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f51409a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super T, ? extends Iterable<? extends R>> f51410b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51411c;

        a(io.reactivex.r<? super R> rVar, vh.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f51409a = rVar;
            this.f51410b = oVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51411c.dispose();
            this.f51411c = DisposableHelper.DISPOSED;
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51411c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            th.b bVar = this.f51411c;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar == disposableHelper) {
                return;
            }
            this.f51411c = disposableHelper;
            this.f51409a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            th.b bVar = this.f51411c;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar == disposableHelper) {
                ci.a.s(th2);
                return;
            }
            this.f51411c = disposableHelper;
            this.f51409a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51411c == DisposableHelper.DISPOSED) {
                return;
            }
            try {
                io.reactivex.r<? super R> rVar = this.f51409a;
                for (R r10 : this.f51410b.apply(t10)) {
                    try {
                        try {
                            rVar.onNext((Object) xh.b.e(r10, "The iterator returned a null value"));
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            this.f51411c.dispose();
                            onError(th2);
                            return;
                        }
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        this.f51411c.dispose();
                        onError(th3);
                        return;
                    }
                }
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                this.f51411c.dispose();
                onError(th4);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51411c, bVar)) {
                this.f51411c = bVar;
                this.f51409a.onSubscribe(this);
            }
        }
    }

    public a1(io.reactivex.p<T> pVar, vh.o<? super T, ? extends Iterable<? extends R>> oVar) {
        super(pVar);
        this.f51408b = oVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super R> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f51408b));
    }
}
