package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class s<T, U> extends io.reactivex.t<U> implements yh.a<U> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f52297a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends U> f52298b;

    /* renamed from: c  reason: collision with root package name */
    final vh.b<? super U, ? super T> f52299c;

    /* loaded from: classes7.dex */
    static final class a<T, U> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.u<? super U> f52300a;

        /* renamed from: b  reason: collision with root package name */
        final vh.b<? super U, ? super T> f52301b;

        /* renamed from: c  reason: collision with root package name */
        final U f52302c;

        /* renamed from: d  reason: collision with root package name */
        th.b f52303d;

        /* renamed from: e  reason: collision with root package name */
        boolean f52304e;

        a(io.reactivex.u<? super U> uVar, U u10, vh.b<? super U, ? super T> bVar) {
            this.f52300a = uVar;
            this.f52301b = bVar;
            this.f52302c = u10;
        }

        @Override // th.b
        public void dispose() {
            this.f52303d.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52303d.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52304e) {
                return;
            }
            this.f52304e = true;
            this.f52300a.onSuccess((U) this.f52302c);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52304e) {
                ci.a.s(th2);
                return;
            }
            this.f52304e = true;
            this.f52300a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52304e) {
                return;
            }
            try {
                this.f52301b.accept((U) this.f52302c, t10);
            } catch (Throwable th2) {
                this.f52303d.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52303d, bVar)) {
                this.f52303d = bVar;
                this.f52300a.onSubscribe(this);
            }
        }
    }

    public s(io.reactivex.p<T> pVar, Callable<? extends U> callable, vh.b<? super U, ? super T> bVar) {
        this.f52297a = pVar;
        this.f52298b = callable;
        this.f52299c = bVar;
    }

    @Override // yh.a
    public io.reactivex.k<U> b() {
        return ci.a.o(new r(this.f52297a, this.f52298b, this.f52299c));
    }

    @Override // io.reactivex.t
    protected void e(io.reactivex.u<? super U> uVar) {
        try {
            this.f52297a.subscribe(new a(uVar, xh.b.e(this.f52298b.call(), "The initialSupplier returned a null value"), this.f52299c));
        } catch (Throwable th2) {
            EmptyDisposable.error(th2, uVar);
        }
    }
}
