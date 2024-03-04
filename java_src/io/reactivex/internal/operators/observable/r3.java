package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class r3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.q<? super T> f52292b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52293a;

        /* renamed from: b  reason: collision with root package name */
        final vh.q<? super T> f52294b;

        /* renamed from: c  reason: collision with root package name */
        th.b f52295c;

        /* renamed from: d  reason: collision with root package name */
        boolean f52296d;

        a(io.reactivex.r<? super T> rVar, vh.q<? super T> qVar) {
            this.f52293a = rVar;
            this.f52294b = qVar;
        }

        @Override // th.b
        public void dispose() {
            this.f52295c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52295c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52296d) {
                return;
            }
            this.f52296d = true;
            this.f52293a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (!this.f52296d) {
                this.f52296d = true;
                this.f52293a.onError(th2);
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52296d) {
                return;
            }
            this.f52293a.onNext(t10);
            try {
                if (this.f52294b.test(t10)) {
                    this.f52296d = true;
                    this.f52295c.dispose();
                    this.f52293a.onComplete();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52295c.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52295c, bVar)) {
                this.f52295c = bVar;
                this.f52293a.onSubscribe(this);
            }
        }
    }

    public r3(io.reactivex.p<T> pVar, vh.q<? super T> qVar) {
        super(pVar);
        this.f52292b = qVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52292b));
    }
}
