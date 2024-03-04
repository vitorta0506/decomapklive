package io.reactivex.internal.operators.observable;
/* loaded from: classes7.dex */
public final class b3<T> extends a<T, T> {
    public b3(io.reactivex.k<T> kVar) {
        super(kVar);
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new io.reactivex.observers.d(rVar));
    }
}
