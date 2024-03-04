package io.reactivex.internal.operators.observable;
/* loaded from: classes7.dex */
public final class g1<T> extends io.reactivex.k<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f51678a;

    public g1(io.reactivex.p<T> pVar) {
        this.f51678a = pVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51678a.subscribe(rVar);
    }
}
