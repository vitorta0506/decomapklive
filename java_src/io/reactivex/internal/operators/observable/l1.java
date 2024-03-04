package io.reactivex.internal.operators.observable;
/* loaded from: classes7.dex */
public final class l1<T> extends io.reactivex.a implements yh.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f51937a;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.b f51938a;

        /* renamed from: b  reason: collision with root package name */
        th.b f51939b;

        a(io.reactivex.b bVar) {
            this.f51938a = bVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51939b.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51939b.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51938a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51938a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            this.f51939b = bVar;
            this.f51938a.onSubscribe(this);
        }
    }

    public l1(io.reactivex.p<T> pVar) {
        this.f51937a = pVar;
    }

    @Override // yh.a
    public io.reactivex.k<T> b() {
        return ci.a.o(new k1(this.f51937a));
    }

    @Override // io.reactivex.a
    public void c(io.reactivex.b bVar) {
        this.f51937a.subscribe(new a(bVar));
    }
}
