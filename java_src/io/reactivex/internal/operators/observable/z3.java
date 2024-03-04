package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class z3<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f52663b;

    /* loaded from: classes7.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super U> f52664a;

        /* renamed from: b  reason: collision with root package name */
        th.b f52665b;

        /* renamed from: c  reason: collision with root package name */
        U f52666c;

        a(io.reactivex.r<? super U> rVar, U u10) {
            this.f52664a = rVar;
            this.f52666c = u10;
        }

        @Override // th.b
        public void dispose() {
            this.f52665b.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52665b.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            U u10 = this.f52666c;
            this.f52666c = null;
            this.f52664a.onNext(u10);
            this.f52664a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52666c = null;
            this.f52664a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52666c.add(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52665b, bVar)) {
                this.f52665b = bVar;
                this.f52664a.onSubscribe(this);
            }
        }
    }

    public z3(io.reactivex.p<T> pVar, int i9) {
        super(pVar);
        this.f52663b = xh.a.e(i9);
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super U> rVar) {
        try {
            this.f51403a.subscribe(new a(rVar, (Collection) xh.b.e(this.f52663b.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.error(th2, rVar);
        }
    }

    public z3(io.reactivex.p<T> pVar, Callable<U> callable) {
        super(pVar);
        this.f52663b = callable;
    }
}
