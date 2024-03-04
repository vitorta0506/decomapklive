package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class h0<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, ? extends io.reactivex.j<R>> f51720b;

    /* loaded from: classes7.dex */
    static final class a<T, R> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f51721a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.j<R>> f51722b;

        /* renamed from: c  reason: collision with root package name */
        boolean f51723c;

        /* renamed from: d  reason: collision with root package name */
        th.b f51724d;

        a(io.reactivex.r<? super R> rVar, vh.o<? super T, ? extends io.reactivex.j<R>> oVar) {
            this.f51721a = rVar;
            this.f51722b = oVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51724d.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51724d.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51723c) {
                return;
            }
            this.f51723c = true;
            this.f51721a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51723c) {
                ci.a.s(th2);
                return;
            }
            this.f51723c = true;
            this.f51721a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51723c) {
                if (t10 instanceof io.reactivex.j) {
                    io.reactivex.j jVar = (io.reactivex.j) t10;
                    if (jVar.g()) {
                        ci.a.s(jVar.d());
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                io.reactivex.j jVar2 = (io.reactivex.j) xh.b.e(this.f51722b.apply(t10), "The selector returned a null Notification");
                if (jVar2.g()) {
                    this.f51724d.dispose();
                    onError(jVar2.d());
                } else if (jVar2.f()) {
                    this.f51724d.dispose();
                    onComplete();
                } else {
                    this.f51721a.onNext((Object) jVar2.e());
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f51724d.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51724d, bVar)) {
                this.f51724d = bVar;
                this.f51721a.onSubscribe(this);
            }
        }
    }

    public h0(io.reactivex.p<T> pVar, vh.o<? super T, ? extends io.reactivex.j<R>> oVar) {
        super(pVar);
        this.f51720b = oVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super R> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f51720b));
    }
}
