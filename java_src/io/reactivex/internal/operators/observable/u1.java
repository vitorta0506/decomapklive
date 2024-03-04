package io.reactivex.internal.operators.observable;
/* loaded from: classes7.dex */
public final class u1<T, U> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, ? extends U> f52391b;

    /* loaded from: classes7.dex */
    static final class a<T, U> extends io.reactivex.internal.observers.a<T, U> {

        /* renamed from: f  reason: collision with root package name */
        final vh.o<? super T, ? extends U> f52392f;

        a(io.reactivex.r<? super U> rVar, vh.o<? super T, ? extends U> oVar) {
            super(rVar);
            this.f52392f = oVar;
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51315d) {
                return;
            }
            if (this.f51316e != 0) {
                this.f51312a.onNext(null);
                return;
            }
            try {
                this.f51312a.onNext(xh.b.e(this.f52392f.apply(t10), "The mapper function returned a null value."));
            } catch (Throwable th2) {
                c(th2);
            }
        }

        @Override // yh.g
        public U poll() throws Exception {
            T poll = this.f51314c.poll();
            if (poll != null) {
                return (U) xh.b.e(this.f52392f.apply(poll), "The mapper function returned a null value.");
            }
            return null;
        }

        @Override // yh.c
        public int requestFusion(int i9) {
            return d(i9);
        }
    }

    public u1(io.reactivex.p<T> pVar, vh.o<? super T, ? extends U> oVar) {
        super(pVar);
        this.f52391b = oVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super U> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52391b));
    }
}
