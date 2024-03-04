package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;
/* loaded from: classes7.dex */
public final class k3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.p<? extends T> f51898b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51899a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.p<? extends T> f51900b;

        /* renamed from: d  reason: collision with root package name */
        boolean f51902d = true;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f51901c = new SequentialDisposable();

        a(io.reactivex.r<? super T> rVar, io.reactivex.p<? extends T> pVar) {
            this.f51899a = rVar;
            this.f51900b = pVar;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51902d) {
                this.f51902d = false;
                this.f51900b.subscribe(this);
                return;
            }
            this.f51899a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51899a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51902d) {
                this.f51902d = false;
            }
            this.f51899a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            this.f51901c.update(bVar);
        }
    }

    public k3(io.reactivex.p<T> pVar, io.reactivex.p<? extends T> pVar2) {
        super(pVar);
        this.f51898b = pVar2;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        a aVar = new a(rVar, this.f51898b);
        rVar.onSubscribe(aVar.f51901c);
        this.f51403a.subscribe(aVar);
    }
}
