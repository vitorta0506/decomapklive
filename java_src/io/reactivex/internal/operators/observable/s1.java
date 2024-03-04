package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;
/* loaded from: classes7.dex */
public final class s1<T> extends io.reactivex.t<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f52306a;

    /* renamed from: b  reason: collision with root package name */
    final T f52307b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.u<? super T> f52308a;

        /* renamed from: b  reason: collision with root package name */
        final T f52309b;

        /* renamed from: c  reason: collision with root package name */
        th.b f52310c;

        /* renamed from: d  reason: collision with root package name */
        T f52311d;

        a(io.reactivex.u<? super T> uVar, T t10) {
            this.f52308a = uVar;
            this.f52309b = t10;
        }

        @Override // th.b
        public void dispose() {
            this.f52310c.dispose();
            this.f52310c = DisposableHelper.DISPOSED;
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52310c == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52310c = DisposableHelper.DISPOSED;
            T t10 = this.f52311d;
            if (t10 != null) {
                this.f52311d = null;
                this.f52308a.onSuccess(t10);
                return;
            }
            T t11 = this.f52309b;
            if (t11 != null) {
                this.f52308a.onSuccess(t11);
            } else {
                this.f52308a.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52310c = DisposableHelper.DISPOSED;
            this.f52311d = null;
            this.f52308a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52311d = t10;
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52310c, bVar)) {
                this.f52310c = bVar;
                this.f52308a.onSubscribe(this);
            }
        }
    }

    public s1(io.reactivex.p<T> pVar, T t10) {
        this.f52306a = pVar;
        this.f52307b = t10;
    }

    @Override // io.reactivex.t
    protected void e(io.reactivex.u<? super T> uVar) {
        this.f52306a.subscribe(new a(uVar, this.f52307b));
    }
}
