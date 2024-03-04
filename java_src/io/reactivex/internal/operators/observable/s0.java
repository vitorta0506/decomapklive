package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
/* loaded from: classes7.dex */
public final class s0 extends io.reactivex.k<Object> implements yh.e<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.k<Object> f52305a = new s0();

    private s0() {
    }

    @Override // yh.e, java.util.concurrent.Callable
    public Object call() {
        return null;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super Object> rVar) {
        EmptyDisposable.complete(rVar);
    }
}
