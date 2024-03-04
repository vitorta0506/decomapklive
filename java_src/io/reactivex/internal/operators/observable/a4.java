package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class a4<T, U extends Collection<? super T>> extends io.reactivex.t<U> implements yh.a<U> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f51431a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f51432b;

    /* loaded from: classes7.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.u<? super U> f51433a;

        /* renamed from: b  reason: collision with root package name */
        U f51434b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51435c;

        a(io.reactivex.u<? super U> uVar, U u10) {
            this.f51433a = uVar;
            this.f51434b = u10;
        }

        @Override // th.b
        public void dispose() {
            this.f51435c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51435c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            U u10 = this.f51434b;
            this.f51434b = null;
            this.f51433a.onSuccess(u10);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51434b = null;
            this.f51433a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51434b.add(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51435c, bVar)) {
                this.f51435c = bVar;
                this.f51433a.onSubscribe(this);
            }
        }
    }

    public a4(io.reactivex.p<T> pVar, int i9) {
        this.f51431a = pVar;
        this.f51432b = xh.a.e(i9);
    }

    @Override // yh.a
    public io.reactivex.k<U> b() {
        return ci.a.o(new z3(this.f51431a, this.f51432b));
    }

    @Override // io.reactivex.t
    public void e(io.reactivex.u<? super U> uVar) {
        try {
            this.f51431a.subscribe(new a(uVar, (Collection) xh.b.e(this.f51432b.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.error(th2, uVar);
        }
    }

    public a4(io.reactivex.p<T> pVar, Callable<U> callable) {
        this.f51431a = pVar;
        this.f51432b = callable;
    }
}
