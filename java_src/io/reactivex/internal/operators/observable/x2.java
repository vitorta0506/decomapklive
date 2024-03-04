package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class x2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.c<T, T, T> f52553b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52554a;

        /* renamed from: b  reason: collision with root package name */
        final vh.c<T, T, T> f52555b;

        /* renamed from: c  reason: collision with root package name */
        th.b f52556c;

        /* renamed from: d  reason: collision with root package name */
        T f52557d;

        /* renamed from: e  reason: collision with root package name */
        boolean f52558e;

        a(io.reactivex.r<? super T> rVar, vh.c<T, T, T> cVar) {
            this.f52554a = rVar;
            this.f52555b = cVar;
        }

        @Override // th.b
        public void dispose() {
            this.f52556c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52556c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52558e) {
                return;
            }
            this.f52558e = true;
            this.f52554a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52558e) {
                ci.a.s(th2);
                return;
            }
            this.f52558e = true;
            this.f52554a.onError(th2);
        }

        /* JADX WARN: Type inference failed for: r4v3, types: [T, java.lang.Object] */
        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52558e) {
                return;
            }
            io.reactivex.r<? super T> rVar = this.f52554a;
            T t11 = this.f52557d;
            if (t11 == null) {
                this.f52557d = t10;
                rVar.onNext(t10);
                return;
            }
            try {
                ?? r42 = (T) xh.b.e(this.f52555b.apply(t11, t10), "The value returned by the accumulator is null");
                this.f52557d = r42;
                rVar.onNext(r42);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52556c.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52556c, bVar)) {
                this.f52556c = bVar;
                this.f52554a.onSubscribe(this);
            }
        }
    }

    public x2(io.reactivex.p<T> pVar, vh.c<T, T, T> cVar) {
        super(pVar);
        this.f52553b = cVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52553b));
    }
}
