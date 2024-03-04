package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class s3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.q<? super T> f52318b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52319a;

        /* renamed from: b  reason: collision with root package name */
        final vh.q<? super T> f52320b;

        /* renamed from: c  reason: collision with root package name */
        th.b f52321c;

        /* renamed from: d  reason: collision with root package name */
        boolean f52322d;

        a(io.reactivex.r<? super T> rVar, vh.q<? super T> qVar) {
            this.f52319a = rVar;
            this.f52320b = qVar;
        }

        @Override // th.b
        public void dispose() {
            this.f52321c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52321c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52322d) {
                return;
            }
            this.f52322d = true;
            this.f52319a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52322d) {
                ci.a.s(th2);
                return;
            }
            this.f52322d = true;
            this.f52319a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52322d) {
                return;
            }
            try {
                if (!this.f52320b.test(t10)) {
                    this.f52322d = true;
                    this.f52321c.dispose();
                    this.f52319a.onComplete();
                    return;
                }
                this.f52319a.onNext(t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52321c.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52321c, bVar)) {
                this.f52321c = bVar;
                this.f52319a.onSubscribe(this);
            }
        }
    }

    public s3(io.reactivex.p<T> pVar, vh.q<? super T> qVar) {
        super(pVar);
        this.f52318b = qVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52318b));
    }
}
