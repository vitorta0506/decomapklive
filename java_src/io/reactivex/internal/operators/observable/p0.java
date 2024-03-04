package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;
/* loaded from: classes7.dex */
public final class p0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f52141b;

    /* renamed from: c  reason: collision with root package name */
    final T f52142c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f52143d;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52144a;

        /* renamed from: b  reason: collision with root package name */
        final long f52145b;

        /* renamed from: c  reason: collision with root package name */
        final T f52146c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f52147d;

        /* renamed from: e  reason: collision with root package name */
        th.b f52148e;

        /* renamed from: f  reason: collision with root package name */
        long f52149f;

        /* renamed from: g  reason: collision with root package name */
        boolean f52150g;

        a(io.reactivex.r<? super T> rVar, long j10, T t10, boolean z10) {
            this.f52144a = rVar;
            this.f52145b = j10;
            this.f52146c = t10;
            this.f52147d = z10;
        }

        @Override // th.b
        public void dispose() {
            this.f52148e.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52148e.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52150g) {
                return;
            }
            this.f52150g = true;
            T t10 = this.f52146c;
            if (t10 == null && this.f52147d) {
                this.f52144a.onError(new NoSuchElementException());
                return;
            }
            if (t10 != null) {
                this.f52144a.onNext(t10);
            }
            this.f52144a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52150g) {
                ci.a.s(th2);
                return;
            }
            this.f52150g = true;
            this.f52144a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52150g) {
                return;
            }
            long j10 = this.f52149f;
            if (j10 == this.f52145b) {
                this.f52150g = true;
                this.f52148e.dispose();
                this.f52144a.onNext(t10);
                this.f52144a.onComplete();
                return;
            }
            this.f52149f = j10 + 1;
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52148e, bVar)) {
                this.f52148e = bVar;
                this.f52144a.onSubscribe(this);
            }
        }
    }

    public p0(io.reactivex.p<T> pVar, long j10, T t10, boolean z10) {
        super(pVar);
        this.f52141b = j10;
        this.f52142c = t10;
        this.f52143d = z10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52141b, this.f52142c, this.f52143d));
    }
}
