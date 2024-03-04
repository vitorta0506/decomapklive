package io.reactivex.internal.operators.observable;
/* loaded from: classes7.dex */
public final class k0<T, K> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, K> f51883b;

    /* renamed from: c  reason: collision with root package name */
    final vh.d<? super K, ? super K> f51884c;

    /* loaded from: classes7.dex */
    static final class a<T, K> extends io.reactivex.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final vh.o<? super T, K> f51885f;

        /* renamed from: g  reason: collision with root package name */
        final vh.d<? super K, ? super K> f51886g;

        /* renamed from: h  reason: collision with root package name */
        K f51887h;

        /* renamed from: i  reason: collision with root package name */
        boolean f51888i;

        a(io.reactivex.r<? super T> rVar, vh.o<? super T, K> oVar, vh.d<? super K, ? super K> dVar) {
            super(rVar);
            this.f51885f = oVar;
            this.f51886g = dVar;
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51315d) {
                return;
            }
            if (this.f51316e != 0) {
                this.f51312a.onNext(t10);
                return;
            }
            try {
                K apply = this.f51885f.apply(t10);
                if (this.f51888i) {
                    boolean test = this.f51886g.test((K) this.f51887h, apply);
                    this.f51887h = apply;
                    if (test) {
                        return;
                    }
                } else {
                    this.f51888i = true;
                    this.f51887h = apply;
                }
                this.f51312a.onNext(t10);
            } catch (Throwable th2) {
                c(th2);
            }
        }

        @Override // yh.g
        public T poll() throws Exception {
            while (true) {
                T poll = this.f51314c.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f51885f.apply(poll);
                if (!this.f51888i) {
                    this.f51888i = true;
                    this.f51887h = apply;
                    return poll;
                } else if (!this.f51886g.test((K) this.f51887h, apply)) {
                    this.f51887h = apply;
                    return poll;
                } else {
                    this.f51887h = apply;
                }
            }
        }

        @Override // yh.c
        public int requestFusion(int i9) {
            return d(i9);
        }
    }

    public k0(io.reactivex.p<T> pVar, vh.o<? super T, K> oVar, vh.d<? super K, ? super K> dVar) {
        super(pVar);
        this.f51883b = oVar;
        this.f51884c = dVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f51883b, this.f51884c));
    }
}
