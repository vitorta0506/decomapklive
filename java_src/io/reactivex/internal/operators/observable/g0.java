package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;
/* loaded from: classes7.dex */
public final class g0<T, U> extends io.reactivex.k<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<? extends T> f51671a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.p<U> f51672b;

    /* loaded from: classes7.dex */
    final class a implements io.reactivex.r<U> {

        /* renamed from: a  reason: collision with root package name */
        final SequentialDisposable f51673a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.r<? super T> f51674b;

        /* renamed from: c  reason: collision with root package name */
        boolean f51675c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.reactivex.internal.operators.observable.g0$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public final class C0514a implements io.reactivex.r<T> {
            C0514a() {
            }

            @Override // io.reactivex.r
            public void onComplete() {
                a.this.f51674b.onComplete();
            }

            @Override // io.reactivex.r
            public void onError(Throwable th2) {
                a.this.f51674b.onError(th2);
            }

            @Override // io.reactivex.r
            public void onNext(T t10) {
                a.this.f51674b.onNext(t10);
            }

            @Override // io.reactivex.r
            public void onSubscribe(th.b bVar) {
                a.this.f51673a.update(bVar);
            }
        }

        a(SequentialDisposable sequentialDisposable, io.reactivex.r<? super T> rVar) {
            this.f51673a = sequentialDisposable;
            this.f51674b = rVar;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51675c) {
                return;
            }
            this.f51675c = true;
            g0.this.f51671a.subscribe(new C0514a());
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51675c) {
                ci.a.s(th2);
                return;
            }
            this.f51675c = true;
            this.f51674b.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(U u10) {
            onComplete();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            this.f51673a.update(bVar);
        }
    }

    public g0(io.reactivex.p<? extends T> pVar, io.reactivex.p<U> pVar2) {
        this.f51671a = pVar;
        this.f51672b = pVar2;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        rVar.onSubscribe(sequentialDisposable);
        this.f51672b.subscribe(new a(sequentialDisposable, rVar));
    }
}
