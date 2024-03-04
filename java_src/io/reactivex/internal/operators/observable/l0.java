package io.reactivex.internal.operators.observable;
/* loaded from: classes7.dex */
public final class l0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.g<? super T> f51935b;

    /* loaded from: classes7.dex */
    static final class a<T> extends io.reactivex.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final vh.g<? super T> f51936f;

        a(io.reactivex.r<? super T> rVar, vh.g<? super T> gVar) {
            super(rVar);
            this.f51936f = gVar;
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51312a.onNext(t10);
            if (this.f51316e == 0) {
                try {
                    this.f51936f.accept(t10);
                } catch (Throwable th2) {
                    c(th2);
                }
            }
        }

        @Override // yh.g
        public T poll() throws Exception {
            T poll = this.f51314c.poll();
            if (poll != null) {
                this.f51936f.accept(poll);
            }
            return poll;
        }

        @Override // yh.c
        public int requestFusion(int i9) {
            return d(i9);
        }
    }

    public l0(io.reactivex.p<T> pVar, vh.g<? super T> gVar) {
        super(pVar);
        this.f51935b = gVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f51935b));
    }
}
