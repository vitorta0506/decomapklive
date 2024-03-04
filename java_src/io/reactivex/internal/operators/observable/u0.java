package io.reactivex.internal.operators.observable;
/* loaded from: classes7.dex */
public final class u0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.q<? super T> f52389b;

    /* loaded from: classes7.dex */
    static final class a<T> extends io.reactivex.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final vh.q<? super T> f52390f;

        a(io.reactivex.r<? super T> rVar, vh.q<? super T> qVar) {
            super(rVar);
            this.f52390f = qVar;
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51316e == 0) {
                try {
                    if (this.f52390f.test(t10)) {
                        this.f51312a.onNext(t10);
                        return;
                    }
                    return;
                } catch (Throwable th2) {
                    c(th2);
                    return;
                }
            }
            this.f51312a.onNext(null);
        }

        @Override // yh.g
        public T poll() throws Exception {
            T poll;
            do {
                poll = this.f51314c.poll();
                if (poll == null) {
                    break;
                }
            } while (!this.f52390f.test(poll));
            return poll;
        }

        @Override // yh.c
        public int requestFusion(int i9) {
            return d(i9);
        }
    }

    public u0(io.reactivex.p<T> pVar, vh.q<? super T> qVar) {
        super(pVar);
        this.f52389b = qVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52389b));
    }
}
