package io.reactivex.internal.operators.observable;

import io.reactivex.internal.operators.observable.ObservableScalarXMap;
/* loaded from: classes7.dex */
public final class q1<T> extends io.reactivex.k<T> implements yh.e<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f52219a;

    public q1(T t10) {
        this.f52219a = t10;
    }

    @Override // yh.e, java.util.concurrent.Callable
    public T call() {
        return this.f52219a;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        ObservableScalarXMap.ScalarDisposable scalarDisposable = new ObservableScalarXMap.ScalarDisposable(rVar, this.f52219a);
        rVar.onSubscribe(scalarDisposable);
        scalarDisposable.run();
    }
}
