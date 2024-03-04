package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class r1<T> extends io.reactivex.g<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f52252a;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.h<? super T> f52253a;

        /* renamed from: b  reason: collision with root package name */
        th.b f52254b;

        /* renamed from: c  reason: collision with root package name */
        T f52255c;

        a(io.reactivex.h<? super T> hVar) {
            this.f52253a = hVar;
        }

        @Override // th.b
        public void dispose() {
            this.f52254b.dispose();
            this.f52254b = DisposableHelper.DISPOSED;
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52254b == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52254b = DisposableHelper.DISPOSED;
            T t10 = this.f52255c;
            if (t10 != null) {
                this.f52255c = null;
                this.f52253a.onSuccess(t10);
                return;
            }
            this.f52253a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52254b = DisposableHelper.DISPOSED;
            this.f52255c = null;
            this.f52253a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52255c = t10;
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52254b, bVar)) {
                this.f52254b = bVar;
                this.f52253a.onSubscribe(this);
            }
        }
    }

    public r1(io.reactivex.p<T> pVar) {
        this.f52252a = pVar;
    }

    @Override // io.reactivex.g
    protected void d(io.reactivex.h<? super T> hVar) {
        this.f52252a.subscribe(new a(hVar));
    }
}
