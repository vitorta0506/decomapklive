package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
/* loaded from: classes7.dex */
public final class a2 extends io.reactivex.k<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.k<Object> f51412a = new a2();

    private a2() {
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super Object> rVar) {
        rVar.onSubscribe(EmptyDisposable.NEVER);
    }
}
