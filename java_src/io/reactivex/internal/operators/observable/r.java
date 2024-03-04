package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class r<T, U> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends U> f52236b;

    /* renamed from: c  reason: collision with root package name */
    final vh.b<? super U, ? super T> f52237c;

    /* loaded from: classes7.dex */
    static final class a<T, U> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super U> f52238a;

        /* renamed from: b  reason: collision with root package name */
        final vh.b<? super U, ? super T> f52239b;

        /* renamed from: c  reason: collision with root package name */
        final U f52240c;

        /* renamed from: d  reason: collision with root package name */
        th.b f52241d;

        /* renamed from: e  reason: collision with root package name */
        boolean f52242e;

        a(io.reactivex.r<? super U> rVar, U u10, vh.b<? super U, ? super T> bVar) {
            this.f52238a = rVar;
            this.f52239b = bVar;
            this.f52240c = u10;
        }

        @Override // th.b
        public void dispose() {
            this.f52241d.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52241d.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52242e) {
                return;
            }
            this.f52242e = true;
            this.f52238a.onNext((U) this.f52240c);
            this.f52238a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52242e) {
                ci.a.s(th2);
                return;
            }
            this.f52242e = true;
            this.f52238a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52242e) {
                return;
            }
            try {
                this.f52239b.accept((U) this.f52240c, t10);
            } catch (Throwable th2) {
                this.f52241d.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52241d, bVar)) {
                this.f52241d = bVar;
                this.f52238a.onSubscribe(this);
            }
        }
    }

    public r(io.reactivex.p<T> pVar, Callable<? extends U> callable, vh.b<? super U, ? super T> bVar) {
        super(pVar);
        this.f52236b = callable;
        this.f52237c = bVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super U> rVar) {
        try {
            this.f51403a.subscribe(new a(rVar, xh.b.e(this.f52236b.call(), "The initialSupplier returned a null value"), this.f52237c));
        } catch (Throwable th2) {
            EmptyDisposable.error(th2, rVar);
        }
    }
}
